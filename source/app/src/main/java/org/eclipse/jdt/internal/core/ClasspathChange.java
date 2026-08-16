package org.eclipse.jdt.internal.core;

import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.util.ObjectVector;
import org.eclipse.jdt.internal.core.DeltaProcessor;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.search.indexing.IndexManager;
import org.eclipse.jdt.internal.core.util.Util;

public class ClasspathChange {
    public static final int HAS_DELTA = 1;
    public static final int HAS_LIBRARY_CHANGE = 4;
    public static final int HAS_PROJECT_CHANGE = 2;
    public static final int NO_DELTA = 0;
    IPath oldOutputLocation;
    IClasspathEntry[] oldRawClasspath;
    IClasspathEntry[] oldResolvedClasspath;
    JavaProject project;

    public ClasspathChange(JavaProject javaProject, IClasspathEntry[] iClasspathEntryArr, IPath iPath, IClasspathEntry[] iClasspathEntryArr2) {
        this.project = javaProject;
        this.oldRawClasspath = iClasspathEntryArr;
        this.oldOutputLocation = iPath;
        this.oldResolvedClasspath = iClasspathEntryArr2;
    }

    private void addClasspathDeltas(JavaElementDelta javaElementDelta, IPackageFragmentRoot[] iPackageFragmentRootArr, int i10) {
        for (IPackageFragmentRoot iPackageFragmentRoot : iPackageFragmentRootArr) {
            javaElementDelta.changed(iPackageFragmentRoot, i10);
            if ((i10 & 128) != 0 || (i10 & 4096) != 0 || (i10 & 8192) != 0) {
                try {
                    iPackageFragmentRoot.close();
                } catch (JavaModelException unused) {
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00e5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00e6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int classpathContains(IClasspathEntry[] iClasspathEntryArr, IClasspathEntry iClasspathEntry) {
        IPath[] inclusionPatterns;
        IPath[] exclusionPatterns;
        IPath[] exclusionPatterns2 = iClasspathEntry.getExclusionPatterns();
        IPath[] inclusionPatterns2 = iClasspathEntry.getInclusionPatterns();
        int length = iClasspathEntryArr == null ? 0 : iClasspathEntryArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            IClasspathEntry iClasspathEntry2 = iClasspathEntryArr[i10];
            if (iClasspathEntry2.getContentKind() == iClasspathEntry.getContentKind() && iClasspathEntry2.getEntryKind() == iClasspathEntry.getEntryKind() && iClasspathEntry2.isExported() == iClasspathEntry.isExported() && iClasspathEntry2.getPath().equals(iClasspathEntry.getPath())) {
                IPath outputLocation = iClasspathEntry.getOutputLocation();
                IPath outputLocation2 = iClasspathEntry2.getOutputLocation();
                if (outputLocation == null) {
                    if (outputLocation2 != null) {
                        continue;
                    }
                    inclusionPatterns = iClasspathEntry2.getInclusionPatterns();
                    if (inclusionPatterns2 != inclusionPatterns) {
                        if (inclusionPatterns2 == null) {
                            continue;
                        } else {
                            int length2 = inclusionPatterns2.length;
                            if (inclusionPatterns != null && inclusionPatterns.length == length2) {
                                for (int i11 = 0; i11 < length2; i11++) {
                                    if (!inclusionPatterns2[i11].toString().equals(inclusionPatterns[i11].toString())) {
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    exclusionPatterns = iClasspathEntry2.getExclusionPatterns();
                    if (exclusionPatterns2 != exclusionPatterns) {
                        if (exclusionPatterns2 == null) {
                            continue;
                        } else {
                            int length3 = exclusionPatterns2.length;
                            if (exclusionPatterns != null && exclusionPatterns.length == length3) {
                                for (int i12 = 0; i12 < length3; i12++) {
                                    if (!exclusionPatterns2[i12].toString().equals(exclusionPatterns[i12].toString())) {
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    if ("enabled".equals(this.project.getOption("org.eclipse.jdt.core.compiler.annotation.nullanalysis", true))) {
                        String rawExternalAnnotationPath = ClasspathEntry.getRawExternalAnnotationPath(iClasspathEntry);
                        String rawExternalAnnotationPath2 = ClasspathEntry.getRawExternalAnnotationPath(iClasspathEntry2);
                        if (rawExternalAnnotationPath == null || rawExternalAnnotationPath2 == null) {
                            if (rawExternalAnnotationPath != rawExternalAnnotationPath2) {
                                continue;
                            }
                        } else if (!rawExternalAnnotationPath.equals(rawExternalAnnotationPath2)) {
                            continue;
                        }
                    }
                    if (((ClasspathEntry) iClasspathEntry).isModular() != ((ClasspathEntry) iClasspathEntry2).isModular()) {
                        return i10;
                    }
                } else {
                    if (!outputLocation.equals(outputLocation2)) {
                        continue;
                    }
                    inclusionPatterns = iClasspathEntry2.getInclusionPatterns();
                    if (inclusionPatterns2 != inclusionPatterns) {
                    }
                    exclusionPatterns = iClasspathEntry2.getExclusionPatterns();
                    if (exclusionPatterns2 != exclusionPatterns) {
                    }
                    if ("enabled".equals(this.project.getOption("org.eclipse.jdt.core.compiler.annotation.nullanalysis", true))) {
                    }
                    if (((ClasspathEntry) iClasspathEntry).isModular() != ((ClasspathEntry) iClasspathEntry2).isModular()) {
                    }
                }
            }
        }
        return -1;
    }

    private void collectAllSubfolders(IFolder iFolder, ArrayList arrayList) throws JavaModelException {
        try {
            for (IResource iResource : iFolder.members()) {
                if (iResource.getType() == 2) {
                    arrayList.add(iResource);
                    collectAllSubfolders((IFolder) iResource, arrayList);
                }
            }
        } catch (CoreException e10) {
            throw new JavaModelException(e10);
        }
    }

    private ArrayList determineAffectedPackageFragments(IPath iPath) throws JavaModelException {
        ArrayList arrayList = new ArrayList();
        IResource findMember = iPath != null ? ResourcesPlugin.getWorkspace().getRoot().findMember(iPath) : null;
        if (findMember != null && findMember.getType() == 2) {
            IFolder iFolder = (IFolder) findMember;
            IClasspathEntry[] expandedClasspath = this.project.getExpandedClasspath();
            for (int i10 = 0; i10 < expandedClasspath.length; i10++) {
                IClasspathEntry iClasspathEntry = expandedClasspath[i10];
                IPath path = iClasspathEntry.getPath();
                if (iClasspathEntry.getEntryKind() != 2 && path.isPrefixOf(iPath) && !path.equals(iPath)) {
                    PackageFragmentRoot packageFragmentRoot = (PackageFragmentRoot) this.project.computePackageFragmentRoots(expandedClasspath[i10])[0];
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(iFolder);
                    collectAllSubfolders(iFolder, arrayList2);
                    Iterator it = arrayList2.iterator();
                    int segmentCount = path.segmentCount();
                    while (it.hasNext()) {
                        PackageFragment packageFragment = packageFragmentRoot.getPackageFragment(((IFolder) it.next()).getFullPath().removeFirstSegments(segmentCount).segments());
                        if (!Util.isExcluded(packageFragment)) {
                            arrayList.add(packageFragment);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    private int getSourceAttachmentDeltaFlag(IPath iPath, IPath iPath2) {
        if (iPath == null) {
            return iPath2 != null ? 4096 : 0;
        }
        if (iPath2 == null) {
            return 8192;
        }
        return !iPath.equals(iPath2) ? 12288 : 0;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ClasspathChange) {
            return this.project.equals(((ClasspathChange) obj).project);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int generateDelta(JavaElementDelta javaElementDelta, boolean z10) {
        IClasspathEntry[] iClasspathEntryArr;
        IClasspathEntry[] resolvedClasspath;
        IPath iPath;
        IClasspathEntry[] iClasspathEntryArr2;
        int i10;
        int i11;
        int i12;
        int i13;
        IClasspathEntry[] iClasspathEntryArr3;
        HashMap hashMap;
        PackageFragmentRoot[] packageFragmentRootArr;
        IPackageFragmentRoot iPackageFragmentRoot;
        PackageFragmentRoot packageFragmentRoot;
        JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
        DeltaProcessingState deltaProcessingState = javaModelManager.deltaState;
        int i14 = 0;
        if (deltaProcessingState.findJavaProject(this.project.getElementName()) == null) {
            return 0;
        }
        DeltaProcessor deltaProcessor = deltaProcessingState.getDeltaProcessor();
        try {
            JavaModelManager.PerProjectInfo perProjectInfo = this.project.getPerProjectInfo();
            this.project.resolveClasspath(perProjectInfo, false, z10);
            synchronized (perProjectInfo) {
                try {
                    iClasspathEntryArr = perProjectInfo.rawClasspath;
                    resolvedClasspath = perProjectInfo.getResolvedClasspath();
                    iPath = perProjectInfo.outputLocation;
                } catch (Throwable th2) {
                    th = th2;
                    while (true) {
                        try {
                            try {
                                break;
                            } catch (JavaModelException e10) {
                                e = e10;
                                i14 = 0;
                                if (DeltaProcessor.VERBOSE) {
                                }
                                return i14;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    }
                    throw th;
                }
            }
            if (resolvedClasspath == null) {
                try {
                    JavaModelManager.PerProjectInfo newTemporaryInfo = this.project.newTemporaryInfo();
                    this.project.resolveClasspath(newTemporaryInfo, false, z10);
                    iClasspathEntryArr = newTemporaryInfo.rawClasspath;
                    resolvedClasspath = newTemporaryInfo.getResolvedClasspath();
                    iPath = newTemporaryInfo.outputLocation;
                } catch (JavaModelException e11) {
                    e = e11;
                    if (DeltaProcessor.VERBOSE) {
                    }
                    return i14;
                }
            }
            iClasspathEntryArr2 = this.oldRawClasspath;
            i10 = 5;
            i11 = -1;
            i12 = 1;
        } catch (JavaModelException e12) {
            e = e12;
        }
        try {
            if (iClasspathEntryArr2 != null) {
                try {
                    if (!JavaProject.areClasspathsEqual(iClasspathEntryArr2, iClasspathEntryArr, this.oldOutputLocation, iPath)) {
                        javaElementDelta.changed(this.project, 131072);
                        try {
                            int length = this.oldRawClasspath.length;
                            for (int i15 = 0; i15 < length; i15++) {
                                IClasspathEntry iClasspathEntry = this.oldRawClasspath[i15];
                                if (iClasspathEntry.getEntryKind() == 5 && classpathContains(iClasspathEntryArr, iClasspathEntry) == -1) {
                                    javaModelManager.containerPut(this.project, iClasspathEntry.getPath(), null);
                                }
                            }
                            i13 = 1;
                            iClasspathEntryArr3 = this.oldResolvedClasspath;
                            if (iClasspathEntryArr3 == null && JavaProject.areClasspathsEqual(iClasspathEntryArr3, resolvedClasspath, this.oldOutputLocation, iPath)) {
                                return i13;
                            }
                            this.project.close();
                            deltaProcessor.projectCachesToReset.add(this.project);
                            if (this.oldResolvedClasspath != null) {
                                return i13;
                            }
                            javaElementDelta.changed(this.project, 2097152);
                            deltaProcessingState.addForRefresh(this.project);
                            Map<IJavaProject, IPackageFragmentRoot[]> map = deltaProcessor.oldRoots;
                            IPackageFragmentRoot[] iPackageFragmentRootArr = map != null ? map.get(this.project) : null;
                            if (iPackageFragmentRootArr != null) {
                                hashMap = new HashMap();
                                for (IPackageFragmentRoot iPackageFragmentRoot2 : iPackageFragmentRootArr) {
                                    hashMap.put(iPackageFragmentRoot2.getPath(), iPackageFragmentRoot2);
                                }
                            } else {
                                hashMap = null;
                            }
                            int length2 = resolvedClasspath.length;
                            int length3 = this.oldResolvedClasspath.length;
                            int i16 = 1;
                            int i17 = 0;
                            while (i17 < length3) {
                                int classpathContains = classpathContains(resolvedClasspath, this.oldResolvedClasspath[i17]);
                                if (classpathContains == i11) {
                                    int entryKind = this.oldResolvedClasspath[i17].getEntryKind();
                                    if (entryKind == 2) {
                                        i16 |= 2;
                                    } else {
                                        if (entryKind == i12) {
                                            i16 |= 4;
                                        }
                                        if (hashMap == null || (packageFragmentRoot = (PackageFragmentRoot) hashMap.get(this.oldResolvedClasspath[i17].getPath())) == null) {
                                            packageFragmentRootArr = null;
                                        } else {
                                            packageFragmentRootArr = new PackageFragmentRoot[i12];
                                            packageFragmentRootArr[0] = packageFragmentRoot;
                                        }
                                        if (packageFragmentRootArr == null) {
                                            try {
                                                try {
                                                    ObjectVector objectVector = new ObjectVector();
                                                    HashSet hashSet = new HashSet(i10);
                                                    hashSet.add(this.project.rootID());
                                                    JrtPackageFragmentRoot.workingOnOldClasspath.set(Boolean.TRUE);
                                                    this.project.computePackageFragmentRoots(this.oldResolvedClasspath[i17], objectVector, hashSet, (IClasspathEntry) null, false, true, (Map) null);
                                                    DeltaProcessor.RootInfo rootInfo = deltaProcessingState.oldRoots.get(this.oldResolvedClasspath[i17].getPath());
                                                    if (rootInfo != null && (iPackageFragmentRoot = rootInfo.cache) != null) {
                                                        int i18 = 0;
                                                        while (true) {
                                                            if (i18 >= objectVector.size()) {
                                                                objectVector.add(iPackageFragmentRoot);
                                                                break;
                                                            }
                                                            if (((IPackageFragmentRoot) objectVector.elementAt(i18)).getPath().equals(iPackageFragmentRoot.getPath())) {
                                                                break;
                                                            }
                                                            i18++;
                                                        }
                                                    }
                                                    packageFragmentRootArr = new PackageFragmentRoot[objectVector.size()];
                                                    objectVector.copyInto(packageFragmentRootArr);
                                                    JrtPackageFragmentRoot.workingOnOldClasspath.set(null);
                                                } finally {
                                                    JrtPackageFragmentRoot.workingOnOldClasspath.set(null);
                                                }
                                            } catch (JavaModelException unused) {
                                                packageFragmentRootArr = new PackageFragmentRoot[0];
                                                JrtPackageFragmentRoot.workingOnOldClasspath.set(null);
                                            }
                                        }
                                        addClasspathDeltas(javaElementDelta, packageFragmentRootArr, 128);
                                    }
                                } else if (this.oldResolvedClasspath[i17].getEntryKind() == 2) {
                                    i16 |= 2;
                                } else {
                                    if (classpathContains != i17) {
                                        addClasspathDeltas(javaElementDelta, this.project.computePackageFragmentRoots(this.oldResolvedClasspath[i17]), 256);
                                    }
                                    int sourceAttachmentDeltaFlag = getSourceAttachmentDeltaFlag(this.oldResolvedClasspath[i17].getSourceAttachmentPath(), resolvedClasspath[classpathContains].getSourceAttachmentPath());
                                    IPath sourceAttachmentRootPath = this.oldResolvedClasspath[i17].getSourceAttachmentRootPath();
                                    IPath sourceAttachmentRootPath2 = resolvedClasspath[classpathContains].getSourceAttachmentRootPath();
                                    int sourceAttachmentDeltaFlag2 = sourceAttachmentDeltaFlag | getSourceAttachmentDeltaFlag(sourceAttachmentRootPath, sourceAttachmentRootPath2);
                                    if (sourceAttachmentDeltaFlag2 != 0) {
                                        addClasspathDeltas(javaElementDelta, this.project.computePackageFragmentRoots(this.oldResolvedClasspath[i17]), sourceAttachmentDeltaFlag2);
                                    } else if (sourceAttachmentRootPath == null && sourceAttachmentRootPath2 == null) {
                                        for (IPackageFragmentRoot iPackageFragmentRoot3 : this.project.computePackageFragmentRoots(this.oldResolvedClasspath[i17])) {
                                            try {
                                                iPackageFragmentRoot3.close();
                                            } catch (JavaModelException unused2) {
                                            }
                                        }
                                    }
                                }
                                i17++;
                                i10 = 5;
                                i11 = -1;
                                i12 = 1;
                            }
                            for (int i19 = 0; i19 < length2; i19++) {
                                if (classpathContains(this.oldResolvedClasspath, resolvedClasspath[i19]) == i11) {
                                    int entryKind2 = resolvedClasspath[i19].getEntryKind();
                                    if (entryKind2 == 2) {
                                        i16 |= 2;
                                    } else {
                                        if (entryKind2 == i12) {
                                            i16 |= 4;
                                        }
                                        addClasspathDeltas(javaElementDelta, this.project.computePackageFragmentRoots(resolvedClasspath[i19]), 64);
                                    }
                                }
                            }
                            if ((iPath == null && this.oldOutputLocation != null) || (iPath != null && !iPath.equals(this.oldOutputLocation))) {
                                try {
                                    Iterator it = determineAffectedPackageFragments(this.oldOutputLocation).iterator();
                                    while (it.hasNext()) {
                                        IPackageFragment iPackageFragment = (IPackageFragment) it.next();
                                        ((IPackageFragmentRoot) iPackageFragment.getParent()).close();
                                        javaElementDelta.added(iPackageFragment);
                                    }
                                    Iterator it2 = determineAffectedPackageFragments(iPath).iterator();
                                    while (it2.hasNext()) {
                                        IPackageFragment iPackageFragment2 = (IPackageFragment) it2.next();
                                        ((IPackageFragmentRoot) iPackageFragment2.getParent()).close();
                                        javaElementDelta.removed(iPackageFragment2);
                                    }
                                } catch (JavaModelException e13) {
                                    if (DeltaProcessor.VERBOSE) {
                                        e13.printStackTrace();
                                    }
                                }
                            }
                            return i16;
                        } catch (JavaModelException e14) {
                            e = e14;
                            i14 = 1;
                            if (DeltaProcessor.VERBOSE) {
                                e.printStackTrace();
                            }
                            return i14;
                        }
                    }
                } catch (JavaModelException e15) {
                    e = e15;
                    i14 = 0;
                }
            }
            iClasspathEntryArr3 = this.oldResolvedClasspath;
            if (iClasspathEntryArr3 == null) {
            }
            this.project.close();
            deltaProcessor.projectCachesToReset.add(this.project);
            if (this.oldResolvedClasspath != null) {
            }
        } catch (JavaModelException e16) {
            e = e16;
            i14 = i13;
            if (DeltaProcessor.VERBOSE) {
            }
            return i14;
        }
        i13 = 0;
    }

    public int hashCode() {
        return this.project.hashCode();
    }

    public void requestIndexing() {
        boolean z10;
        try {
            IClasspathEntry[] resolvedClasspath = this.project.getResolvedClasspath();
            JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
            IndexManager indexManager = javaModelManager.indexManager;
            if (indexManager == null) {
                return;
            }
            DeltaProcessingState deltaProcessingState = javaModelManager.deltaState;
            int length = resolvedClasspath.length;
            IClasspathEntry[] iClasspathEntryArr = this.oldResolvedClasspath;
            int length2 = iClasspathEntryArr == null ? 0 : iClasspathEntryArr.length;
            for (int i10 = 0; i10 < length2; i10++) {
                if (classpathContains(resolvedClasspath, this.oldResolvedClasspath[i10]) == -1 && this.oldResolvedClasspath[i10].getEntryKind() != 2) {
                    IClasspathEntry iClasspathEntry = this.oldResolvedClasspath[i10];
                    IPath path = iClasspathEntry.getPath();
                    int entryKind = this.oldResolvedClasspath[i10].getEntryKind();
                    if (entryKind != 1) {
                        if (entryKind == 3) {
                            ClasspathEntry classpathEntry = (ClasspathEntry) iClasspathEntry;
                            indexManager.removeSourceFolderFromIndex(this.project, path, classpathEntry.fullInclusionPatternChars(), classpathEntry.fullExclusionPatternChars());
                        }
                    } else if (deltaProcessingState.otherRoots.get(path) == null) {
                        indexManager.discardJobs(path.toString());
                        indexManager.removeIndex(path);
                    }
                }
            }
            for (int i11 = 0; i11 < length; i11++) {
                if ((classpathContains(this.oldResolvedClasspath, resolvedClasspath[i11]) == -1 || resolvedClasspath[i11].getEntryKind() == 1) && resolvedClasspath[i11].getEntryKind() != 2) {
                    int entryKind2 = resolvedClasspath[i11].getEntryKind();
                    URL libraryIndexLocation = ((ClasspathEntry) resolvedClasspath[i11]).getLibraryIndexLocation();
                    if (entryKind2 == 1) {
                        IPath path2 = resolvedClasspath[i11].getPath();
                        int i12 = 0;
                        while (true) {
                            if (i12 >= length2) {
                                break;
                            }
                            IClasspathEntry iClasspathEntry2 = this.oldResolvedClasspath[i12];
                            if (iClasspathEntry2.getPath().equals(path2)) {
                                URL libraryIndexLocation2 = ((ClasspathEntry) iClasspathEntry2).getLibraryIndexLocation();
                                if (libraryIndexLocation2 == null && libraryIndexLocation == null) {
                                    z10 = false;
                                } else if (libraryIndexLocation2 != null && libraryIndexLocation != null) {
                                    z10 = !libraryIndexLocation.equals(libraryIndexLocation2);
                                } else if (libraryIndexLocation2 != null) {
                                    indexManager.removeIndex(path2);
                                }
                            } else {
                                i12++;
                            }
                        }
                        z10 = true;
                        if (z10) {
                            indexManager.indexLibrary(path2, this.project.getProject(), libraryIndexLocation);
                        }
                    } else if (entryKind2 == 3) {
                        IClasspathEntry iClasspathEntry3 = resolvedClasspath[i11];
                        IPath path3 = iClasspathEntry3.getPath();
                        ClasspathEntry classpathEntry2 = (ClasspathEntry) iClasspathEntry3;
                        indexManager.indexSourceFolder(this.project, path3, classpathEntry2.fullInclusionPatternChars(), classpathEntry2.fullExclusionPatternChars());
                    }
                }
            }
        } catch (JavaModelException unused) {
        }
    }

    public String toString() {
        return "ClasspathChange: " + this.project.getElementName();
    }
}
