package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJarEntryResource;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.util.Util;

public class PackageFragmentRootInfo extends OpenableElementInfo {
    private boolean ignoreOptionalProblems;
    private boolean initialized;
    protected SourceMapper sourceMapper = null;
    protected int rootKind = 1;

    public PackageFragmentRootInfo() {
        this.nonJavaResources = null;
        this.initialized = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0083 A[Catch: CoreException -> 0x005b, TryCatch #0 {CoreException -> 0x005b, blocks: (B:3:0x0007, B:5:0x000f, B:43:0x0094, B:45:0x009e, B:47:0x00a3, B:51:0x00b0, B:53:0x00b3, B:7:0x0034, B:12:0x0080, B:14:0x0083, B:15:0x008b, B:17:0x0090, B:18:0x0040, B:20:0x004a, B:22:0x0050, B:27:0x005d, B:29:0x0067, B:33:0x006e, B:37:0x0075), top: B:2:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Object[] computeFolderNonJavaResources(IPackageFragmentRoot iPackageFragmentRoot, IContainer iContainer, char[][] cArr, char[][] cArr2) throws JavaModelException {
        int i10;
        int i11;
        IResource[] iResourceArr = new IResource[5];
        try {
            IResource[] members = iContainer.members();
            if (members.length > 0) {
                IJavaProject create = JavaCore.create(iContainer.getProject());
                String option = create.getOption("org.eclipse.jdt.core.compiler.source", true);
                String option2 = create.getOption("org.eclipse.jdt.core.compiler.compliance", true);
                IClasspathEntry[] resolvedClasspath = ((JavaProject) iPackageFragmentRoot.getJavaProject()).getResolvedClasspath();
                i10 = 0;
                for (IResource iResource : members) {
                    int type = iResource.getType();
                    if (type != 1) {
                        if (type == 2) {
                            if (Util.isValidFolderNameForPackage(iResource.getName(), option, option2)) {
                                if (Util.isExcluded(iResource, cArr, cArr2)) {
                                    if (isClasspathEntry(iResource.getFullPath(), resolvedClasspath)) {
                                    }
                                }
                            }
                        }
                        if (iResourceArr.length == i10) {
                            IResource[] iResourceArr2 = new IResource[i10 * 2];
                            System.arraycopy(iResourceArr, 0, iResourceArr2, 0, i10);
                            iResourceArr = iResourceArr2;
                        }
                        iResourceArr[i10] = iResource;
                        i10++;
                    } else {
                        String name = iResource.getName();
                        if (Util.isValidCompilationUnitName(name, option, option2)) {
                            i11 = Util.isExcluded(iResource, cArr, cArr2) ? 0 : i11 + 1;
                        }
                        if (!Util.isValidClassFileName(name, option, option2)) {
                            if (isClasspathEntry(iResource.getFullPath(), resolvedClasspath)) {
                            }
                            if (iResourceArr.length == i10) {
                            }
                            iResourceArr[i10] = iResource;
                            i10++;
                        }
                    }
                }
            } else {
                i10 = 0;
            }
            if (ExternalFoldersManager.isInternalPathForExternalFolder(iContainer.getFullPath())) {
                IJarEntryResource[] iJarEntryResourceArr = new IJarEntryResource[i10];
                for (int i12 = 0; i12 < i10; i12++) {
                    iJarEntryResourceArr[i12] = new NonJavaResource(iPackageFragmentRoot, iResourceArr[i12]);
                }
                return iJarEntryResourceArr;
            }
            if (iResourceArr.length == i10) {
                return iResourceArr;
            }
            IResource[] iResourceArr3 = new IResource[i10];
            System.arraycopy(iResourceArr, 0, iResourceArr3, 0, i10);
            return iResourceArr3;
        } catch (CoreException e10) {
            throw new JavaModelException(e10);
        }
    }

    private Object[] computeNonJavaResources(IResource iResource, PackageFragmentRoot packageFragmentRoot) {
        Object[] objArr = JavaElementInfo.NO_NON_JAVA_RESOURCES;
        try {
            return (iResource.getType() == 2 || iResource.getType() == 4) ? computeFolderNonJavaResources(packageFragmentRoot, (IContainer) iResource, packageFragmentRoot.fullInclusionPatternChars(), packageFragmentRoot.fullExclusionPatternChars()) : objArr;
        } catch (JavaModelException unused) {
            return objArr;
        }
    }

    private static boolean isClasspathEntry(IPath iPath, IClasspathEntry[] iClasspathEntryArr) {
        for (IClasspathEntry iClasspathEntry : iClasspathEntryArr) {
            if (iClasspathEntry.getPath().equals(iPath)) {
                return true;
            }
        }
        return false;
    }

    public synchronized Object[] getNonJavaResources(IJavaProject iJavaProject, IResource iResource, PackageFragmentRoot packageFragmentRoot) {
        Object[] objArr;
        objArr = this.nonJavaResources;
        if (objArr == null) {
            objArr = computeNonJavaResources(iResource, packageFragmentRoot);
            this.nonJavaResources = objArr;
        }
        return objArr;
    }

    public int getRootKind() {
        return this.rootKind;
    }

    public SourceMapper getSourceMapper() {
        return this.sourceMapper;
    }

    public boolean ignoreOptionalProblems(PackageFragmentRoot packageFragmentRoot) throws JavaModelException {
        if (!this.initialized) {
            this.ignoreOptionalProblems = ((ClasspathEntry) packageFragmentRoot.getRawClasspathEntry()).ignoreOptionalProblems();
            this.initialized = true;
        }
        return this.ignoreOptionalProblems;
    }

    public void setRootKind(int i10) {
        this.rootKind = i10;
    }

    public void setSourceMapper(SourceMapper sourceMapper) {
        this.sourceMapper = sourceMapper;
    }
}
