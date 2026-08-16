package org.eclipse.jdt.internal.core.search;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IOrdinaryClassFile;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.util.HandleFactory;
import org.eclipse.jdt.internal.core.util.HashtableOfArrayToObject;
import org.eclipse.jdt.internal.core.util.Util;

public abstract class NameMatchRequestorWrapper {
    private long complianceValue;
    private HandleFactory handleFactory;
    private IPackageFragmentRoot lastPkgFragmentRoot;
    private String lastPkgFragmentRootPath;
    private Object lastProject;
    private HashtableOfArrayToObject packageHandles;
    protected IJavaSearchScope scope;

    public NameMatchRequestorWrapper(IJavaSearchScope iJavaSearchScope) {
        this.scope = iJavaSearchScope;
        if (iJavaSearchScope instanceof AbstractJavaSearchScope) {
            return;
        }
        this.handleFactory = new HandleFactory();
    }

    private IType createTypeFromJar(String str, int i10) throws JavaModelException {
        String[] strArr;
        String str2 = this.lastPkgFragmentRootPath;
        if (str2 == null || str2.length() > str.length() || !str.startsWith(this.lastPkgFragmentRootPath)) {
            String substring = str.substring(0, i10);
            IPackageFragmentRoot packageFragmentRoot = ((AbstractJavaSearchScope) this.scope).packageFragmentRoot(str, i10, substring);
            if (packageFragmentRoot == null) {
                return null;
            }
            this.lastPkgFragmentRootPath = substring;
            this.lastPkgFragmentRoot = packageFragmentRoot;
            this.packageHandles = new HashtableOfArrayToObject(5);
        }
        String substring2 = str.substring(i10 + 1);
        int indexOf = substring2.indexOf("|");
        String substring3 = indexOf == -1 ? null : substring2.substring(0, indexOf);
        if (substring3 != null) {
            substring2 = substring2.substring(indexOf + 1, substring2.length());
        }
        String[] segments = new Path(substring2).segments();
        int length = segments.length - 1;
        if (length > 0) {
            strArr = new String[length];
            System.arraycopy(segments, 0, strArr, 0, length);
        } else {
            strArr = CharOperation.NO_STRINGS;
        }
        IPackageFragment iPackageFragment = (IPackageFragment) this.packageHandles.get(strArr);
        if (iPackageFragment == null) {
            iPackageFragment = ((PackageFragmentRoot) this.lastPkgFragmentRoot).getPackageFragment(strArr, substring3);
            if (length == 5 && strArr[4].equals("enum")) {
                IJavaProject iJavaProject = (IJavaProject) iPackageFragment.getAncestor(2);
                if (!iJavaProject.equals(this.lastProject)) {
                    this.complianceValue = CompilerOptions.versionToJdkLevel(iJavaProject.getOption("org.eclipse.jdt.core.compiler.source", true));
                    this.lastProject = iJavaProject;
                }
                if (this.complianceValue >= ClassFileConstants.JDK1_5) {
                    return null;
                }
            }
            this.packageHandles.put(strArr, iPackageFragment);
        }
        return iPackageFragment.getOrdinaryClassFile(segments[length]).getType();
    }

    private IType createTypeFromPath(String str, String str2, char[][] cArr) throws JavaModelException {
        String[] strArr;
        int length;
        String str3 = this.lastPkgFragmentRootPath;
        if (str3 == null || !str.startsWith(str3) || (length = this.lastPkgFragmentRootPath.length()) <= 0 || str.charAt(length) != '/') {
            PackageFragmentRoot packageFragmentRoot = (PackageFragmentRoot) ((AbstractJavaSearchScope) this.scope).packageFragmentRoot(str, -1, null);
            if (packageFragmentRoot == null) {
                return null;
            }
            this.lastPkgFragmentRoot = packageFragmentRoot;
            this.lastPkgFragmentRootPath = packageFragmentRoot.internalPath().toString();
            this.packageHandles = new HashtableOfArrayToObject(5);
        }
        String[] segments = new Path(str.substring(this.lastPkgFragmentRootPath.length() + 1)).segments();
        int length2 = segments.length - 1;
        if (length2 > 0) {
            strArr = new String[length2];
            System.arraycopy(segments, 0, strArr, 0, length2);
        } else {
            strArr = CharOperation.NO_STRINGS;
        }
        IPackageFragment iPackageFragment = (IPackageFragment) this.packageHandles.get(strArr);
        if (iPackageFragment == null) {
            iPackageFragment = ((PackageFragmentRoot) this.lastPkgFragmentRoot).getPackageFragment(strArr);
            this.packageHandles.put(strArr, iPackageFragment);
        }
        String str4 = segments[length2];
        if (!Util.isJavaLikeFileName(str4)) {
            if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(str4)) {
                return iPackageFragment.getOrdinaryClassFile(str4).getType();
            }
            return null;
        }
        ICompilationUnit compilationUnit = iPackageFragment.getCompilationUnit(str4);
        int length3 = cArr == null ? 0 : cArr.length;
        IType type = length3 == 0 ? compilationUnit.getType(str2) : compilationUnit.getType(new String(cArr[0]));
        if (length3 <= 0) {
            return type;
        }
        for (int i10 = 1; i10 < length3; i10++) {
            type = type.getType(new String(cArr[i10]));
        }
        return type.getType(str2);
    }

    public IType getType(int i10, char[] cArr, char[] cArr2, char[][] cArr3, String str, AccessRestriction accessRestriction) {
        try {
            HandleFactory handleFactory = this.handleFactory;
            if (handleFactory == null) {
                int indexOf = str.indexOf("|");
                return indexOf == -1 ? createTypeFromPath(str, new String(cArr2), cArr3) : createTypeFromJar(str, indexOf);
            }
            IAdaptable createOpenable = handleFactory.createOpenable(str, this.scope);
            if (createOpenable == null) {
                return null;
            }
            if (!(createOpenable instanceof ICompilationUnit)) {
                if (createOpenable instanceof IOrdinaryClassFile) {
                    return ((IOrdinaryClassFile) createOpenable).getType();
                }
                return null;
            }
            ICompilationUnit iCompilationUnit = (ICompilationUnit) createOpenable;
            if (cArr3 == null || cArr3.length <= 0) {
                return iCompilationUnit.getType(new String(cArr2));
            }
            IType type = iCompilationUnit.getType(new String(cArr3[0]));
            int length = cArr3.length;
            for (int i11 = 1; i11 < length; i11++) {
                type = type.getType(new String(cArr3[i11]));
            }
            return type.getType(new String(cArr2));
        } catch (JavaModelException unused) {
            return null;
        }
    }
}
