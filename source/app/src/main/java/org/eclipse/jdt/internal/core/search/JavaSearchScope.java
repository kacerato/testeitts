package org.eclipse.jdt.internal.core.search;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.ExternalFoldersManager;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.PackageFragment;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.util.Util;

public class JavaSearchScope extends AbstractJavaSearchScope {
    public static final AccessRuleSet NOT_ENCLOSED = new AccessRuleSet(null, (byte) 0, null);
    private String[] containerPaths;
    private ArrayList elements;
    private IPath[] enclosingProjectsAndJars;
    private final boolean excludeTestCode;
    private boolean[] isPkgPath;
    protected AccessRuleSet[] pathRestrictions;
    private int pathsCount;
    private int[] projectIndexes;
    private ArrayList projectPaths;
    private String[] relativePaths;
    private int threshold;

    public JavaSearchScope(boolean z10) {
        this(5, z10);
    }

    private void addEnclosingProjectOrJar(IPath iPath) {
        int length = this.enclosingProjectsAndJars.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (this.enclosingProjectsAndJars[i10].equals(iPath)) {
                return;
            }
        }
        IPath[] iPathArr = this.enclosingProjectsAndJars;
        IPath[] iPathArr2 = new IPath[length + 1];
        this.enclosingProjectsAndJars = iPathArr2;
        System.arraycopy(iPathArr, 0, iPathArr2, 0, length);
        this.enclosingProjectsAndJars[length] = iPath;
    }

    private IPath getPath(IJavaElement iJavaElement, boolean z10) {
        switch (iJavaElement.getElementType()) {
            case 1:
                return Path.EMPTY;
            case 2:
                return iJavaElement.getPath();
            case 3:
                return z10 ? Path.EMPTY : iJavaElement.getPath();
            case 4:
                return getPath(iJavaElement.getParent(), z10).append(new Path(Util.concatWith(((PackageFragment) iJavaElement).names, '/')));
            case 5:
            case 6:
                return getPath(iJavaElement.getParent(), z10).append(new Path(iJavaElement.getElementName()));
            default:
                return getPath(iJavaElement.getParent(), z10);
        }
    }

    private int indexOf(String str) {
        int length = this.relativePaths.length;
        for (int i10 = 0; i10 < length; i10++) {
            String str2 = this.relativePaths[i10];
            if (str2 != null) {
                String str3 = this.containerPaths[i10];
                if (str2.length() != 0) {
                    str3 = String.valueOf(str3) + '/' + str2;
                }
                if (encloses(str3, str, i10)) {
                    return i10;
                }
            }
        }
        return -1;
    }

    private String normalize(String str) {
        int length = str.length() - 1;
        int i10 = length;
        while (i10 >= 0 && str.charAt(i10) == '/') {
            i10--;
        }
        return i10 != length ? str.substring(0, i10 + 1) : str;
    }

    private void rehash() {
        JavaSearchScope javaSearchScope = new JavaSearchScope(this.pathsCount * 2, this.excludeTestCode);
        javaSearchScope.projectPaths.ensureCapacity(this.projectPaths.size());
        int length = this.relativePaths.length;
        for (int i10 = 0; i10 < length; i10++) {
            String str = this.relativePaths[i10];
            if (str != null) {
                int i11 = this.projectIndexes[i10];
                String str2 = i11 == -1 ? null : (String) this.projectPaths.get(i11);
                String str3 = this.containerPaths[i10];
                boolean z10 = this.isPkgPath[i10];
                AccessRuleSet[] accessRuleSetArr = this.pathRestrictions;
                javaSearchScope.add(str2, str, str3, z10, accessRuleSetArr == null ? null : accessRuleSetArr[i10]);
            }
        }
        this.relativePaths = javaSearchScope.relativePaths;
        this.containerPaths = javaSearchScope.containerPaths;
        this.projectPaths = javaSearchScope.projectPaths;
        this.projectIndexes = javaSearchScope.projectIndexes;
        this.isPkgPath = javaSearchScope.isPkgPath;
        this.pathRestrictions = javaSearchScope.pathRestrictions;
        this.threshold = javaSearchScope.threshold;
    }

    public void add(JavaProject javaProject, int i10, HashSet hashSet) throws JavaModelException {
        add(javaProject, null, i10, hashSet, new HashSet(2), null);
    }

    @Override
    public boolean encloses(String str) {
        int indexOf = str.indexOf("|");
        return indexOf != -1 ? indexOf(str.substring(0, indexOf), str.substring(indexOf + 1)) >= 0 : indexOf(str) >= 0;
    }

    @Override
    public IPath[] enclosingProjectsAndJars() {
        return this.enclosingProjectsAndJars;
    }

    @Override
    public AccessRuleSet getAccessRuleSet(String str, String str2) {
        int indexOf = indexOf(str2, str);
        if (indexOf == -1) {
            return NOT_ENCLOSED;
        }
        AccessRuleSet[] accessRuleSetArr = this.pathRestrictions;
        if (accessRuleSetArr == null) {
            return null;
        }
        return accessRuleSetArr[indexOf];
    }

    public void initialize(int i10) {
        this.pathsCount = 0;
        this.threshold = i10;
        int i11 = (int) (i10 * 1.75f);
        if (i10 == i11) {
            i11++;
        }
        this.relativePaths = new String[i11];
        this.containerPaths = new String[i11];
        this.projectPaths = new ArrayList();
        this.projectIndexes = new int[i11];
        this.isPkgPath = new boolean[i11];
        this.pathRestrictions = null;
        this.enclosingProjectsAndJars = new IPath[0];
    }

    @Override
    public IPackageFragmentRoot packageFragmentRoot(String str, int i10, String str2) {
        boolean z10 = i10 != -1;
        int indexOf = z10 ? indexOf(str2, str.substring(i10 + 1)) : indexOf(str);
        if (indexOf >= 0) {
            int i11 = this.projectIndexes[indexOf];
            String str3 = i11 == -1 ? null : (String) this.projectPaths.get(i11);
            if (str3 != null) {
                IJavaProject create = JavaCore.create(ResourcesPlugin.getWorkspace().getRoot().getProject(str3));
                if (z10) {
                    IResource workspaceTarget = JavaModel.getWorkspaceTarget(new Path(str2));
                    return workspaceTarget != null ? create.getPackageFragmentRoot(workspaceTarget) : create.getPackageFragmentRoot(str2);
                }
                IProject workspaceTarget2 = JavaModel.getWorkspaceTarget(new Path(String.valueOf(this.containerPaths[indexOf]) + '/' + this.relativePaths[indexOf]));
                if (workspaceTarget2 != null) {
                    if (workspaceTarget2 instanceof IProject) {
                        return create.getPackageFragmentRoot((IResource) workspaceTarget2);
                    }
                    return (IPackageFragmentRoot) JavaModelManager.create((IResource) workspaceTarget2, create).getAncestor(3);
                }
            }
        }
        return null;
    }

    @Override
    public void processDelta(IJavaElementDelta iJavaElementDelta, int i10) {
        String obj;
        int kind = iJavaElementDelta.getKind();
        int i11 = 0;
        if (kind != 2) {
            if (kind != 4) {
                return;
            }
            IJavaElementDelta[] affectedChildren = iJavaElementDelta.getAffectedChildren();
            int length = affectedChildren.length;
            while (i11 < length) {
                processDelta(affectedChildren[i11], i10);
                i11++;
            }
            return;
        }
        IJavaElement element = iJavaElementDelta.getElement();
        if (encloses(element)) {
            ArrayList arrayList = this.elements;
            if (arrayList != null) {
                arrayList.remove(element);
            }
            int elementType = element.getElementType();
            if (elementType == 2) {
                obj = ((IJavaProject) element).getProject().getFullPath().toString();
            } else if (elementType != 3) {
                return;
            } else {
                obj = ((IPackageFragmentRoot) element).getPath().toString();
            }
            while (i11 < this.pathsCount) {
                if (this.relativePaths[i11].equals(obj)) {
                    this.relativePaths[i11] = null;
                    rehash();
                    return;
                }
                i11++;
            }
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("JavaSearchScope on ");
        int i10 = 0;
        if (this.elements != null) {
            stringBuffer.append("[");
            int size = this.elements.size();
            while (i10 < size) {
                JavaElement javaElement = (JavaElement) this.elements.get(i10);
                stringBuffer.append("\n\t");
                stringBuffer.append(javaElement.toStringWithAncestors());
                i10++;
            }
            stringBuffer.append("\n]");
        } else if (this.pathsCount == 0) {
            stringBuffer.append("[empty scope]");
        } else {
            stringBuffer.append("[");
            String[] strArr = new String[this.relativePaths.length];
            int i11 = 0;
            int i12 = 0;
            while (true) {
                String[] strArr2 = this.relativePaths;
                if (i11 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i11];
                if (str != null) {
                    String oSString = ExternalFoldersManager.isInternalPathForExternalFolder(new Path(this.containerPaths[i11])) ? JavaModel.getWorkspaceTarget(new Path(this.containerPaths[i11])).getLocation().toOSString() : this.containerPaths[i11];
                    if (str.length() > 0) {
                        strArr[i12] = String.valueOf(oSString) + '/' + str;
                        i12++;
                    } else {
                        strArr[i12] = oSString;
                        i12++;
                    }
                }
                i11++;
            }
            String[] strArr3 = new String[i12];
            System.arraycopy(strArr, 0, strArr3, 0, i12);
            Util.sort(strArr3);
            while (i10 < i12) {
                stringBuffer.append("\n\t");
                stringBuffer.append(strArr3[i10]);
                i10++;
            }
            stringBuffer.append("\n]");
        }
        return stringBuffer.toString();
    }

    private JavaSearchScope(int i10, boolean z10) {
        this.projectPaths = new ArrayList();
        this.excludeTestCode = z10;
        initialize(i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0141  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void add(JavaProject javaProject, IPath iPath, int i10, HashSet hashSet, HashSet hashSet2, IClasspathEntry iClasspathEntry) throws JavaModelException {
        int i11;
        boolean z10;
        IPath path;
        Object target;
        IProject project = javaProject.getProject();
        if (project.isAccessible() && hashSet2.add(project)) {
            IPath fullPath = project.getFullPath();
            String obj = fullPath.toString();
            addEnclosingProjectOrJar(fullPath);
            IClasspathEntry[] resolvedClasspath = javaProject.getResolvedClasspath();
            IJavaModel javaModel = javaProject.getJavaModel();
            JavaModelManager.PerProjectInfo perProjectInfo = javaProject.getPerProjectInfo();
            int length = resolvedClasspath.length;
            boolean z11 = false;
            int i12 = 0;
            while (i12 < length) {
                IClasspathEntry iClasspathEntry2 = resolvedClasspath[i12];
                if (!this.excludeTestCode || !iClasspathEntry2.isTest()) {
                    ClasspathEntry classpathEntry = (ClasspathEntry) iClasspathEntry2;
                    if (iClasspathEntry != null) {
                        if (iClasspathEntry2.isExported() || iClasspathEntry2.getEntryKind() == 3) {
                            classpathEntry = classpathEntry.combineWith((ClasspathEntry) iClasspathEntry);
                        }
                    }
                    ClasspathEntry classpathEntry2 = classpathEntry;
                    AccessRuleSet accessRuleSet = classpathEntry2.getAccessRuleSet();
                    int entryKind = iClasspathEntry2.getEntryKind();
                    if (entryKind != 1) {
                        if (entryKind == 2) {
                            i11 = i12;
                            if ((i10 & 8) != 0) {
                                IPath path2 = iClasspathEntry2.getPath();
                                if (iPath == null || iPath.equals(path2)) {
                                    JavaProject javaProject2 = (JavaProject) javaModel.getJavaProject(path2.lastSegment());
                                    if (!hashSet.contains(javaProject2)) {
                                        z10 = z11;
                                        add(javaProject2, null, i10, hashSet, hashSet2, classpathEntry2);
                                    }
                                }
                            }
                        } else if (entryKind == 3 && (i10 & 1) != 0) {
                            IPath path3 = iClasspathEntry2.getPath();
                            if (iPath == null || iPath.equals(path3)) {
                                i11 = i12;
                                add(fullPath.toString(), Util.relativePath(path3, 1), obj, false, accessRuleSet);
                            }
                        }
                        z10 = z11;
                    } else {
                        i11 = i12;
                        z10 = z11;
                        Map<IPath, IClasspathEntry> map = perProjectInfo.rootPathToRawEntries;
                        IClasspathEntry iClasspathEntry3 = map != null ? map.get(iClasspathEntry2.getPath()) : null;
                        if (iClasspathEntry3 != null) {
                            int entryKind2 = iClasspathEntry3.getEntryKind();
                            if (entryKind2 == 1 || entryKind2 == 4) {
                                if ((i10 & 2) != 0) {
                                    IPath path4 = iClasspathEntry2.getPath();
                                    if (iPath == null || iPath.equals(path4)) {
                                        Object target2 = JavaModel.getTarget(path4, z10);
                                        if (target2 instanceof IFolder) {
                                            path4 = ((IFolder) target2).getFullPath();
                                        }
                                        add(fullPath.toString(), "", path4.getDevice() == null ? path4.toString() : path4.toOSString(), false, accessRuleSet);
                                        addEnclosingProjectOrJar(iClasspathEntry2.getPath());
                                    }
                                }
                            } else if (entryKind2 == 5) {
                                IClasspathContainer classpathContainer = JavaCore.getClasspathContainer(iClasspathEntry3.getPath(), javaProject);
                                if (classpathContainer != null) {
                                    int kind = classpathContainer.getKind();
                                    if (kind != 1) {
                                        if (kind != 2) {
                                            if (kind != 3) {
                                            }
                                        }
                                        if ((i10 & 4) == 0) {
                                        }
                                        path = iClasspathEntry2.getPath();
                                        if (iPath != null || iPath.equals(path)) {
                                            target = JavaModel.getTarget(path, z10);
                                            if (target instanceof IFolder) {
                                                path = ((IFolder) target).getFullPath();
                                            }
                                            add(fullPath.toString(), "", path.getDevice() != null ? path.toString() : path.toOSString(), false, accessRuleSet);
                                            addEnclosingProjectOrJar(iClasspathEntry2.getPath());
                                        }
                                    } else {
                                        if ((i10 & 2) == 0) {
                                        }
                                        path = iClasspathEntry2.getPath();
                                        if (iPath != null) {
                                        }
                                        target = JavaModel.getTarget(path, z10);
                                        if (target instanceof IFolder) {
                                        }
                                        add(fullPath.toString(), "", path.getDevice() != null ? path.toString() : path.toOSString(), false, accessRuleSet);
                                        addEnclosingProjectOrJar(iClasspathEntry2.getPath());
                                    }
                                }
                            }
                            i12 = i11 + 1;
                            z11 = z10;
                        }
                    }
                    i12 = i11 + 1;
                    z11 = z10;
                }
                i11 = i12;
                z10 = z11;
                i12 = i11 + 1;
                z11 = z10;
            }
        }
    }

    private boolean encloses(String str, String str2, int i10) {
        String normalize = normalize(str2);
        int length = normalize.length();
        int length2 = str.length();
        if (length < length2) {
            return false;
        }
        if (length2 == 0) {
            return true;
        }
        if (length == length2) {
            return normalize.equals(str);
        }
        return !this.isPkgPath[i10] ? normalize.startsWith(str) && normalize.charAt(length2) == '/' : normalize.startsWith(str) && (str.length() == normalize.lastIndexOf(47) || str.length() == normalize.length());
    }

    private int indexOf(String str, String str2) {
        int length = this.containerPaths.length;
        int hashCode = (str.hashCode() & Integer.MAX_VALUE) % length;
        while (true) {
            String str3 = this.containerPaths[hashCode];
            if (str3 == null) {
                return -1;
            }
            if (str3.equals(str) && encloses(this.relativePaths[hashCode], str2, hashCode)) {
                return hashCode;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    @Override
    public boolean encloses(IJavaElement iJavaElement) {
        ArrayList arrayList = this.elements;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                IJavaElement iJavaElement2 = (IJavaElement) this.elements.get(i10);
                for (IJavaElement iJavaElement3 = iJavaElement; iJavaElement3 != null; iJavaElement3 = iJavaElement3.getParent()) {
                    if (iJavaElement3.equals(iJavaElement2)) {
                        return true;
                    }
                }
            }
            return false;
        }
        IPackageFragmentRoot iPackageFragmentRoot = (IPackageFragmentRoot) iJavaElement.getAncestor(3);
        if (iPackageFragmentRoot == null || !iPackageFragmentRoot.isArchive()) {
            return indexOf(getPath(iJavaElement, false).toString()) >= 0;
        }
        IPath path = iPackageFragmentRoot.getPath();
        return indexOf(path.getDevice() == null ? path.toString() : path.toOSString(), getPath(iJavaElement, true).toString()) >= 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void add(IJavaElement iJavaElement) throws JavaModelException {
        PackageFragmentRoot packageFragmentRoot;
        IPath fullPath;
        IPath internalPath;
        String obj;
        int elementType = iJavaElement.getElementType();
        if (elementType != 1) {
            if (elementType != 2) {
                if (elementType == 3) {
                    packageFragmentRoot = (PackageFragmentRoot) iJavaElement;
                    IPath internalPath2 = packageFragmentRoot.internalPath();
                    if (packageFragmentRoot.getKind() == 1) {
                        internalPath2 = packageFragmentRoot.getParent().getPath();
                    }
                    String obj2 = internalPath2.getDevice() == null ? internalPath2.toString() : internalPath2.toOSString();
                    IResource resource = packageFragmentRoot.resource();
                    String obj3 = packageFragmentRoot.getJavaProject().getPath().toString();
                    if (resource != null && resource.isAccessible()) {
                        add(obj3, Util.relativePath(resource.getFullPath(), internalPath2.segmentCount()), obj2, false, null);
                    } else {
                        add(obj3, "", obj2, false, null);
                    }
                } else if (elementType != 4) {
                    if (iJavaElement instanceof IMember) {
                        if (this.elements == null) {
                            this.elements = new ArrayList();
                        }
                        this.elements.add(iJavaElement);
                    }
                    packageFragmentRoot = (PackageFragmentRoot) iJavaElement.getAncestor(3);
                    String obj4 = packageFragmentRoot.getJavaProject().getPath().toString();
                    if (packageFragmentRoot.getKind() == 1) {
                        internalPath = packageFragmentRoot.getParent().getPath();
                        obj = Util.relativePath(getPath(iJavaElement, false), 1);
                    } else {
                        internalPath = packageFragmentRoot.internalPath();
                        obj = getPath(iJavaElement, true).toString();
                    }
                    add(obj4, obj, internalPath.getDevice() == null ? internalPath.toString() : internalPath.toOSString(), false, null);
                } else {
                    packageFragmentRoot = (PackageFragmentRoot) iJavaElement.getParent();
                    String obj5 = packageFragmentRoot.getJavaProject().getPath().toString();
                    if (packageFragmentRoot.isArchive()) {
                        String concatWith = Util.concatWith(((PackageFragment) iJavaElement).names, '/');
                        IPath path = packageFragmentRoot.getPath();
                        add(obj5, concatWith, path.getDevice() == null ? path.toString() : path.toOSString(), true, null);
                    } else {
                        IResource resource2 = ((JavaElement) iJavaElement).resource();
                        if (resource2 != null) {
                            if (resource2.isAccessible()) {
                                fullPath = packageFragmentRoot.getKind() == 1 ? packageFragmentRoot.getParent().getPath() : packageFragmentRoot.internalPath();
                            } else {
                                fullPath = resource2.getParent().getFullPath();
                            }
                            add(obj5, Util.relativePath(resource2.getFullPath(), fullPath.segmentCount()), fullPath.getDevice() == null ? fullPath.toString() : fullPath.toOSString(), true, null);
                        }
                    }
                }
                if (packageFragmentRoot == null) {
                    addEnclosingProjectOrJar(packageFragmentRoot.getKind() == 1 ? packageFragmentRoot.getParent().getPath() : packageFragmentRoot.getPath());
                    return;
                }
                return;
            }
            add((JavaProject) iJavaElement, null, 7, new HashSet(2), new HashSet(2), null);
        }
        packageFragmentRoot = null;
        if (packageFragmentRoot == null) {
        }
    }

    private void add(String str, String str2, String str3, boolean z10, AccessRuleSet accessRuleSet) {
        String str4;
        String normalize = normalize(str3);
        String normalize2 = normalize(str2);
        int length = this.containerPaths.length;
        int hashCode = (normalize.hashCode() & Integer.MAX_VALUE) % length;
        while (true) {
            String str5 = this.relativePaths[hashCode];
            if (str5 == null || (str4 = this.containerPaths[hashCode]) == null) {
                break;
            }
            if (str5.equals(normalize2) && str4.equals(normalize)) {
                return;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
        int indexOf = this.projectPaths.indexOf(str);
        if (indexOf == -1) {
            this.projectPaths.add(str);
            indexOf = this.projectPaths.indexOf(str);
        }
        this.projectIndexes[hashCode] = indexOf;
        String[] strArr = this.relativePaths;
        strArr[hashCode] = normalize2;
        this.containerPaths[hashCode] = normalize;
        this.isPkgPath[hashCode] = z10;
        AccessRuleSet[] accessRuleSetArr = this.pathRestrictions;
        if (accessRuleSetArr != null) {
            accessRuleSetArr[hashCode] = accessRuleSet;
        } else if (accessRuleSet != null) {
            AccessRuleSet[] accessRuleSetArr2 = new AccessRuleSet[strArr.length];
            this.pathRestrictions = accessRuleSetArr2;
            accessRuleSetArr2[hashCode] = accessRuleSet;
        }
        int i10 = this.pathsCount + 1;
        this.pathsCount = i10;
        if (i10 > this.threshold) {
            rehash();
        }
    }
}
