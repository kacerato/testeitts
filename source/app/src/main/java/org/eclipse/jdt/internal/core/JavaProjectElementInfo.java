package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.DeltaProcessor;
import org.eclipse.jdt.internal.core.util.HashSetOfArray;
import org.eclipse.jdt.internal.core.util.HashtableOfArrayToObject;
import org.eclipse.jdt.internal.core.util.Util;

public class JavaProjectElementInfo extends OpenableElementInfo {
    static final IPackageFragmentRoot[] NO_ROOTS = new IPackageFragmentRoot[0];
    ProjectCache mainProjectCache;
    ProjectCache projectCache;

    public static class ProjectCache {
        public IPackageFragmentRoot[] allPkgFragmentRootsCache;
        public HashtableOfArrayToObject allPkgFragmentsCache;
        public Map pkgFragmentsCaches;
        public Map rootToResolvedEntries;

        public ProjectCache(IPackageFragmentRoot[] iPackageFragmentRootArr, Map map, Map map2) {
            this.allPkgFragmentRootsCache = iPackageFragmentRootArr;
            this.rootToResolvedEntries = map;
            this.pkgFragmentsCaches = map2;
        }
    }

    public JavaProjectElementInfo() {
        this.nonJavaResources = null;
    }

    public static void addSuperPackageNames(String[] strArr, HashtableOfArrayToObject hashtableOfArrayToObject) {
        for (int length = strArr.length - 1; length > 0; length--) {
            if (hashtableOfArrayToObject.getKey(strArr, length) == null) {
                String[] strArr2 = new String[length];
                System.arraycopy(strArr, 0, strArr2, 0, length);
                hashtableOfArrayToObject.put(strArr2, NO_ROOTS);
                strArr = strArr2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0052 A[Catch: CoreException -> 0x010c, TryCatch #0 {CoreException -> 0x010c, blocks: (B:11:0x0045, B:13:0x0052, B:63:0x0101, B:65:0x0104, B:15:0x0068, B:21:0x00f5, B:22:0x007c, B:24:0x0082, B:26:0x0088, B:29:0x0094, B:32:0x009f, B:34:0x00a2, B:35:0x00ab, B:37:0x00b3, B:39:0x00bd, B:44:0x00ce, B:46:0x00d4, B:51:0x00dd, B:55:0x00e4, B:57:0x00e7, B:58:0x00f0), top: B:10:0x0045 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0104 A[Catch: CoreException -> 0x010c, TRY_LEAVE, TryCatch #0 {CoreException -> 0x010c, blocks: (B:11:0x0045, B:13:0x0052, B:63:0x0101, B:65:0x0104, B:15:0x0068, B:21:0x00f5, B:22:0x007c, B:24:0x0082, B:26:0x0088, B:29:0x0094, B:32:0x009f, B:34:0x00a2, B:35:0x00ab, B:37:0x00b3, B:39:0x00bd, B:44:0x00ce, B:46:0x00d4, B:51:0x00dd, B:55:0x00e4, B:57:0x00e7, B:58:0x00f0), top: B:10:0x0045 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0100  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Object[] computeNonJavaResources(JavaProject javaProject) {
        IPath iPath;
        char[][] cArr;
        boolean z10;
        char[][] cArr2;
        boolean z11;
        boolean z12;
        IResource[] iResourceArr;
        int length;
        int i10;
        boolean z13;
        IPath iPath2;
        IPath iPath3;
        IPath fullPath = javaProject.getProject().getFullPath();
        IPath iPath4 = null;
        try {
            IClasspathEntry classpathEntryFor = javaProject.getClasspathEntryFor(fullPath);
            if (classpathEntryFor != null) {
                try {
                    char[][] fullInclusionPatternChars = ((ClasspathEntry) classpathEntryFor).fullInclusionPatternChars();
                    try {
                        cArr = ((ClasspathEntry) classpathEntryFor).fullExclusionPatternChars();
                        z10 = true;
                        iPath3 = fullInclusionPatternChars;
                    } catch (JavaModelException unused) {
                        iPath = null;
                        cArr = null;
                        z10 = true;
                        iPath2 = fullInclusionPatternChars;
                        iPath4 = iPath2;
                        cArr2 = iPath4;
                        z11 = false;
                        iPath4 = iPath;
                        z12 = false;
                        iResourceArr = new IResource[5];
                        IResource[] members = javaProject.getResource().members();
                        length = members.length;
                        if (length <= 0) {
                        }
                        if (iResourceArr.length != i10) {
                        }
                    }
                } catch (JavaModelException unused2) {
                    iPath = null;
                    cArr = null;
                    z10 = true;
                    cArr2 = iPath4;
                    z11 = false;
                    iPath4 = iPath;
                    z12 = false;
                    iResourceArr = new IResource[5];
                    IResource[] members2 = javaProject.getResource().members();
                    length = members2.length;
                    if (length <= 0) {
                    }
                    if (iResourceArr.length != i10) {
                    }
                }
            } else {
                cArr = null;
                iPath3 = null;
                z10 = false;
            }
            try {
                iPath4 = javaProject.getOutputLocation();
                z12 = fullPath.equals(iPath4);
                z11 = true;
                cArr2 = iPath3;
            } catch (JavaModelException unused3) {
                iPath = iPath4;
                iPath2 = iPath3;
                iPath4 = iPath2;
                cArr2 = iPath4;
                z11 = false;
                iPath4 = iPath;
                z12 = false;
                iResourceArr = new IResource[5];
                IResource[] members22 = javaProject.getResource().members();
                length = members22.length;
                if (length <= 0) {
                }
                if (iResourceArr.length != i10) {
                }
            }
        } catch (JavaModelException unused4) {
            iPath = null;
            cArr = null;
            z10 = false;
        }
        iResourceArr = new IResource[5];
        try {
            IResource[] members222 = javaProject.getResource().members();
            length = members222.length;
            if (length <= 0) {
                String option = javaProject.getOption("org.eclipse.jdt.core.compiler.source", true);
                String option2 = javaProject.getOption("org.eclipse.jdt.core.compiler.compliance", true);
                IClasspathEntry[] resolvedClasspath = javaProject.getResolvedClasspath();
                i10 = 0;
                int i11 = 0;
                while (i11 < length) {
                    IResource iResource = members222[i11];
                    IResource[] iResourceArr2 = members222;
                    int type = iResource.getType();
                    int i12 = length;
                    if (type != 1) {
                        if (type == 2) {
                            IPath fullPath2 = iResource.getFullPath();
                            if ((!z10 || Util.isExcluded(iResource, cArr2, cArr) || !Util.isValidFolderNameForPackage(iResource.getName(), option, option2)) && (!z11 || !isClasspathEntryOrOutputLocation(fullPath2, iResource.getLocation(), resolvedClasspath, iPath4))) {
                                if (iResourceArr.length == i10) {
                                    IResource[] iResourceArr3 = new IResource[i10 * 2];
                                    System.arraycopy(iResourceArr, 0, iResourceArr3, 0, i10);
                                    iResourceArr = iResourceArr3;
                                }
                                iResourceArr[i10] = iResource;
                                z13 = z11;
                                i10++;
                            }
                        }
                        z13 = z11;
                    } else {
                        IPath fullPath3 = iResource.getFullPath();
                        String name = iResource.getName();
                        if (z11) {
                            z13 = z11;
                            if (isClasspathEntryOrOutputLocation(fullPath3, iResource.getLocation(), resolvedClasspath, iPath4)) {
                            }
                        } else {
                            z13 = z11;
                        }
                        if ((!z10 || !Util.isValidCompilationUnitName(name, option, option2) || Util.isExcluded(iResource, cArr2, cArr)) && (!z12 || !Util.isValidClassFileName(name, option, option2))) {
                            if (iResourceArr.length == i10) {
                                IResource[] iResourceArr4 = new IResource[i10 * 2];
                                System.arraycopy(iResourceArr, 0, iResourceArr4, 0, i10);
                                iResourceArr = iResourceArr4;
                            }
                            iResourceArr[i10] = iResource;
                            i10++;
                        }
                    }
                    i11++;
                    members222 = iResourceArr2;
                    length = i12;
                    z11 = z13;
                }
            } else {
                i10 = 0;
            }
            if (iResourceArr.length != i10) {
                return iResourceArr;
            }
            IResource[] iResourceArr5 = new IResource[i10];
            System.arraycopy(iResourceArr, 0, iResourceArr5, 0, i10);
            return iResourceArr5;
        } catch (CoreException unused5) {
            return JavaElementInfo.NO_NON_JAVA_RESOURCES;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void initializePackageNames(IPackageFragmentRoot iPackageFragmentRoot, HashSetOfArray hashSetOfArray) {
        IJavaElement[] children;
        try {
            if (iPackageFragmentRoot.isOpen()) {
                children = iPackageFragmentRoot.getChildren();
            } else {
                OpenableElementInfo jarPackageFragmentRootInfo = iPackageFragmentRoot.isArchive() ? new JarPackageFragmentRootInfo() : new PackageFragmentRootInfo();
                ((PackageFragmentRoot) iPackageFragmentRoot).computeChildren(jarPackageFragmentRootInfo, ((JavaElement) iPackageFragmentRoot).resource());
                children = jarPackageFragmentRootInfo.children;
            }
            for (IJavaElement iJavaElement : children) {
                if (iJavaElement instanceof PackageFragment) {
                    hashSetOfArray.add(((PackageFragment) iJavaElement).names);
                }
            }
        } catch (JavaModelException unused) {
        }
    }

    private boolean isClasspathEntryOrOutputLocation(IPath iPath, IPath iPath2, IClasspathEntry[] iClasspathEntryArr, IPath iPath3) {
        if (iPath3.equals(iPath)) {
            return true;
        }
        for (IClasspathEntry iClasspathEntry : iClasspathEntryArr) {
            IPath path = iClasspathEntry.getPath();
            if (path.equals(iPath) || path.equals(iPath2)) {
                return true;
            }
            IPath outputLocation = iClasspathEntry.getOutputLocation();
            if (outputLocation != null && outputLocation.equals(iPath)) {
                return true;
            }
        }
        return false;
    }

    public Object[] getNonJavaResources(JavaProject javaProject) {
        Object[] objArr = this.nonJavaResources;
        if (objArr != null) {
            return objArr;
        }
        Object[] computeNonJavaResources = computeNonJavaResources(javaProject);
        this.nonJavaResources = computeNonJavaResources;
        return computeNonJavaResources;
    }

    public ProjectCache getProjectCache(JavaProject javaProject, boolean z10) {
        IPackageFragmentRoot[] iPackageFragmentRootArr;
        ProjectCache projectCache = z10 ? this.mainProjectCache : this.projectCache;
        if (projectCache != null) {
            IPackageFragmentRoot[] iPackageFragmentRootArr2 = projectCache.allPkgFragmentRootsCache;
            int length = iPackageFragmentRootArr2.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                }
                IJavaProject javaProject2 = iPackageFragmentRootArr2[i10].getJavaProject();
                if (javaProject2 != this && !javaProject2.exists()) {
                    projectCache = null;
                    break;
                }
                i10++;
            }
        }
        if (projectCache == null) {
            HashMap hashMap = new HashMap(3);
            try {
                iPackageFragmentRootArr = javaProject.getAllPackageFragmentRoots(hashMap, z10);
            } catch (JavaModelException unused) {
                iPackageFragmentRootArr = new IPackageFragmentRoot[0];
                hashMap.clear();
            }
            IPackageFragmentRoot[] iPackageFragmentRootArr3 = iPackageFragmentRootArr;
            Map<IPath, DeltaProcessor.RootInfo> map = JavaModelManager.getJavaModelManager().deltaState.roots;
            HashMap hashMap2 = new HashMap();
            int length2 = iPackageFragmentRootArr3.length;
            JavaModelManager javaModelManager = JavaModelManager.getJavaModelManager();
            for (int i11 = 0; i11 < length2; i11++) {
                IPackageFragmentRoot iPackageFragmentRoot = iPackageFragmentRootArr3[i11];
                DeltaProcessor.RootInfo rootInfo = map.get(iPackageFragmentRoot.getPath());
                if (rootInfo == null || rootInfo.project.equals(javaProject)) {
                    IPackageFragmentRoot iPackageFragmentRoot2 = (IPackageFragmentRoot) javaModelManager.getExistingElement(iPackageFragmentRoot);
                    iPackageFragmentRootArr3[i11] = iPackageFragmentRoot2;
                    HashSetOfArray hashSetOfArray = new HashSetOfArray();
                    initializePackageNames(iPackageFragmentRoot2, hashSetOfArray);
                    hashMap2.put(iPackageFragmentRoot2, hashSetOfArray);
                }
            }
            projectCache = new ProjectCache(iPackageFragmentRootArr3, hashMap, hashMap2);
            if (z10) {
                this.mainProjectCache = projectCache;
            } else {
                this.projectCache = projectCache;
            }
        }
        return projectCache;
    }

    public NameLookup newNameLookup(JavaProject javaProject, ICompilationUnit[] iCompilationUnitArr, boolean z10) {
        HashSetOfArray hashSetOfArray;
        JavaProjectElementInfo javaProjectElementInfo = this;
        boolean z11 = z10;
        ProjectCache projectCache = javaProjectElementInfo.getProjectCache(javaProject, z11);
        if (projectCache.allPkgFragmentsCache == null) {
            Map<IPath, DeltaProcessor.RootInfo> map = JavaModelManager.getJavaModelManager().deltaState.roots;
            IPackageFragmentRoot[] iPackageFragmentRootArr = projectCache.allPkgFragmentRootsCache;
            int length = iPackageFragmentRootArr.length;
            HashtableOfArrayToObject hashtableOfArrayToObject = new HashtableOfArrayToObject();
            int i10 = 0;
            while (i10 < length) {
                IPackageFragmentRoot iPackageFragmentRoot = iPackageFragmentRootArr[i10];
                DeltaProcessor.RootInfo rootInfo = map.get(iPackageFragmentRoot.getPath());
                JavaProject javaProject2 = rootInfo == null ? javaProject : rootInfo.project;
                if (javaProject2.equals(javaProject)) {
                    hashSetOfArray = (HashSetOfArray) projectCache.pkgFragmentsCaches.get(iPackageFragmentRoot);
                } else {
                    try {
                        hashSetOfArray = (HashSetOfArray) javaProject2.getProjectCache(z11).pkgFragmentsCaches.get(iPackageFragmentRoot);
                    } catch (JavaModelException unused) {
                    }
                }
                if (hashSetOfArray == null) {
                    hashSetOfArray = new HashSetOfArray();
                    javaProjectElementInfo.initializePackageNames(iPackageFragmentRoot, hashSetOfArray);
                }
                for (Object[] objArr : hashSetOfArray.set) {
                    String[] strArr = (String[]) objArr;
                    if (strArr != null) {
                        Object obj = hashtableOfArrayToObject.get(strArr);
                        if (obj == null || obj == NO_ROOTS) {
                            hashtableOfArrayToObject.put(strArr, iPackageFragmentRoot);
                            addSuperPackageNames(strArr, hashtableOfArrayToObject);
                        } else if (obj instanceof PackageFragmentRoot) {
                            hashtableOfArrayToObject.put(strArr, new IPackageFragmentRoot[]{(PackageFragmentRoot) obj, iPackageFragmentRoot});
                        } else {
                            IPackageFragmentRoot[] iPackageFragmentRootArr2 = (IPackageFragmentRoot[]) obj;
                            int length2 = iPackageFragmentRootArr2.length;
                            IPackageFragmentRoot[] iPackageFragmentRootArr3 = new IPackageFragmentRoot[length2 + 1];
                            System.arraycopy(iPackageFragmentRootArr2, 0, iPackageFragmentRootArr3, 0, length2);
                            iPackageFragmentRootArr3[length2] = iPackageFragmentRoot;
                            hashtableOfArrayToObject.put(strArr, iPackageFragmentRootArr3);
                        }
                    }
                }
                i10++;
                javaProjectElementInfo = this;
                z11 = z10;
            }
            projectCache.allPkgFragmentsCache = hashtableOfArrayToObject;
        }
        return new NameLookup(javaProject, projectCache.allPkgFragmentRootsCache, projectCache.allPkgFragmentsCache, iCompilationUnitArr, projectCache.rootToResolvedEntries);
    }

    public void resetCaches() {
        this.projectCache = null;
        this.mainProjectCache = null;
    }
}
