package org.eclipse.jdt.internal.core;

import android.icu.text.DateFormat;
import android.provider.MediaStore;
import java.io.File;
import java.io.PrintStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.resources.IBuildConfiguration;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.PerformanceStats;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.jdt.core.ElementChangedEvent;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IElementChangedListener;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.SourceElementParser;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.builder.JavaBuilder;
import org.eclipse.jdt.internal.core.hierarchy.TypeHierarchy;
import org.eclipse.jdt.internal.core.search.AbstractSearchScope;
import org.eclipse.jdt.internal.core.search.JavaWorkspaceScope;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;
import org.eclipse.jdt.internal.core.util.Util;

public class DeltaProcessor {
    private static final int BINARY = 2;
    public static boolean DEBUG = false;
    public static final int DEFAULT_CHANGE_EVENT = 0;
    private static final String EXTERNAL_JAR_ADDED = "external jar added";
    private static final String EXTERNAL_JAR_CHANGED = "external jar changed";
    private static final String EXTERNAL_JAR_REMOVED = "external jar removed";
    private static final String EXTERNAL_JAR_UNCHANGED = "external jar unchanged";
    private static final int IGNORE = 0;
    private static final String INTERNAL_JAR_IGNORE = "internal jar ignore";
    private static final int NON_JAVA_RESOURCE = -1;
    public static boolean PERF = false;
    private static final int SOURCE = 1;
    public static boolean VERBOSE = false;
    private JavaElementDelta currentDelta;
    private Openable currentElement;
    JavaModelManager manager;
    public Map<IJavaProject, IPackageFragmentRoot[]> oldRoots;
    private SourceElementParser sourceElementParserCache;
    private DeltaProcessingState state;
    public List<IJavaElementDelta> javaModelDeltas = new ArrayList();
    public Map<ICompilationUnit, IJavaElementDelta> reconcileDeltas = new HashMap();
    private boolean isFiring = true;
    private final ModelUpdater modelUpdater = new ModelUpdater();
    public Set<IJavaElement> projectCachesToReset = new HashSet();
    public int overridenEventType = -1;

    public static class OutputsInfo {
        int outputCount;
        IPath[] paths;
        int[] traverseModes;

        public OutputsInfo(IPath[] iPathArr, int[] iArr, int i10) {
            this.paths = iPathArr;
            this.traverseModes = iArr;
            this.outputCount = i10;
        }

        public String toString() {
            if (this.paths == null) {
                return "<none>";
            }
            StringBuffer stringBuffer = new StringBuffer();
            int i10 = 0;
            while (i10 < this.outputCount) {
                stringBuffer.append("path=");
                stringBuffer.append(this.paths[i10].toString());
                stringBuffer.append("\n->traverse=");
                int i11 = this.traverseModes[i10];
                if (i11 == 0) {
                    stringBuffer.append("IGNORE");
                } else if (i11 == 1) {
                    stringBuffer.append("SOURCE");
                } else if (i11 != 2) {
                    stringBuffer.append(MediaStore.UNKNOWN_STRING);
                } else {
                    stringBuffer.append("BINARY");
                }
                i10++;
                if (i10 < this.outputCount) {
                    stringBuffer.append('\n');
                }
            }
            return stringBuffer.toString();
        }
    }

    public DeltaProcessor(DeltaProcessingState deltaProcessingState, JavaModelManager javaModelManager) {
        this.state = deltaProcessingState;
        this.manager = javaModelManager;
    }

    private void addDependentProjects(IJavaProject iJavaProject, Map<IJavaProject, IJavaProject[]> map, Set<IJavaElement> set) {
        IJavaProject[] iJavaProjectArr = map.get(iJavaProject);
        if (iJavaProjectArr == null) {
            return;
        }
        for (IJavaProject iJavaProject2 : iJavaProjectArr) {
            if (!set.contains(iJavaProject2)) {
                set.add(iJavaProject2);
                addDependentProjects(iJavaProject2, map, set);
            }
        }
    }

    private void addPackageFragmentRoot(OpenableElementInfo openableElementInfo, IPackageFragmentRoot iPackageFragmentRoot) throws JavaModelException {
        IJavaElement[] children = openableElementInfo.getChildren();
        if (children.length > 0) {
            IClasspathEntry[] resolvedClasspath = ((JavaProject) iPackageFragmentRoot.getJavaProject()).getResolvedClasspath();
            IPath path = iPackageFragmentRoot.getResolvedClasspathEntry().getPath();
            int i10 = -1;
            int i11 = -1;
            int i12 = 0;
            int i13 = 0;
            while (true) {
                if (i12 >= children.length || i13 >= resolvedClasspath.length) {
                    break;
                }
                IClasspathEntry iClasspathEntry = resolvedClasspath[i13];
                if (i11 != i13 && path.equals(iClasspathEntry.getPath())) {
                    i10 = i12;
                    break;
                } else if (((IPackageFragmentRoot) children[i12]).getResolvedClasspathEntry().getPath().equals(iClasspathEntry.getPath())) {
                    i12++;
                    i11 = i13;
                } else {
                    i11 = i13;
                    i13++;
                }
            }
            while (i12 < children.length) {
                if (children[i12].equals(iPackageFragmentRoot)) {
                    return;
                }
                if (!((IPackageFragmentRoot) children[i12]).getResolvedClasspathEntry().getPath().equals(path)) {
                    break;
                } else {
                    i12++;
                }
            }
            if (i10 >= 0) {
                IPackageFragmentRoot[] iPackageFragmentRootArr = new IPackageFragmentRoot[children.length + 1];
                if (i10 > 0) {
                    System.arraycopy(children, 0, iPackageFragmentRootArr, 0, i10);
                }
                iPackageFragmentRootArr[i10] = iPackageFragmentRoot;
                System.arraycopy(children, i10, iPackageFragmentRootArr, i10 + 1, (r1 - i10) - 1);
                openableElementInfo.setChildren(iPackageFragmentRootArr);
                return;
            }
        }
        openableElementInfo.addChild(iPackageFragmentRoot);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void addToParentInfo(Openable openable) {
        Openable openable2 = (Openable) openable.getParent();
        if (openable2 == null || !openable2.isOpen()) {
            return;
        }
        try {
            OpenableElementInfo openableElementInfo = (OpenableElementInfo) openable2.getElementInfo();
            if (openable instanceof IPackageFragmentRoot) {
                addPackageFragmentRoot(openableElementInfo, (IPackageFragmentRoot) openable);
            } else {
                openableElementInfo.addChild(openable);
            }
        } catch (JavaModelException unused) {
        }
    }

    private void checkExternalFolderChange(IProject iProject, JavaProject javaProject) {
        ClasspathChange classpathChange = this.state.getClasspathChange(iProject);
        this.state.addExternalFolderChange(javaProject, classpathChange == null ? null : classpathChange.oldResolvedClasspath);
    }

    private void checkProjectReferenceChange(IProject iProject, JavaProject javaProject) {
        iProject.clearCachedDynamicReferences();
        this.state.addProjectReferenceChange(javaProject);
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x0174, code lost:
    
        if ((r11 & 4096) == 0) goto L79;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void checkProjectsAndClasspathChanges(IResourceDelta iResourceDelta) {
        IResource resource = iResourceDelta.getResource();
        int type = resource.getType();
        IResourceDelta[] iResourceDeltaArr = null;
        if (type == 1) {
            IFile iFile = (IFile) resource;
            int kind = iResourceDelta.getKind();
            if (iFile.getName().equals(".classpath")) {
                this.manager.forceBatchInitializations(false);
                if (kind != 1 && kind != 2) {
                    if (kind == 4) {
                        int flags = iResourceDelta.getFlags();
                        if ((flags & 256) == 0) {
                            if ((1048576 & flags) == 0) {
                            }
                        }
                    }
                    this.state.rootsAreStale = true;
                }
                readRawClasspath((JavaProject) JavaCore.create(iFile.getProject()));
                this.state.rootsAreStale = true;
            } else {
                RootInfo rootInfo = rootInfo(iFile.getFullPath(), kind);
                if (rootInfo != null && rootInfo.entryKind == 1) {
                    ((JavaProject) JavaCore.create(iFile.getProject())).resetResolvedClasspath();
                    this.state.rootsAreStale = true;
                } else if (iFile.getName().toLowerCase().contains(new String(TypeConstants.MODULE_INFO_FILE_NAME))) {
                    if (kind == 1 || kind == 2) {
                        try {
                            ((JavaProject) JavaCore.create(iFile.getProject())).close();
                        } catch (JavaModelException unused) {
                        }
                    } else if (kind == 4 && (iResourceDelta.getFlags() & 256) != 0) {
                        this.manager.removePerProjectInfo((JavaProject) JavaCore.create(iFile.getProject()), false);
                        this.state.rootsAreStale = true;
                    }
                }
            }
        } else if (type == 2) {
            int kind2 = iResourceDelta.getKind();
            if (kind2 == 1 || kind2 == 2) {
                try {
                    IPackageFragmentRoot findContainingPackageFragmentRoot = findContainingPackageFragmentRoot(resource);
                    if (findContainingPackageFragmentRoot != null && findContainingPackageFragmentRoot.isOpen()) {
                        findContainingPackageFragmentRoot.close();
                    }
                } catch (JavaModelException e10) {
                    Util.log((Throwable) e10);
                }
            } else if (kind2 == 4) {
                iResourceDeltaArr = iResourceDelta.getAffectedChildren();
            }
        } else if (type == 4) {
            IProject iProject = (IProject) resource;
            JavaProject javaProject = (JavaProject) JavaCore.create(iProject);
            int kind3 = iResourceDelta.getKind();
            if (kind3 == 1) {
                this.manager.forceBatchInitializations(false);
                this.projectCachesToReset.add(javaProject);
                if (JavaProject.hasJavaNature(iProject)) {
                    addToParentInfo(javaProject);
                    readRawClasspath(javaProject);
                    checkProjectReferenceChange(iProject, javaProject);
                    checkExternalFolderChange(iProject, javaProject);
                }
                this.state.rootsAreStale = true;
            } else if (kind3 == 2) {
                this.manager.forceBatchInitializations(false);
                this.manager.removePerProjectInfo(javaProject, true);
                this.manager.containerRemove(javaProject);
                JavaModelManager.getModulePathManager().removeEntry(javaProject);
                this.state.rootsAreStale = true;
            } else if (kind3 == 4) {
                if ((iResourceDelta.getFlags() & 16384) != 0) {
                    this.manager.forceBatchInitializations(false);
                    this.projectCachesToReset.add(javaProject);
                    if (!iProject.isOpen()) {
                        try {
                            javaProject.close();
                        } catch (JavaModelException unused2) {
                        }
                        removeFromParentInfo(javaProject);
                        this.manager.removePerProjectInfo(javaProject, false);
                        this.manager.containerRemove(javaProject);
                    } else if (JavaProject.hasJavaNature(iProject)) {
                        addToParentInfo(javaProject);
                        readRawClasspath(javaProject);
                        checkProjectReferenceChange(iProject, javaProject);
                        checkExternalFolderChange(iProject, javaProject);
                    }
                    this.state.rootsAreStale = true;
                } else if ((iResourceDelta.getFlags() & 524288) != 0) {
                    boolean z10 = this.state.findJavaProject(iProject.getName()) != null;
                    boolean hasJavaNature = JavaProject.hasJavaNature(iProject);
                    if (z10 != hasJavaNature) {
                        this.manager.forceBatchInitializations(false);
                        this.projectCachesToReset.add(javaProject);
                        if (hasJavaNature) {
                            addToParentInfo(javaProject);
                            readRawClasspath(javaProject);
                            checkProjectReferenceChange(iProject, javaProject);
                            checkExternalFolderChange(iProject, javaProject);
                        } else {
                            this.manager.removePerProjectInfo(javaProject, true);
                            this.manager.containerRemove(javaProject);
                            try {
                                javaProject.close();
                            } catch (JavaModelException unused3) {
                            }
                            removeFromParentInfo(javaProject);
                        }
                        this.state.rootsAreStale = true;
                    } else if (hasJavaNature) {
                        addToParentInfo(javaProject);
                        iResourceDeltaArr = iResourceDelta.getAffectedChildren();
                    }
                } else if (JavaProject.hasJavaNature(iProject)) {
                    addToParentInfo(javaProject);
                    iResourceDeltaArr = iResourceDelta.getAffectedChildren();
                }
            }
        } else if (type == 8) {
            this.state.getOldJavaProjecNames();
            iResourceDeltaArr = iResourceDelta.getAffectedChildren();
        }
        if (iResourceDeltaArr != null) {
            for (IResourceDelta iResourceDelta2 : iResourceDeltaArr) {
                checkProjectsAndClasspathChanges(iResourceDelta2);
            }
        }
    }

    private void checkSourceAttachmentChange(IResourceDelta iResourceDelta, IResource iResource) {
        RootInfo rootInfo;
        IPackageFragmentRoot iPackageFragmentRoot;
        IPath iPath = this.state.sourceAttachments.get(externalPath(iResource));
        if (iPath == null || (rootInfo = rootInfo(iPath, iResourceDelta.getKind())) == null) {
            return;
        }
        try {
            iPackageFragmentRoot = rootInfo.project.findPackageFragmentRoot(iPath);
            if (iPackageFragmentRoot != null) {
                try {
                    iPackageFragmentRoot.close();
                } catch (JavaModelException unused) {
                }
            }
        } catch (JavaModelException unused2) {
            iPackageFragmentRoot = null;
        }
        if (iPackageFragmentRoot == null) {
            return;
        }
        int kind = iResourceDelta.getKind();
        if (kind == 1) {
            currentDelta().sourceAttached(iPackageFragmentRoot);
            return;
        }
        if (kind == 2) {
            currentDelta().sourceDetached(iPackageFragmentRoot);
        } else {
            if (kind != 4) {
                return;
            }
            currentDelta().sourceDetached(iPackageFragmentRoot);
            currentDelta().sourceAttached(iPackageFragmentRoot);
        }
    }

    private void close(Openable openable) {
        try {
            openable.close();
        } catch (JavaModelException unused) {
        }
    }

    private void contentChanged(Openable openable) {
        boolean z10;
        int i10 = 1;
        boolean z11 = false;
        if (openable.getElementType() == 5) {
            CompilationUnit compilationUnit = (CompilationUnit) openable;
            z10 = compilationUnit.isPrimary();
            if (z10 && compilationUnit.isWorkingCopy()) {
                z11 = true;
            }
        } else {
            z10 = false;
        }
        if (z11) {
            currentDelta().changed(openable, 262144);
            return;
        }
        close(openable);
        if (openable instanceof JarPackageFragmentRoot) {
            this.projectCachesToReset.add(openable.getJavaProject());
            i10 = 32769;
        }
        if (z10) {
            i10 |= 262144;
        }
        currentDelta().changed(openable, i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x016c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x016d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Openable createElement(IResource iResource, int i10, RootInfo rootInfo) {
        IAdaptable create;
        IPackageFragment packageFragment;
        if (iResource == null) {
            return null;
        }
        IPath fullPath = iResource.getFullPath();
        if (i10 != 2) {
            if (i10 == 3) {
                create = rootInfo == null ? JavaCore.create(iResource) : rootInfo.getPackageFragmentRoot(iResource);
            } else if (i10 != 4) {
                if (i10 == 5 || i10 == 6) {
                    popUntilPrefixOf(fullPath);
                    Openable openable = this.currentElement;
                    if (openable == null) {
                        create = rootInfo == null ? JavaCore.create(iResource) : JavaModelManager.create(iResource, rootInfo.project);
                    } else {
                        int elementType = openable.getElementType();
                        if (elementType == 3) {
                            PackageFragmentRoot packageFragmentRoot = (PackageFragmentRoot) this.currentElement;
                            packageFragment = packageFragmentRoot.getPackageFragment(fullPath.removeLastSegments(1).removeFirstSegments(packageFragmentRoot.getPath().segmentCount()).segments());
                        } else if (elementType != 4) {
                            if (elementType == 5 || elementType == 6) {
                                packageFragment = (IPackageFragment) this.currentElement.getParent();
                            }
                            packageFragment = null;
                        } else {
                            IJavaElement iJavaElement = this.currentElement;
                            if (iJavaElement.getPath().equals(fullPath.removeLastSegments(1))) {
                                packageFragment = (IPackageFragment) iJavaElement;
                            }
                            packageFragment = null;
                        }
                        if (packageFragment == null) {
                            create = rootInfo == null ? JavaCore.create(iResource) : JavaModelManager.create(iResource, rootInfo.project);
                        } else if (i10 == 5) {
                            create = packageFragment.getCompilationUnit(fullPath.lastSegment());
                        } else {
                            String lastSegment = fullPath.lastSegment();
                            create = "module-info.class".equals(lastSegment) ? packageFragment.getModularClassFile() : packageFragment.getClassFile(lastSegment);
                        }
                    }
                }
                create = null;
            } else if (rootInfo != null) {
                if (rootInfo.project.contains(iResource)) {
                    PackageFragmentRoot packageFragmentRoot2 = (PackageFragmentRoot) rootInfo.getPackageFragmentRoot(null);
                    create = packageFragmentRoot2.getPackageFragment(fullPath.removeFirstSegments(packageFragmentRoot2.resource().getFullPath().segmentCount()).segments());
                }
                create = null;
            } else {
                popUntilPrefixOf(fullPath);
                Openable openable2 = this.currentElement;
                if (openable2 == null) {
                    create = JavaCore.create(iResource);
                } else {
                    PackageFragmentRoot packageFragmentRoot3 = openable2.getPackageFragmentRoot();
                    if (packageFragmentRoot3 == null) {
                        create = JavaCore.create(iResource);
                    } else {
                        if (((JavaProject) packageFragmentRoot3.getJavaProject()).contains(iResource)) {
                            create = packageFragmentRoot3.getPackageFragment(fullPath.removeFirstSegments(packageFragmentRoot3.getPath().segmentCount()).segments());
                        }
                        create = null;
                    }
                }
            }
            if (create == null) {
                return null;
            }
            Openable openable3 = (Openable) create;
            this.currentElement = openable3;
            return openable3;
        }
        if (iResource instanceof IProject) {
            popUntilPrefixOf(fullPath);
            Openable openable4 = this.currentElement;
            if (openable4 != null && openable4.getElementType() == 2 && ((IJavaProject) this.currentElement).getProject().equals(iResource)) {
                return this.currentElement;
            }
            if (rootInfo == null || !rootInfo.project.getProject().equals(iResource)) {
                IProject iProject = (IProject) iResource;
                create = JavaProject.hasJavaNature(iProject) ? JavaCore.create(iProject) : this.state.findJavaProject(iProject.getName());
            } else {
                create = rootInfo.project;
            }
            if (create == null) {
            }
        }
        create = null;
        if (create == null) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0017 A[EDGE_INSN: B:66:0x0017->B:67:0x0017 BREAK  A[LOOP:0: B:2:0x0010->B:37:0x0010], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean createExternalArchiveDelta(Set<IJavaElement> set, IProgressMonitor iProgressMonitor) {
        int i10;
        boolean z10;
        Iterator<String> it;
        IWorkspaceRoot iWorkspaceRoot;
        String str;
        HashMap hashMap = new HashMap();
        HashSet hashSet = new HashSet();
        Iterator<IJavaElement> it2 = set.iterator();
        while (true) {
            i10 = 1;
            if (it2.hasNext()) {
                break;
            }
            IJavaElement next = it2.next();
            int elementType = next.getElementType();
            if (elementType == 1) {
                Iterator<String> it3 = this.state.getOldJavaProjecNames().iterator();
                while (it3.hasNext()) {
                    IProject project = ResourcesPlugin.getWorkspace().getRoot().getProject(it3.next());
                    if (JavaProject.hasJavaNature(project)) {
                        try {
                            IClasspathEntry[] resolvedClasspath = ((JavaProject) JavaCore.create(project)).getResolvedClasspath();
                            int length = resolvedClasspath.length;
                            for (int i11 = 0; i11 < length; i11++) {
                                if (resolvedClasspath[i11].getEntryKind() == 1) {
                                    try {
                                        hashSet.add(resolvedClasspath[i11].getPath());
                                    } catch (JavaModelException unused) {
                                    }
                                }
                            }
                        } catch (JavaModelException unused2) {
                        }
                    }
                }
            } else if (elementType == 2) {
                JavaProject javaProject = (JavaProject) next;
                if (JavaProject.hasJavaNature(javaProject.getProject())) {
                    try {
                        IClasspathEntry[] resolvedClasspath2 = javaProject.getResolvedClasspath();
                        int length2 = resolvedClasspath2.length;
                        for (int i12 = 0; i12 < length2; i12++) {
                            if (resolvedClasspath2[i12].getEntryKind() == 1) {
                                hashSet.add(resolvedClasspath2[i12].getPath());
                            }
                        }
                    } catch (JavaModelException unused3) {
                    }
                }
                i10 = 1;
                if (it2.hasNext()) {
                }
            } else if (elementType == 3) {
                hashSet.add(next.getPath());
            }
        }
        Iterator<String> it4 = this.state.getOldJavaProjecNames().iterator();
        IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
        boolean z11 = false;
        while (it4.hasNext() && (iProgressMonitor == null || !iProgressMonitor.isCanceled())) {
            IProject project2 = root.getProject(it4.next());
            if (JavaProject.hasJavaNature(project2)) {
                JavaProject javaProject2 = (JavaProject) JavaCore.create(project2);
                try {
                    IClasspathEntry[] resolvedClasspath3 = javaProject2.getResolvedClasspath();
                    int i13 = 0;
                    boolean z12 = false;
                    while (i13 < resolvedClasspath3.length) {
                        if (resolvedClasspath3[i13].getEntryKind() == i10) {
                            IPath path = resolvedClasspath3[i13].getPath();
                            if (hashSet.contains(path)) {
                                if (((String) hashMap.get(path)) == null) {
                                    this.manager.clearExternalFileState(path);
                                    z10 = z11;
                                    Object target = JavaModel.getTarget(path, true);
                                    if (target != null) {
                                        if (target instanceof File) {
                                            Long l10 = this.state.getExternalLibTimeStamps().get(path);
                                            long timeStamp = getTimeStamp((File) target);
                                            if (l10 == null) {
                                                it = it4;
                                                iWorkspaceRoot = root;
                                                if (timeStamp == 0) {
                                                    hashMap.put(path, EXTERNAL_JAR_UNCHANGED);
                                                } else {
                                                    hashMap.put(path, EXTERNAL_JAR_ADDED);
                                                    this.state.getExternalLibTimeStamps().put(path, Long.valueOf(timeStamp));
                                                    this.manager.indexManager.removeIndex(path);
                                                    this.manager.indexManager.indexLibrary(path, project2.getProject(), ((ClasspathEntry) resolvedClasspath3[i13]).getLibraryIndexLocation());
                                                }
                                            } else if (timeStamp == 0) {
                                                hashMap.put(path, EXTERNAL_JAR_REMOVED);
                                                this.state.getExternalLibTimeStamps().remove(path);
                                                this.manager.indexManager.removeIndex(path);
                                            } else if (l10.longValue() != timeStamp) {
                                                hashMap.put(path, EXTERNAL_JAR_CHANGED);
                                                this.state.getExternalLibTimeStamps().put(path, Long.valueOf(timeStamp));
                                                this.manager.indexManager.removeIndex(path);
                                                it = it4;
                                                iWorkspaceRoot = root;
                                                this.manager.indexManager.indexLibrary(path, project2.getProject(), ((ClasspathEntry) resolvedClasspath3[i13]).getLibraryIndexLocation(), true);
                                            } else {
                                                it = it4;
                                                iWorkspaceRoot = root;
                                                URL libraryIndexLocation = ((ClasspathEntry) resolvedClasspath3[i13]).getLibraryIndexLocation();
                                                if (libraryIndexLocation != null) {
                                                    this.manager.indexManager.indexLibrary(path, project2.getProject(), libraryIndexLocation);
                                                }
                                                hashMap.put(path, EXTERNAL_JAR_UNCHANGED);
                                            }
                                        } else {
                                            it = it4;
                                            iWorkspaceRoot = root;
                                            hashMap.put(path, INTERNAL_JAR_IGNORE);
                                        }
                                        str = (String) hashMap.get(path);
                                        if (str != null) {
                                            if (str == EXTERNAL_JAR_ADDED) {
                                                PackageFragmentRoot packageFragmentRoot = (PackageFragmentRoot) javaProject2.getPackageFragmentRoot(path.toString());
                                                if (VERBOSE) {
                                                    System.out.println("- External JAR ADDED, affecting root: " + packageFragmentRoot.getElementName());
                                                }
                                                elementAdded(packageFragmentRoot, null, null);
                                                this.state.addClasspathValidation(javaProject2);
                                            } else if (str == EXTERNAL_JAR_CHANGED) {
                                                PackageFragmentRoot packageFragmentRoot2 = (PackageFragmentRoot) javaProject2.getPackageFragmentRoot(path.toString());
                                                if (VERBOSE) {
                                                    System.out.println("- External JAR CHANGED, affecting root: " + packageFragmentRoot2.getElementName());
                                                }
                                                contentChanged(packageFragmentRoot2);
                                            } else if (str == EXTERNAL_JAR_REMOVED) {
                                                PackageFragmentRoot packageFragmentRoot3 = (PackageFragmentRoot) javaProject2.getPackageFragmentRoot(path.toString());
                                                if (VERBOSE) {
                                                    System.out.println("- External JAR REMOVED, affecting root: " + packageFragmentRoot3.getElementName());
                                                }
                                                elementRemoved(packageFragmentRoot3, null, null);
                                                this.state.addClasspathValidation(javaProject2);
                                            }
                                            z11 = true;
                                            z12 = true;
                                            i13++;
                                            it4 = it;
                                            root = iWorkspaceRoot;
                                            i10 = 1;
                                        }
                                        z11 = z10;
                                        i13++;
                                        it4 = it;
                                        root = iWorkspaceRoot;
                                        i10 = 1;
                                    } else if (this.state.getExternalLibTimeStamps().remove(path) != null && this.state.roots.get(path) != null) {
                                        hashMap.put(path, EXTERNAL_JAR_REMOVED);
                                        this.manager.indexManager.removeIndex(path);
                                    }
                                } else {
                                    z10 = z11;
                                }
                                it = it4;
                                iWorkspaceRoot = root;
                                str = (String) hashMap.get(path);
                                if (str != null) {
                                }
                                z11 = z10;
                                i13++;
                                it4 = it;
                                root = iWorkspaceRoot;
                                i10 = 1;
                            }
                        }
                        z10 = z11;
                        it = it4;
                        iWorkspaceRoot = root;
                        z11 = z10;
                        i13++;
                        it4 = it;
                        root = iWorkspaceRoot;
                        i10 = 1;
                    }
                    if (z12) {
                        javaProject2.resetResolvedClasspath();
                    }
                } catch (JavaModelException unused4) {
                }
            }
            it4 = it4;
            root = root;
            i10 = 1;
        }
        if (z11) {
            JavaModelManager.getJavaModelManager().resetJarTypeCache();
        }
        return z11;
    }

    private JavaElementDelta currentDelta() {
        if (this.currentDelta == null) {
            this.currentDelta = new JavaElementDelta(this.manager.getJavaModel());
        }
        return this.currentDelta;
    }

    private void deleting(IProject iProject) {
        try {
            this.manager.indexManager.discardJobs(iProject.getName());
            JavaProject javaProject = (JavaProject) JavaCore.create(iProject);
            if (this.oldRoots == null) {
                this.oldRoots = new HashMap();
            }
            if (javaProject.isOpen()) {
                this.oldRoots.put(javaProject, javaProject.getPackageFragmentRoots());
            } else {
                this.oldRoots.put(javaProject, javaProject.computePackageFragmentRoots(javaProject.getResolvedClasspath(), false, true, null));
            }
            javaProject.close();
            this.state.getOldJavaProjecNames();
            removeFromParentInfo(javaProject);
            this.manager.resetProjectPreferences(javaProject);
        } catch (JavaModelException unused) {
        }
    }

    private void elementAdded(Openable openable, IResourceDelta iResourceDelta, RootInfo rootInfo) {
        int elementType = openable.getElementType();
        if (elementType == 2) {
            if (iResourceDelta != null) {
                IProject resource = iResourceDelta.getResource();
                if (JavaProject.hasJavaNature(resource)) {
                    addToParentInfo(openable);
                    this.manager.getPerProjectInfo(resource, true).rememberExternalLibTimestamps();
                    if ((iResourceDelta.getFlags() & 4096) != 0) {
                        currentDelta().movedTo(openable, (Openable) openable.getJavaModel().getJavaProject(iResourceDelta.getMovedFromPath().lastSegment()));
                    } else {
                        close(openable);
                        currentDelta().added(openable);
                    }
                    this.state.updateRoots(openable.getPath(), iResourceDelta, this);
                    this.projectCachesToReset.add(openable);
                    return;
                }
                return;
            }
            return;
        }
        if (iResourceDelta != null && (iResourceDelta.getFlags() & 4096) != 0) {
            addToParentInfo(openable);
            close(openable);
            IPath movedFromPath = iResourceDelta.getMovedFromPath();
            IResource resource2 = iResourceDelta.getResource();
            IFile file = resource2 instanceof IFile ? resource2.getWorkspace().getRoot().getFile(movedFromPath) : resource2.getWorkspace().getRoot().getFolder(movedFromPath);
            RootInfo enclosingRootInfo = enclosingRootInfo(externalPath(file), 2);
            int elementType2 = elementType(file, 2, openable.getParent().getElementType(), enclosingRootInfo);
            this.currentElement = null;
            Openable createElement = (elementType == 2 || elementType2 != 2) ? createElement(file, elementType2, enclosingRootInfo) : null;
            if (createElement == null) {
                currentDelta().added(openable);
            } else {
                currentDelta().movedTo(openable, createElement);
            }
        } else if (isPrimaryWorkingCopy(openable, elementType)) {
            currentDelta().changed(openable, 262144);
        } else {
            addToParentInfo(openable);
            close(openable);
            currentDelta().added(openable);
        }
        if (elementType == 3) {
            this.projectCachesToReset.add((JavaProject) openable.getJavaProject());
        } else {
            if (elementType != 4) {
                return;
            }
            this.projectCachesToReset.add((JavaProject) openable.getJavaProject());
        }
    }

    private void elementRemoved(Openable openable, IResourceDelta iResourceDelta, RootInfo rootInfo) {
        IProject file;
        int elementType = openable.getElementType();
        if (iResourceDelta != null && (iResourceDelta.getFlags() & 8192) != 0) {
            close(openable);
            removeFromParentInfo(openable);
            IPath movedToPath = iResourceDelta.getMovedToPath();
            IResource resource = iResourceDelta.getResource();
            int type = resource.getType();
            if (type == 1) {
                file = resource.getWorkspace().getRoot().getFile(movedToPath);
            } else if (type == 2) {
                file = resource.getWorkspace().getRoot().getFolder(movedToPath);
            } else if (type != 4) {
                return;
            } else {
                file = resource.getWorkspace().getRoot().getProject(movedToPath.lastSegment());
            }
            RootInfo enclosingRootInfo = enclosingRootInfo(externalPath(file), 1);
            int elementType2 = elementType(file, 1, openable.getParent().getElementType(), enclosingRootInfo);
            this.currentElement = null;
            Openable createElement = (elementType == 2 || elementType2 != 2) ? createElement(file, elementType2, enclosingRootInfo) : null;
            if (createElement == null) {
                currentDelta().removed(openable);
            } else {
                currentDelta().movedFrom(openable, createElement);
            }
        } else if (isPrimaryWorkingCopy(openable, elementType)) {
            currentDelta().changed(openable, 262144);
        } else {
            close(openable);
            removeFromParentInfo(openable);
            currentDelta().removed(openable);
        }
        if (elementType == 1) {
            this.manager.indexManager.reset();
            return;
        }
        if (elementType == 2) {
            this.state.updateRoots(openable.getPath(), iResourceDelta, this);
            this.projectCachesToReset.add(openable);
        } else if (elementType == 3) {
            this.projectCachesToReset.add((JavaProject) openable.getJavaProject());
        } else {
            if (elementType != 4) {
                return;
            }
            this.projectCachesToReset.add((JavaProject) openable.getJavaProject());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int elementType(IResource iResource, int i10, int i11, RootInfo rootInfo) {
        if (i11 != -1) {
            if (i11 == 1) {
                return 2;
            }
            if (i11 != 2) {
                if (i11 != 3 && i11 != 4) {
                    return -1;
                }
                if (rootInfo == null) {
                    rootInfo = enclosingRootInfo(externalPath(iResource), i10);
                }
                if (rootInfo != null || Util.isExcluded(iResource, rootInfo.inclusionPatterns, rootInfo.exclusionPatterns)) {
                    return -1;
                }
                if (iResource.getType() != 2) {
                    if (i11 == -1 && !Util.isExcluded(iResource.getParent(), rootInfo.inclusionPatterns, rootInfo.exclusionPatterns)) {
                        return -1;
                    }
                    JavaProject javaProject = rootInfo.project;
                    String option = javaProject == null ? null : javaProject.getOption("org.eclipse.jdt.core.compiler.source", true);
                    JavaProject javaProject2 = rootInfo.project;
                    return Util.isValidFolderNameForPackage(iResource.getName(), option, javaProject2 != null ? javaProject2.getOption("org.eclipse.jdt.core.compiler.compliance", true) : null) ? 4 : -1;
                }
                String name = iResource.getName();
                JavaProject javaProject3 = rootInfo.project;
                String option2 = javaProject3 == null ? null : javaProject3.getOption("org.eclipse.jdt.core.compiler.source", true);
                JavaProject javaProject4 = rootInfo.project;
                String option3 = javaProject4 != null ? javaProject4.getOption("org.eclipse.jdt.core.compiler.compliance", true) : null;
                if (Util.isValidCompilationUnitName(name, option2, option3)) {
                    return 5;
                }
                if (Util.isValidClassFileName(name, option2, option3)) {
                    return 6;
                }
                IPath externalPath = externalPath(iResource);
                RootInfo rootInfo2 = rootInfo(externalPath, i10);
                return (rootInfo2 == null || !rootInfo2.project.getProject().getFullPath().isPrefixOf(externalPath)) ? -1 : 3;
            }
        }
        if (rootInfo == null) {
            rootInfo = enclosingRootInfo(iResource.getFullPath(), i10);
        }
        if (rootInfo != null && rootInfo.isRootOfProject(iResource.getFullPath())) {
            return 3;
        }
        if (rootInfo == null) {
        }
        if (rootInfo != null) {
            return -1;
        }
        if (iResource.getType() != 2) {
        }
    }

    private RootInfo enclosingRootInfo(IPath iPath, int i10) {
        while (iPath != null && iPath.segmentCount() > 0) {
            RootInfo rootInfo = rootInfo(iPath, i10);
            if (rootInfo != null) {
                return rootInfo;
            }
            iPath = iPath.removeLastSegments(1);
        }
        return null;
    }

    private IPath externalPath(IResource iResource) {
        IPath fullPath = iResource.getFullPath();
        return ExternalFoldersManager.isInternalPathForExternalFolder(fullPath) ? iResource.getLocation() : fullPath;
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Throwable, org.eclipse.jdt.core.JavaModelException] */
    private IPackageFragmentRoot findContainingPackageFragmentRoot(IResource iResource) throws JavaModelException {
        IResource iResource2;
        IProject project = iResource.getProject();
        if (JavaProject.hasJavaNature(project)) {
            IJavaProject create = JavaCore.create(project);
            IPath projectRelativePath = iResource.getProjectRelativePath();
            for (IPackageFragmentRoot iPackageFragmentRoot : create.getPackageFragmentRoots()) {
                try {
                    iResource2 = iPackageFragmentRoot.getUnderlyingResource();
                } catch (JavaModelException e10) {
                    if (!e10.isDoesNotExist()) {
                        throw e10;
                    }
                    iResource2 = null;
                }
                if (iResource2 != null && !iResource.equals(iResource2) && iResource2.getProjectRelativePath().isPrefixOf(projectRelativePath)) {
                    return iPackageFragmentRoot;
                }
            }
        }
        return null;
    }

    private void firePostChangeDelta(IJavaElementDelta iJavaElementDelta, IElementChangedListener[] iElementChangedListenerArr, int[] iArr, int i10) {
        if (DEBUG) {
            PrintStream printStream = System.out;
            printStream.println("FIRING POST_CHANGE Delta [" + ((Object) Thread.currentThread()) + "]:");
            printStream.println(iJavaElementDelta == null ? "<NONE>" : iJavaElementDelta.toString());
        }
        if (iJavaElementDelta != null) {
            flush();
            JavaModelOperation.setAttribute(JavaModelOperation.HAS_MODIFIED_RESOURCE_ATTR, null);
            notifyListeners(iJavaElementDelta, 1, iElementChangedListenerArr, iArr, i10);
        }
    }

    private void fireReconcileDelta(IElementChangedListener[] iElementChangedListenerArr, int[] iArr, int i10) {
        IJavaElementDelta mergeDeltas = mergeDeltas(this.reconcileDeltas.values());
        if (DEBUG) {
            PrintStream printStream = System.out;
            printStream.println("FIRING POST_RECONCILE Delta [" + ((Object) Thread.currentThread()) + "]:");
            printStream.println(mergeDeltas == null ? "<NONE>" : mergeDeltas.toString());
        }
        if (mergeDeltas != null) {
            this.reconcileDeltas = new HashMap();
            notifyListeners(mergeDeltas, 4, iElementChangedListenerArr, iArr, i10);
        }
    }

    private SourceElementParser getSourceElementParser(Openable openable) {
        if (this.sourceElementParserCache == null) {
            this.sourceElementParserCache = this.manager.indexManager.getSourceElementParser(openable.getJavaProject(), null);
        }
        return this.sourceElementParserCache;
    }

    public static long getTimeStamp(File file) {
        return file.lastModified() + file.length();
    }

    private boolean isAffectedBy(IResourceDelta iResourceDelta) {
        if (iResourceDelta == null) {
            return false;
        }
        try {
            iResourceDelta.accept(new IResourceDeltaVisitor() {
                public boolean visit(IResourceDelta iResourceDelta2) {
                    int kind = iResourceDelta2.getKind();
                    if (kind == 1 || kind == 2) {
                        final DeltaProcessor deltaProcessor = DeltaProcessor.this;
                        throw new RuntimeException() {
                            private static final long serialVersionUID = 7137113252936111022L;
                        };
                    }
                    if (kind != 4 || iResourceDelta2.getAffectedChildren().length != 0 || (iResourceDelta2.getFlags() & (-196609)) == 0) {
                        return true;
                    }
                    final DeltaProcessor deltaProcessor2 = DeltaProcessor.this;
                    throw new RuntimeException() {
                        private static final long serialVersionUID = 7137113252936111022L;
                    };
                }
            }, 8);
            return false;
        } catch (CoreException unused) {
            return false;
        } catch (C1FoundRelevantDeltaException unused2) {
            return true;
        }
    }

    private boolean isPrimaryWorkingCopy(IJavaElement iJavaElement, int i10) {
        if (i10 == 5) {
            CompilationUnit compilationUnit = (CompilationUnit) iJavaElement;
            if (compilationUnit.isPrimary() && compilationUnit.isWorkingCopy()) {
                return true;
            }
        }
        return false;
    }

    private boolean isResFilteredFromOutput(RootInfo rootInfo, OutputsInfo outputsInfo, IResource iResource, int i10) {
        if (outputsInfo != null) {
            IPath fullPath = iResource.getFullPath();
            String str = null;
            String str2 = null;
            for (int i11 = 0; i11 < outputsInfo.outputCount; i11++) {
                if (outputsInfo.paths[i11].isPrefixOf(fullPath)) {
                    int i12 = outputsInfo.traverseModes[i11];
                    if (i12 == 0 || (i12 == 1 && i10 == 6)) {
                        return true;
                    }
                    if (i10 == 2 && (iResource instanceof IFile)) {
                        if (str == null) {
                            JavaProject javaProject = rootInfo == null ? (JavaProject) createElement(iResource.getProject(), 2, null) : rootInfo.project;
                            if (javaProject != null) {
                                str = javaProject.getOption("org.eclipse.jdt.core.compiler.source", true);
                                str2 = javaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true);
                            }
                        }
                        if (Util.isValidClassFileName(iResource.getName(), str, str2)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    private IJavaElementDelta mergeDeltas(Collection<IJavaElementDelta> collection) {
        if (collection.size() == 0) {
            return null;
        }
        if (collection.size() == 1) {
            return collection.iterator().next();
        }
        if (VERBOSE) {
            System.out.println("MERGING " + collection.size() + " DELTAS [" + ((Object) Thread.currentThread()) + "]");
        }
        Iterator<IJavaElementDelta> it = collection.iterator();
        JavaElementDelta javaElementDelta = new JavaElementDelta(this.manager.javaModel);
        boolean z10 = false;
        while (it.hasNext()) {
            JavaElementDelta javaElementDelta2 = (JavaElementDelta) it.next();
            if (VERBOSE) {
                System.out.println(javaElementDelta2.toString());
            }
            IJavaElement element = javaElementDelta2.getElement();
            if (this.manager.javaModel.equals(element)) {
                IJavaElementDelta[] affectedChildren = javaElementDelta2.getAffectedChildren();
                int i10 = 0;
                while (i10 < affectedChildren.length) {
                    JavaElementDelta javaElementDelta3 = (JavaElementDelta) affectedChildren[i10];
                    javaElementDelta.insertDeltaTree(javaElementDelta3.getElement(), javaElementDelta3);
                    i10++;
                    z10 = true;
                }
                IResourceDelta[] resourceDeltas = javaElementDelta2.getResourceDeltas();
                if (resourceDeltas != null) {
                    int length = resourceDeltas.length;
                    int i11 = 0;
                    while (i11 < length) {
                        javaElementDelta.addResourceDelta(resourceDeltas[i11]);
                        i11++;
                        z10 = true;
                    }
                }
            } else {
                javaElementDelta.insertDeltaTree(element, javaElementDelta2);
                z10 = true;
            }
        }
        if (z10) {
            return javaElementDelta;
        }
        return null;
    }

    private void nonJavaResourcesChanged(Openable openable, IResourceDelta iResourceDelta) throws JavaModelException {
        if (openable.isOpen()) {
            JavaElementInfo javaElementInfo = (JavaElementInfo) openable.getElementInfo();
            int elementType = openable.getElementType();
            if (elementType == 1) {
                ((JavaModelInfo) javaElementInfo).setNonJavaResources(null);
                if (ExternalFoldersManager.isInternalPathForExternalFolder(iResourceDelta.getFullPath())) {
                    return;
                }
                currentDelta().addResourceDelta(iResourceDelta);
                return;
            }
            if (elementType == 2) {
                ((JavaProjectElementInfo) javaElementInfo).setNonJavaResources(null);
                JavaProject javaProject = (JavaProject) openable;
                PackageFragmentRoot packageFragmentRoot = (PackageFragmentRoot) javaProject.getPackageFragmentRoot((IResource) javaProject.getProject());
                if (packageFragmentRoot.isOpen()) {
                    ((PackageFragmentRootInfo) packageFragmentRoot.getElementInfo()).setNonJavaResources(null);
                }
            } else if (elementType == 3) {
                ((PackageFragmentRootInfo) javaElementInfo).setNonJavaResources(null);
            } else if (elementType == 4) {
                ((PackageFragmentInfo) javaElementInfo).setNonJavaResources(null);
            }
        }
        JavaElementDelta currentDelta = currentDelta();
        JavaElementDelta find = currentDelta.find(openable);
        if (find == null) {
            find = currentDelta.changed(openable, 1);
        }
        if (ExternalFoldersManager.isInternalPathForExternalFolder(iResourceDelta.getFullPath())) {
            return;
        }
        find.addResourceDelta(iResourceDelta);
    }

    private void notifyListeners(IJavaElementDelta iJavaElementDelta, int i10, IElementChangedListener[] iElementChangedListenerArr, int[] iArr, int i11) {
        long j10;
        final ElementChangedEvent elementChangedEvent = new ElementChangedEvent(iJavaElementDelta, i10);
        for (int i12 = 0; i12 < i11; i12++) {
            if ((iArr[i12] & i10) != 0) {
                final IElementChangedListener iElementChangedListener = iElementChangedListenerArr[i12];
                if (VERBOSE) {
                    System.out.print("Listener #" + (i12 + 1) + "=" + iElementChangedListener.toString());
                    j10 = System.currentTimeMillis();
                } else {
                    j10 = -1;
                }
                SafeRunner.run(new ISafeRunnable() {
                    public void handleException(Throwable th2) {
                        Util.log(th2, "Exception occurred in listener of Java element change notification");
                    }

                    public void run() throws Exception {
                        PerformanceStats performanceStats;
                        if (DeltaProcessor.PERF) {
                            performanceStats = PerformanceStats.getStats(JavaModelManager.DELTA_LISTENER_PERF, iElementChangedListener);
                            performanceStats.startRun();
                        } else {
                            performanceStats = null;
                        }
                        iElementChangedListener.elementChanged(elementChangedEvent);
                        if (DeltaProcessor.PERF) {
                            performanceStats.endRun();
                        }
                    }
                });
                if (VERBOSE) {
                    System.out.println(" -> " + (System.currentTimeMillis() - j10) + DateFormat.MINUTE_SECOND);
                }
            }
        }
    }

    private void notifyTypeHierarchies(IElementChangedListener[] iElementChangedListenerArr, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            final IElementChangedListener iElementChangedListener = iElementChangedListenerArr[i11];
            if (iElementChangedListener instanceof TypeHierarchy) {
                SafeRunner.run(new ISafeRunnable() {
                    public void handleException(Throwable th2) {
                        Util.log(th2, "Exception occurred in listener of Java element change notification");
                    }

                    public void run() throws Exception {
                        TypeHierarchy typeHierarchy = (TypeHierarchy) iElementChangedListener;
                        if (typeHierarchy.hasFineGrainChanges()) {
                            typeHierarchy.needsRefresh = true;
                            typeHierarchy.fireChange();
                        }
                    }
                });
            }
        }
    }

    private RootInfo oldRootInfo(IPath iPath, JavaProject javaProject) {
        RootInfo rootInfo = this.state.oldRoots.get(iPath);
        if (rootInfo == null) {
            return null;
        }
        if (rootInfo.project.equals(javaProject)) {
            return rootInfo;
        }
        List<RootInfo> list = this.state.oldOtherRoots.get(iPath);
        if (list == null) {
            return null;
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            RootInfo rootInfo2 = list.get(i10);
            if (rootInfo2.project.equals(javaProject)) {
                return rootInfo2;
            }
        }
        return null;
    }

    private List<RootInfo> otherRootsInfo(IPath iPath, int i10) {
        return i10 == 2 ? this.state.oldOtherRoots.get(iPath) : this.state.otherRoots.get(iPath);
    }

    private OutputsInfo outputsInfo(RootInfo rootInfo, IResource iResource) {
        JavaProject javaProject;
        try {
            if (rootInfo == null) {
                try {
                    javaProject = (JavaProject) createElement(iResource.getProject(), 2, null);
                } catch (JavaModelException unused) {
                }
            } else {
                javaProject = rootInfo.project;
            }
            if (javaProject != null) {
                IPath outputLocation = javaProject.getOutputLocation();
                if (javaProject.getProject().getFullPath().equals(outputLocation)) {
                    return new OutputsInfo(new IPath[]{outputLocation}, new int[]{1}, 1);
                }
                IClasspathEntry[] resolvedClasspath = javaProject.getResolvedClasspath();
                IPath[] iPathArr = new IPath[resolvedClasspath.length + 1];
                int[] iArr = new int[resolvedClasspath.length + 1];
                iPathArr[0] = outputLocation;
                iArr[0] = 0;
                int i10 = 1;
                for (IClasspathEntry iClasspathEntry : resolvedClasspath) {
                    IPath path = iClasspathEntry.getPath();
                    IPath outputLocation2 = iClasspathEntry.getOutputLocation();
                    if (outputLocation2 != null) {
                        iPathArr[i10] = outputLocation2;
                        if (path.equals(outputLocation2)) {
                            int i11 = i10 + 1;
                            iArr[i10] = iClasspathEntry.getEntryKind() == 3 ? 1 : 2;
                            i10 = i11;
                        } else {
                            iArr[i10] = 0;
                            i10++;
                        }
                    }
                    if (path.equals(outputLocation)) {
                        iArr[0] = iClasspathEntry.getEntryKind() == 3 ? 1 : 2;
                    }
                }
                return new OutputsInfo(iPathArr, iArr, i10);
            }
        } catch (JavaModelException unused2) {
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void popUntilPrefixOf(IPath iPath) {
        IPath fullPath;
        while (true) {
            Openable openable = this.currentElement;
            if (openable == 0) {
                return;
            }
            if (openable instanceof IPackageFragmentRoot) {
                fullPath = ((IPackageFragmentRoot) openable).getPath();
            } else {
                IResource resource = openable.resource();
                fullPath = resource != null ? resource.getFullPath() : null;
            }
            if (fullPath != null) {
                IAdaptable iAdaptable = this.currentElement;
                if ((iAdaptable instanceof IPackageFragment) && ((IPackageFragment) iAdaptable).isDefaultPackage() && fullPath.segmentCount() != iPath.segmentCount() - 1) {
                    this.currentElement = (Openable) this.currentElement.getParent();
                }
                if (fullPath.isPrefixOf(iPath)) {
                    return;
                }
            }
            this.currentElement = (Openable) this.currentElement.getParent();
        }
    }

    private IJavaElementDelta processResourceDelta(IResourceDelta iResourceDelta) {
        RootInfo enclosingRootInfo;
        int i10;
        try {
            JavaModel javaModel = this.manager.getJavaModel();
            if (!javaModel.isOpen()) {
                javaModel.open(null);
            }
            this.state.initializeRoots(false);
            this.currentElement = null;
            for (IResourceDelta iResourceDelta2 : iResourceDelta.getAffectedChildren(7, 8)) {
                IProject resource = iResourceDelta2.getResource();
                IProject iProject = resource;
                boolean z10 = this.state.findJavaProject(iProject.getName()) != null;
                boolean hasJavaNature = JavaProject.hasJavaNature(iProject);
                if (z10 || hasJavaNature) {
                    IPath externalPath = externalPath(resource);
                    enclosingRootInfo = enclosingRootInfo(externalPath, iResourceDelta2.getKind());
                    i10 = (enclosingRootInfo == null || !enclosingRootInfo.isRootOfProject(externalPath)) ? 2 : 3;
                } else {
                    enclosingRootInfo = null;
                    i10 = -1;
                }
                traverseDelta(iResourceDelta2, i10, enclosingRootInfo, null);
                if (i10 == -1 || (z10 != hasJavaNature && iResourceDelta2.getKind() == 4)) {
                    try {
                        nonJavaResourcesChanged(javaModel, iResourceDelta2);
                    } catch (JavaModelException unused) {
                    }
                }
            }
            resetProjectCaches();
            return this.currentDelta;
        } catch (JavaModelException e10) {
            if (VERBOSE) {
                e10.printStackTrace();
            }
            return null;
        } finally {
            this.currentDelta = null;
        }
    }

    private void readRawClasspath(JavaProject javaProject) {
        try {
            JavaModelManager.PerProjectInfo perProjectInfo = javaProject.getPerProjectInfo();
            if (perProjectInfo.writtingRawClasspath) {
                return;
            }
            perProjectInfo.readAndCacheClasspath(javaProject);
        } catch (JavaModelException e10) {
            if (VERBOSE) {
                e10.printStackTrace();
            }
        }
    }

    private void removeFromParentInfo(Openable openable) {
        Openable openable2 = (Openable) openable.getParent();
        if (openable2 == null || !openable2.isOpen()) {
            return;
        }
        try {
            ((OpenableElementInfo) openable2.getElementInfo()).removeChild(openable);
        } catch (JavaModelException unused) {
        }
    }

    private RootInfo rootInfo(IPath iPath, int i10) {
        return i10 == 2 ? this.state.oldRoots.get(iPath) : this.state.roots.get(iPath);
    }

    private void startDeltas() {
        this.isFiring = true;
    }

    private void stopDeltas() {
        this.isFiring = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r20v0, types: [org.eclipse.jdt.internal.core.DeltaProcessor] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v18 */
    /* JADX WARN: Type inference failed for: r9v21 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8, types: [org.eclipse.jdt.internal.core.Openable, org.eclipse.jdt.internal.core.DeltaProcessor$OutputsInfo] */
    /* JADX WARN: Type inference failed for: r9v9 */
    private void traverseDelta(IResourceDelta iResourceDelta, int i10, RootInfo rootInfo, OutputsInfo outputsInfo) {
        boolean updateCurrentDeltaAndIndex;
        ?? r92;
        char c10;
        IResourceDelta iResourceDelta2;
        int i11;
        IResource resource = iResourceDelta.getResource();
        if (this.currentElement == null && rootInfo != null) {
            this.currentElement = rootInfo.project;
        }
        boolean z10 = resource instanceof IProject;
        if (z10) {
            this.sourceElementParserCache = null;
            if (i10 == 3) {
                iResourceDelta2 = iResourceDelta;
                i11 = 2;
            } else {
                iResourceDelta2 = iResourceDelta;
                i11 = i10;
            }
            updateCurrentDeltaAndIndex = updateCurrentDeltaAndIndex(iResourceDelta2, i11, rootInfo);
        } else {
            updateCurrentDeltaAndIndex = rootInfo != null ? updateCurrentDeltaAndIndex(iResourceDelta, i10, rootInfo) : true;
        }
        OutputsInfo outputsInfo2 = outputsInfo == null ? outputsInfo(rootInfo, resource) : outputsInfo;
        if (updateCurrentDeltaAndIndex) {
            IResourceDelta[] affectedChildren = iResourceDelta.getAffectedChildren();
            int length = affectedChildren.length;
            IResourceDelta[] iResourceDeltaArr = null;
            Openable openable = null;
            int i12 = 0;
            boolean z11 = false;
            boolean z12 = true;
            while (i12 < length) {
                IResourceDelta iResourceDelta3 = affectedChildren[i12];
                IResource resource2 = iResourceDelta3.getResource();
                checkSourceAttachmentChange(iResourceDelta3, resource2);
                IPath externalPath = externalPath(resource2);
                int kind = iResourceDelta3.getKind();
                RootInfo rootInfo2 = rootInfo(externalPath, kind);
                RootInfo rootInfo3 = (rootInfo2 == null || rootInfo2.isRootOfProject(externalPath)) ? rootInfo2 : null;
                IResourceDelta[] iResourceDeltaArr2 = affectedChildren;
                int elementType = elementType(resource2, kind, i10, rootInfo == null ? rootInfo3 : rootInfo);
                boolean isResFilteredFromOutput = isResFilteredFromOutput(rootInfo, outputsInfo2, resource2, elementType);
                boolean z13 = (rootInfo == null || rootInfo3 == null) ? false : true;
                if (isResFilteredFromOutput || z13) {
                    z11 = true;
                } else {
                    traverseDelta(iResourceDelta3, elementType, rootInfo == null ? rootInfo3 : rootInfo, outputsInfo2);
                    if (elementType == -1) {
                        if (rootInfo != null) {
                            if (z12) {
                                if (openable == null) {
                                    Openable openable2 = this.currentElement;
                                    if (openable2 == null || !rootInfo.project.equals(openable2.getJavaProject())) {
                                        this.currentElement = rootInfo.project;
                                    }
                                    openable = (i10 == 2 || (i10 == 3 && z10)) ? rootInfo.project : createElement(resource, i10, rootInfo);
                                    if (openable == null) {
                                        c10 = 3;
                                        r92 = 0;
                                        z12 = false;
                                    }
                                }
                                Openable openable3 = openable;
                                try {
                                    nonJavaResourcesChanged(openable3, iResourceDelta3);
                                } catch (JavaModelException unused) {
                                }
                                openable = openable3;
                            } else {
                                c10 = 3;
                                r92 = 0;
                            }
                            i12++;
                            affectedChildren = iResourceDeltaArr2;
                        } else {
                            if (iResourceDeltaArr == null) {
                                iResourceDeltaArr = new IResourceDelta[length];
                            }
                            iResourceDeltaArr[i12] = iResourceDelta3;
                        }
                    } else if (rootInfo == null && rootInfo3 == null) {
                        if (iResourceDeltaArr == null) {
                            iResourceDeltaArr = new IResourceDelta[length];
                        }
                        iResourceDeltaArr[i12] = iResourceDelta3;
                    }
                }
                if (z13 || (rootInfo3 == null && rootInfo2 != null)) {
                    r92 = 0;
                    traverseDelta(iResourceDelta3, 3, rootInfo2, null);
                } else {
                    r92 = 0;
                }
                List<RootInfo> otherRootsInfo = otherRootsInfo(externalPath, kind);
                if (otherRootsInfo != null) {
                    for (RootInfo rootInfo4 : otherRootsInfo) {
                        this.currentElement = r92;
                        traverseDelta(iResourceDelta3, 3, rootInfo4, r92);
                    }
                }
                c10 = 3;
                i12++;
                affectedChildren = iResourceDeltaArr2;
            }
            if (iResourceDeltaArr != null) {
                if (z11 || z10) {
                    IProject project = resource.getProject();
                    JavaProject javaProject = (JavaProject) JavaCore.create(project);
                    if (javaProject == null || !JavaProject.hasJavaNature(project)) {
                        return;
                    }
                    for (int i13 = 0; i13 < length; i13++) {
                        IResourceDelta iResourceDelta4 = iResourceDeltaArr[i13];
                        if (iResourceDelta4 != null) {
                            try {
                                nonJavaResourcesChanged(javaProject, iResourceDelta4);
                            } catch (JavaModelException unused2) {
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void updateIndex(Openable openable, IResourceDelta iResourceDelta) {
        IndexManager indexManager = this.manager.indexManager;
        if (indexManager == null) {
            return;
        }
        int elementType = openable.getElementType();
        boolean z10 = true;
        if (elementType == 2) {
            int kind = iResourceDelta.getKind();
            if (kind == 1) {
                indexManager.indexAll(openable.getJavaProject().getProject());
                return;
            } else {
                if (kind != 2) {
                    return;
                }
                indexManager.removeIndexFamily(openable.getJavaProject().getProject().getFullPath());
                return;
            }
        }
        if (elementType == 3) {
            if (openable instanceof JarPackageFragmentRoot) {
                JarPackageFragmentRoot jarPackageFragmentRoot = (JarPackageFragmentRoot) openable;
                IPath path = jarPackageFragmentRoot.getPath();
                int kind2 = iResourceDelta.getKind();
                if (kind2 == 1) {
                    indexManager.indexLibrary(path, jarPackageFragmentRoot.getJavaProject().getProject(), jarPackageFragmentRoot.getIndexPath());
                    return;
                }
                if (kind2 == 2) {
                    indexManager.discardJobs(path.toString());
                    indexManager.removeIndex(path);
                    return;
                } else {
                    if (kind2 != 4) {
                        return;
                    }
                    indexManager.removeIndex(path);
                    indexManager.indexLibrary(path, jarPackageFragmentRoot.getJavaProject().getProject(), jarPackageFragmentRoot.getIndexPath());
                    return;
                }
            }
            int kind3 = iResourceDelta.getKind();
            if (kind3 == 1 || kind3 == 2 || (kind3 == 4 && (iResourceDelta.getFlags() & 2097152) != 0)) {
                updateRootIndex((PackageFragmentRoot) openable, CharOperation.NO_STRINGS, iResourceDelta);
                return;
            }
        } else if (elementType != 4) {
            if (elementType == 5) {
                IFile iFile = (IFile) iResourceDelta.getResource();
                int kind4 = iResourceDelta.getKind();
                if (kind4 != 1) {
                    if (kind4 == 2) {
                        indexManager.remove(Util.relativePath(iFile.getFullPath(), 1), iFile.getProject().getFullPath());
                        this.manager.secondaryTypesRemoving(iFile, true);
                        return;
                    } else {
                        if (kind4 != 4) {
                            return;
                        }
                        int flags = iResourceDelta.getFlags();
                        if ((flags & 256) == 0 && (flags & 1048576) == 0) {
                            return;
                        }
                    }
                }
                indexManager.addSource(iFile, iFile.getProject().getFullPath(), getSourceElementParser(openable));
                this.manager.secondaryTypesRemoving(iFile, false);
                return;
            }
            if (elementType != 6) {
                return;
            }
            IFile iFile2 = (IFile) iResourceDelta.getResource();
            IJavaProject javaProject = openable.getJavaProject();
            PackageFragmentRoot packageFragmentRoot = openable.getPackageFragmentRoot();
            IPath path2 = (!packageFragmentRoot.isExternal() || packageFragmentRoot.isArchive()) ? packageFragmentRoot.getPath() : packageFragmentRoot.resource().getFullPath();
            try {
                if (path2.equals(javaProject.getOutputLocation())) {
                    return;
                }
            } catch (JavaModelException unused) {
            }
            int kind5 = iResourceDelta.getKind();
            if (kind5 != 1) {
                if (kind5 == 2) {
                    indexManager.remove(Util.relativePath(iFile2.getFullPath(), path2.segmentCount()), path2);
                    return;
                } else {
                    if (kind5 != 4) {
                        return;
                    }
                    int flags2 = iResourceDelta.getFlags();
                    if ((flags2 & 256) == 0 && (flags2 & 1048576) == 0) {
                        return;
                    }
                }
            }
            indexManager.addBinary(iFile2, path2);
            return;
        }
        int kind6 = iResourceDelta.getKind();
        if (kind6 == 1 || kind6 == 2 || (kind6 == 4 && (iResourceDelta.getFlags() & 2097152) != 0)) {
            IPackageFragment packageFragment = openable instanceof IPackageFragmentRoot ? ((PackageFragmentRoot) openable).getPackageFragment(CharOperation.NO_STRINGS) : (IPackageFragment) openable;
            RootInfo rootInfo = rootInfo(packageFragment.getParent().getPath(), iResourceDelta.getKind());
            if (rootInfo != null && rootInfo.entryKind != 3) {
                z10 = false;
            }
            for (IResourceDelta iResourceDelta2 : iResourceDelta.getAffectedChildren()) {
                IResource resource = iResourceDelta2.getResource();
                if (resource instanceof IFile) {
                    String name = resource.getName();
                    if (z10) {
                        if (Util.isJavaLikeFileName(name)) {
                            updateIndex((Openable) packageFragment.getCompilationUnit(name), iResourceDelta2);
                        }
                    } else if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(name)) {
                        updateIndex((Openable) packageFragment.getClassFile(name), iResourceDelta2);
                    }
                }
            }
        }
    }

    private void updateRootIndex(PackageFragmentRoot packageFragmentRoot, String[] strArr, IResourceDelta iResourceDelta) {
        updateIndex(packageFragmentRoot.getPackageFragment(strArr), iResourceDelta);
        for (IResourceDelta iResourceDelta2 : iResourceDelta.getAffectedChildren()) {
            IResource resource = iResourceDelta2.getResource();
            if (resource instanceof IFolder) {
                updateRootIndex(packageFragmentRoot, Util.arrayConcat(strArr, resource.getName()), iResourceDelta2);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0019, code lost:
    
        if (r8.getKind() != 4) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00d7 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void validateClasspaths(IResourceDelta iResourceDelta, Set<IPath> set) {
        RootInfo rootInfo;
        IProject resource = iResourceDelta.getResource();
        int type = resource.getType();
        if (type != 1) {
            if (type == 4) {
                IProject iProject = resource;
                int kind = iResourceDelta.getKind();
                boolean hasJavaNature = JavaProject.hasJavaNature(iProject);
                if (kind == 1) {
                    set.add(iProject.getFullPath());
                } else if (kind == 2) {
                    set.add(iProject.getFullPath());
                } else if (kind == 4) {
                    if ((iResourceDelta.getFlags() & 16384) != 0) {
                        if (hasJavaNature) {
                            this.state.addClasspathValidation((JavaProject) JavaCore.create(iProject));
                        }
                        set.add(iProject.getFullPath());
                    } else if ((iResourceDelta.getFlags() & 524288) != 0) {
                        if ((this.state.findJavaProject(iProject.getName()) != null) != hasJavaNature) {
                            this.state.addClasspathValidation((JavaProject) JavaCore.create(iProject));
                            set.add(iProject.getFullPath());
                        }
                    }
                }
                r2 = hasJavaNature;
            } else if (type == 8) {
            }
            if (r2) {
                return;
            }
            for (IResourceDelta iResourceDelta2 : iResourceDelta.getAffectedChildren()) {
                validateClasspaths(iResourceDelta2, set);
            }
            return;
        }
        IFile iFile = (IFile) resource;
        if (iFile.getName().equals(".classpath") || ((rootInfo = rootInfo(iFile.getFullPath(), iResourceDelta.getKind())) != null && rootInfo.entryKind == 1)) {
            this.state.addClasspathValidation((JavaProject) JavaCore.create(iFile.getProject()));
            set.add(iFile.getProject().getFullPath());
        }
        r2 = false;
        if (r2) {
        }
    }

    public void checkExternalArchiveChanges(IJavaElement[] iJavaElementArr, IProgressMonitor iProgressMonitor) throws JavaModelException {
        checkExternalArchiveChanges(iJavaElementArr, false, iProgressMonitor);
    }

    public void fire(IJavaElementDelta iJavaElementDelta, int i10) {
        IElementChangedListener[] iElementChangedListenerArr;
        int[] iArr;
        int i11;
        if (this.isFiring) {
            if (DEBUG) {
                System.out.println("-----------------------------------------------------------------------------------------------------------------------");
            }
            if (iJavaElementDelta == null) {
                iJavaElementDelta = mergeDeltas(this.javaModelDeltas);
            }
            if (iJavaElementDelta != null) {
                Iterator<AbstractSearchScope> it = this.manager.searchScopes.o().iterator();
                while (it.hasNext()) {
                    it.next().processDelta(iJavaElementDelta, i10);
                }
                JavaWorkspaceScope javaWorkspaceScope = this.manager.workspaceScope;
                if (javaWorkspaceScope != null) {
                    javaWorkspaceScope.processDelta(iJavaElementDelta, i10);
                }
            }
            synchronized (this.state) {
                DeltaProcessingState deltaProcessingState = this.state;
                iElementChangedListenerArr = deltaProcessingState.elementChangedListeners;
                iArr = deltaProcessingState.elementChangedListenerMasks;
                i11 = deltaProcessingState.elementChangedListenerCount;
            }
            if (i10 == 0 || i10 == 1) {
                firePostChangeDelta(iJavaElementDelta, iElementChangedListenerArr, iArr, i11);
                fireReconcileDelta(iElementChangedListenerArr, iArr, i11);
            }
        }
    }

    public void flush() {
        this.javaModelDeltas = new ArrayList();
    }

    public void notifyAndFire(IJavaElementDelta iJavaElementDelta) {
        IElementChangedListener[] iElementChangedListenerArr;
        int i10;
        synchronized (this.state) {
            DeltaProcessingState deltaProcessingState = this.state;
            iElementChangedListenerArr = deltaProcessingState.elementChangedListeners;
            i10 = deltaProcessingState.elementChangedListenerCount;
        }
        notifyTypeHierarchies(iElementChangedListenerArr, i10);
        fire(iJavaElementDelta, 1);
    }

    public void registerJavaModelDelta(IJavaElementDelta iJavaElementDelta) {
        this.javaModelDeltas.add(iJavaElementDelta);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void resetProjectCaches() {
        if (this.projectCachesToReset.isEmpty()) {
            return;
        }
        JavaModelManager.getJavaModelManager().resetJarTypeCache();
        Iterator<IJavaElement> it = this.projectCachesToReset.iterator();
        Map<IJavaProject, IJavaProject[]> map = this.state.projectDependencies;
        Set<IJavaElement> hashSet = new HashSet<>();
        while (it.hasNext()) {
            JavaProject javaProject = (JavaProject) it.next();
            javaProject.resetCaches();
            addDependentProjects(javaProject, map, hashSet);
        }
        Iterator<E> it2 = hashSet.iterator();
        while (it2.hasNext()) {
            ((JavaProject) it2.next()).resetCaches();
        }
        this.projectCachesToReset.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v33, types: [java.lang.Throwable, org.eclipse.jdt.core.JavaModelException] */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.Throwable, org.eclipse.jdt.core.JavaModelException] */
    public void resourceChanged(IResourceChangeEvent iResourceChangeEvent) {
        int i10 = this.overridenEventType;
        if (i10 == -1) {
            i10 = iResourceChangeEvent.getType();
        }
        IProject resource = iResourceChangeEvent.getResource();
        IResourceDelta delta = iResourceChangeEvent.getDelta();
        Map<IJavaProject, IPackageFragmentRoot[]> map = null;
        IProject[] iProjectArr = null;
        if (i10 == 1) {
            Set<IJavaElement> removeExternalElementsToRefresh = this.state.removeExternalElementsToRefresh();
            if (isAffectedBy(delta) || removeExternalElementsToRefresh != null) {
                try {
                    try {
                        stopDeltas();
                        checkProjectsAndClasspathChanges(delta);
                        if (removeExternalElementsToRefresh != null) {
                            createExternalArchiveDelta(removeExternalElementsToRefresh, null);
                        }
                        Map<IProject, ClasspathChange> removeAllClasspathChanges = this.state.removeAllClasspathChanges();
                        if (removeAllClasspathChanges.size() > 0) {
                            boolean z10 = this.currentDelta != null;
                            JavaElementDelta currentDelta = currentDelta();
                            for (ClasspathChange classpathChange : removeAllClasspathChanges.values()) {
                                int generateDelta = classpathChange.generateDelta(currentDelta, false);
                                if ((generateDelta & 1) != 0) {
                                    this.state.rootsAreStale = true;
                                    classpathChange.requestIndexing();
                                    this.state.addClasspathValidation(classpathChange.project);
                                    z10 = true;
                                }
                                if ((generateDelta & 2) != 0) {
                                    classpathChange.project.getProject().clearCachedDynamicReferences();
                                    this.state.addProjectReferenceChange(classpathChange.project);
                                }
                                if ((generateDelta & 4) != 0) {
                                    this.state.addExternalFolderChange(classpathChange.project, classpathChange.oldResolvedClasspath);
                                }
                            }
                            Set<IJavaElement> removeExternalElementsToRefresh2 = this.state.removeExternalElementsToRefresh();
                            if (removeExternalElementsToRefresh2 != null) {
                                z10 |= createExternalArchiveDelta(removeExternalElementsToRefresh2, null);
                            }
                            if (!z10) {
                                this.currentDelta = null;
                            }
                        }
                        IJavaElementDelta processResourceDelta = processResourceDelta(delta);
                        if (processResourceDelta != null) {
                            registerJavaModelDelta(processResourceDelta);
                        }
                        this.sourceElementParserCache = null;
                        startDeltas();
                        notifyAndFire(null);
                        return;
                    } catch (Throwable th2) {
                        this.sourceElementParserCache = null;
                        startDeltas();
                        throw th2;
                    }
                } finally {
                    this.state.resetOldJavaProjectNames();
                    this.oldRoots = null;
                }
            }
            return;
        }
        if (i10 == 4) {
            try {
                if (resource.getType() == 4 && resource.hasNature(JavaCore.NATURE_ID)) {
                    deleting(resource);
                    return;
                }
                return;
            } catch (CoreException unused) {
                return;
            }
        }
        if (i10 != 8) {
            if (i10 == 16) {
                JavaBuilder.buildFinished();
                return;
            }
            if (i10 != 32) {
                return;
            }
            Object source = iResourceChangeEvent.getSource();
            IProject[] projects = source instanceof IProject ? new IProject[]{(IProject) source} : source instanceof IWorkspace ? ((IWorkspace) source).getRoot().getProjects(8) : null;
            JavaModelManager.getExternalManager().refreshReferences(projects, (IProgressMonitor) null);
            IJavaProject[] iJavaProjectArr = new IJavaProject[projects.length];
            for (int i11 = 0; i11 < projects.length; i11++) {
                iJavaProjectArr[i11] = JavaCore.create(projects[i11]);
            }
            try {
                checkExternalArchiveChanges(iJavaProjectArr, true, null);
                return;
            } catch (JavaModelException e10) {
                if (e10.isDoesNotExist()) {
                    return;
                }
                Util.log((Throwable) e10, "Exception while updating external archives");
                return;
            }
        }
        this.state.initializeRoots(false);
        boolean isAffectedBy = isAffectedBy(delta);
        Object[] objArr = isAffectedBy && validateClasspaths(delta);
        ExternalFolderChange[] removeExternalFolderChanges = this.state.removeExternalFolderChanges();
        if (removeExternalFolderChanges != null) {
            for (ExternalFolderChange externalFolderChange : removeExternalFolderChanges) {
                try {
                    externalFolderChange.updateExternalFoldersIfNecessary(false, null);
                } catch (JavaModelException e11) {
                    if (!e11.isDoesNotExist()) {
                        Util.log((Throwable) e11, "Exception while updating external folders");
                    }
                }
            }
        }
        ClasspathValidation[] removeClasspathValidations = this.state.removeClasspathValidations();
        if (removeClasspathValidations != null) {
            for (ClasspathValidation classpathValidation : removeClasspathValidations) {
                classpathValidation.validate();
            }
        }
        Set<IJavaProject> removeProjectReferenceChanges = this.state.removeProjectReferenceChanges();
        if (objArr != false || !removeProjectReferenceChanges.isEmpty()) {
            Iterator<IJavaProject> it = removeProjectReferenceChanges.iterator();
            while (it.hasNext()) {
                it.next().getProject().clearCachedDynamicReferences();
            }
            try {
                JavaProject.validateCycles(null);
            } catch (JavaModelException unused2) {
            }
        }
        if (isAffectedBy) {
            Object source2 = iResourceChangeEvent.getSource();
            if (source2 instanceof IWorkspace) {
                iProjectArr = ((IWorkspace) source2).getRoot().getProjects();
            } else if (source2 instanceof IProject) {
                iProjectArr = new IProject[]{(IProject) source2};
            } else {
                Util.log(new Exception(), "Expected to see a workspace or project on the PRE_BUILD resource change but was: " + source2.toString());
            }
            if (iProjectArr != null) {
                for (IProject iProject : iProjectArr) {
                    try {
                        if (iProject.isOpen() && iProject.hasNature(JavaCore.NATURE_ID)) {
                            IBuildConfiguration[] buildConfigs = iProject.getBuildConfigs();
                            if (buildConfigs.length > 1 && !JavaCore.BUILDER_ID.equals(buildConfigs[0].getName())) {
                                this.manager.resetExternalFilesCache();
                                break;
                            }
                        }
                    } catch (CoreException e12) {
                        Util.log((Throwable) e12, "Exception while checking builder configuration ordering");
                    }
                }
            }
            JavaBuilder.buildStarting();
        }
    }

    public boolean updateCurrentDeltaAndIndex(IResourceDelta iResourceDelta, int i10, RootInfo rootInfo) {
        int kind = iResourceDelta.getKind();
        if (kind == 1) {
            IResource resource = iResourceDelta.getResource();
            Openable createElement = createElement(resource, i10, rootInfo);
            if (createElement == null) {
                this.state.updateRoots(resource.getFullPath(), iResourceDelta, this);
                return (rootInfo == null || rootInfo.inclusionPatterns == null) ? false : true;
            }
            updateIndex(createElement, iResourceDelta);
            elementAdded(createElement, iResourceDelta, rootInfo);
            if (i10 == 3) {
                this.state.addClasspathValidation(rootInfo.project);
            }
            return i10 == 4;
        }
        if (kind == 2) {
            IProject resource2 = iResourceDelta.getResource();
            Openable createElement2 = createElement(resource2, i10, rootInfo);
            if (createElement2 == null) {
                this.state.updateRoots(resource2.getFullPath(), iResourceDelta, this);
                return (rootInfo == null || rootInfo.inclusionPatterns == null) ? false : true;
            }
            updateIndex(createElement2, iResourceDelta);
            elementRemoved(createElement2, iResourceDelta, rootInfo);
            if (i10 == 3) {
                this.state.addClasspathValidation(rootInfo.project);
            }
            if (resource2.getType() == 4) {
                if (JavaBuilder.DEBUG) {
                    System.out.println("Clearing last state for removed project : " + ((Object) resource2));
                }
                this.manager.setLastBuiltState(resource2, null);
                this.manager.previousSessionContainers.remove(createElement2);
            }
            return i10 == 4;
        }
        if (kind == 4) {
            int flags = iResourceDelta.getFlags();
            if (i10 != 3 || (2097152 & flags) == 0) {
                if ((flags & 256) != 0 || (1048576 & flags) != 0) {
                    Openable createElement3 = createElement(iResourceDelta.getResource(), i10, rootInfo);
                    if (createElement3 == null) {
                        return false;
                    }
                    updateIndex(createElement3, iResourceDelta);
                    contentChanged(createElement3);
                } else if (i10 == 2) {
                    if ((flags & 16384) != 0) {
                        IProject resource3 = iResourceDelta.getResource();
                        Openable createElement4 = createElement(resource3, i10, rootInfo);
                        if (createElement4 == null) {
                            this.state.updateRoots(resource3.getFullPath(), iResourceDelta, this);
                            return false;
                        }
                        if (resource3.isOpen()) {
                            if (JavaProject.hasJavaNature(resource3)) {
                                addToParentInfo(createElement4);
                                this.manager.getPerProjectInfo(resource3, true).rememberExternalLibTimestamps();
                                currentDelta().opened(createElement4);
                                this.state.updateRoots(createElement4.getPath(), iResourceDelta, this);
                                this.projectCachesToReset.add(createElement4);
                                this.manager.indexManager.indexAll(resource3);
                            }
                        } else if (this.state.findJavaProject(resource3.getName()) != null) {
                            close(createElement4);
                            removeFromParentInfo(createElement4);
                            currentDelta().closed(createElement4);
                            this.manager.indexManager.discardJobs(createElement4.getElementName());
                            this.manager.indexManager.removeIndexFamily(resource3.getFullPath());
                        }
                        return false;
                    }
                    if ((flags & 524288) != 0) {
                        IProject resource4 = iResourceDelta.getResource();
                        boolean z10 = this.state.findJavaProject(resource4.getName()) != null;
                        boolean hasJavaNature = JavaProject.hasJavaNature(resource4);
                        if (z10 != hasJavaNature) {
                            Openable createElement5 = createElement(resource4, i10, rootInfo);
                            if (createElement5 == null) {
                                return false;
                            }
                            if (hasJavaNature) {
                                elementAdded(createElement5, iResourceDelta, rootInfo);
                                this.manager.indexManager.indexAll(resource4);
                            } else {
                                elementRemoved(createElement5, iResourceDelta, rootInfo);
                                this.manager.indexManager.discardJobs(createElement5.getElementName());
                                this.manager.indexManager.removeIndexFamily(resource4.getFullPath());
                                if (JavaBuilder.DEBUG) {
                                    System.out.println("Clearing last state for project loosing Java nature: " + ((Object) resource4));
                                }
                                this.manager.setLastBuiltState(resource4, null);
                            }
                            return false;
                        }
                    }
                }
            } else if (oldRootInfo(rootInfo.rootPath, rootInfo.project) != null) {
                IResource resource5 = iResourceDelta.getResource();
                Object externalTarget = JavaModel.getExternalTarget(resource5.getLocation(), true);
                Openable createElement6 = createElement(resource5, i10, rootInfo);
                updateIndex(createElement6, iResourceDelta);
                if (externalTarget != null) {
                    elementAdded(createElement6, iResourceDelta, rootInfo);
                } else {
                    elementRemoved(createElement6, iResourceDelta, rootInfo);
                }
                this.state.addClasspathValidation(rootInfo.project);
            }
            return true;
        }
        return true;
    }

    public void updateJavaModel(IJavaElementDelta iJavaElementDelta) {
        if (iJavaElementDelta != null) {
            this.modelUpdater.processJavaDelta(iJavaElementDelta);
            return;
        }
        int size = this.javaModelDeltas.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.modelUpdater.processJavaDelta(this.javaModelDeltas.get(i10));
        }
    }

    private void checkExternalArchiveChanges(IJavaElement[] iJavaElementArr, boolean z10, IProgressMonitor iProgressMonitor) throws JavaModelException {
        HashSet<IJavaProject> externalWorkingCopyProjects;
        if (iProgressMonitor != null && iProgressMonitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        if (iProgressMonitor != null) {
            try {
                iProgressMonitor.beginTask("", 1);
            } catch (Throwable th2) {
                this.currentDelta = null;
                if (iProgressMonitor != null) {
                    iProgressMonitor.done();
                }
                throw th2;
            }
        }
        boolean z11 = false;
        for (IJavaElement iJavaElement : iJavaElementArr) {
            this.state.addForRefresh(iJavaElement);
            if (iJavaElement.getElementType() == 1 && (externalWorkingCopyProjects = JavaModelManager.getJavaModelManager().getExternalWorkingCopyProjects()) != null) {
                Iterator<IJavaProject> it = externalWorkingCopyProjects.iterator();
                while (it.hasNext()) {
                    ((JavaProject) it.next()).resetCaches();
                }
                z11 = true;
            }
        }
        Set<IJavaElement> removeExternalElementsToRefresh = this.state.removeExternalElementsToRefresh();
        if (removeExternalElementsToRefresh != null && createExternalArchiveDelta(removeExternalElementsToRefresh, iProgressMonitor)) {
            IJavaElementDelta[] affectedChildren = this.currentDelta.getAffectedChildren();
            int length = affectedChildren.length;
            final IProject[] iProjectArr = new IProject[length];
            for (int i10 = 0; i10 < length; i10++) {
                iProjectArr[i10] = ((JavaProject) affectedChildren[i10].getElement()).getProject();
            }
            if (length > 0) {
                if (z10) {
                    this.manager.touchProjects(iProjectArr, iProgressMonitor);
                } else {
                    try {
                        ResourcesPlugin.getWorkspace().run(new IWorkspaceRunnable() {
                            public void run(IProgressMonitor iProgressMonitor2) throws CoreException {
                                int i11 = 0;
                                while (true) {
                                    IProject[] iProjectArr2 = iProjectArr;
                                    if (i11 >= iProjectArr2.length) {
                                        return;
                                    }
                                    IProject iProject = iProjectArr2[i11];
                                    if (JavaBuilder.DEBUG) {
                                        System.out.println("Touching project " + iProject.getName() + " due to external jar file change");
                                    }
                                    iProject.touch(iProgressMonitor2);
                                    i11++;
                                }
                            }
                        }, iProgressMonitor);
                    } catch (CoreException e10) {
                        throw new JavaModelException(e10);
                    }
                }
            }
            JavaElementDelta javaElementDelta = this.currentDelta;
            if (javaElementDelta != null) {
                fire(javaElementDelta, 0);
            }
        } else if (z11) {
            JavaModelManager.getJavaModelManager().resetJarTypeCache();
        }
        this.currentDelta = null;
        if (iProgressMonitor != null) {
            iProgressMonitor.done();
        }
    }

    public static class RootInfo {
        IPackageFragmentRoot cache = getPackageFragmentRoot();
        final int entryKind;
        final char[][] exclusionPatterns;
        final char[][] inclusionPatterns;
        public final JavaProject project;
        IPackageFragmentRoot root;
        final IPath rootPath;

        public RootInfo(JavaProject javaProject, IPath iPath, char[][] cArr, char[][] cArr2, int i10) {
            this.project = javaProject;
            this.rootPath = iPath;
            this.inclusionPatterns = cArr;
            this.exclusionPatterns = cArr2;
            this.entryKind = i10;
        }

        public IPackageFragmentRoot getPackageFragmentRoot() {
            Object target = JavaModel.getTarget(this.rootPath, false);
            if (target instanceof IResource) {
                return this.project.getPackageFragmentRoot((IResource) target, this.rootPath);
            }
            return this.project.getPackageFragmentRoot(this.rootPath.toOSString());
        }

        public boolean isRootOfProject(IPath iPath) {
            return this.rootPath.equals(iPath) && this.project.getProject().getFullPath().isPrefixOf(iPath);
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer("project=");
            JavaProject javaProject = this.project;
            if (javaProject == null) {
                stringBuffer.append("null");
            } else {
                stringBuffer.append(javaProject.getElementName());
            }
            stringBuffer.append("\npath=");
            IPath iPath = this.rootPath;
            if (iPath == null) {
                stringBuffer.append("null");
            } else {
                stringBuffer.append(iPath.toString());
            }
            stringBuffer.append("\nincluding=");
            char[][] cArr = this.inclusionPatterns;
            if (cArr == null) {
                stringBuffer.append("null");
            } else {
                int length = cArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    stringBuffer.append(new String(this.inclusionPatterns[i10]));
                    if (i10 < length - 1) {
                        stringBuffer.append("|");
                    }
                }
            }
            stringBuffer.append("\nexcluding=");
            char[][] cArr2 = this.exclusionPatterns;
            if (cArr2 == null) {
                stringBuffer.append("null");
            } else {
                int length2 = cArr2.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    stringBuffer.append(new String(this.exclusionPatterns[i11]));
                    if (i11 < length2 - 1) {
                        stringBuffer.append("|");
                    }
                }
            }
            return stringBuffer.toString();
        }

        public IPackageFragmentRoot getPackageFragmentRoot(IResource iResource) {
            if (this.root == null) {
                if (iResource != null) {
                    this.root = this.project.getPackageFragmentRoot(iResource);
                } else {
                    this.root = getPackageFragmentRoot();
                }
            }
            IPackageFragmentRoot iPackageFragmentRoot = this.root;
            if (iPackageFragmentRoot != null) {
                this.cache = iPackageFragmentRoot;
            }
            return iPackageFragmentRoot;
        }
    }

    private boolean validateClasspaths(IResourceDelta iResourceDelta) {
        HashSet hashSet = new HashSet(5);
        validateClasspaths(iResourceDelta, hashSet);
        if (hashSet.isEmpty()) {
            return false;
        }
        boolean z10 = false;
        for (IProject iProject : ResourcesPlugin.getWorkspace().getRoot().getProjects()) {
            JavaProject javaProject = (JavaProject) JavaCore.create(iProject);
            try {
                IPath fullPath = iProject.getFullPath();
                for (IClasspathEntry iClasspathEntry : javaProject.getResolvedClasspath()) {
                    int entryKind = iClasspathEntry.getEntryKind();
                    if (entryKind != 1) {
                        if (entryKind == 2 && hashSet.contains(iClasspathEntry.getPath())) {
                            this.state.addClasspathValidation(javaProject);
                            z10 = true;
                        }
                    } else {
                        IPath path = iClasspathEntry.getPath();
                        IPath removeLastSegments = path.removeLastSegments(path.segmentCount() - 1);
                        if (!removeLastSegments.equals(fullPath) && hashSet.contains(removeLastSegments)) {
                            this.state.addClasspathValidation(javaProject);
                        }
                    }
                }
            } catch (JavaModelException unused) {
            }
        }
        return z10;
    }
}
