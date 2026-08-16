package org.eclipse.jdt.internal.core.util;

import java.util.HashMap;
import java.util.HashSet;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObjectToInt;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.LambdaFactory;
import org.eclipse.jdt.internal.core.Openable;
import org.eclipse.jdt.internal.core.PackageFragmentRoot;
import org.eclipse.jdt.internal.core.SourceRefElement;
import org.eclipse.jdt.internal.core.SourceType;
import org.eclipse.jdt.internal.core.search.AbstractJavaSearchScope;

public class HandleFactory {
    private PackageFragmentRoot lastPkgFragmentRoot;
    private String lastPkgFragmentRootPath;
    private HashtableOfArrayToObject packageHandles;
    private HashtableOfObjectToInt localOccurrenceCounts = new HashtableOfObjectToInt(5);
    private JavaModel javaModel = JavaModelManager.getJavaModelManager().getJavaModel();

    private PackageFragmentRoot getJarPkgFragmentRoot(String str, int i10, String str2, IJavaSearchScope iJavaSearchScope) {
        IPath path = new Path(str2);
        Object target = JavaModel.getTarget(path, false);
        if (target instanceof IFile) {
            IResource iResource = (IFile) target;
            JavaProject javaProject = (JavaProject) this.javaModel.getJavaProject(iResource);
            try {
                if (javaProject.getClasspathEntryFor(path) != null) {
                    return (PackageFragmentRoot) javaProject.getPackageFragmentRoot(iResource);
                }
            } catch (JavaModelException unused) {
            }
        }
        if (iJavaSearchScope != null) {
            if (iJavaSearchScope instanceof AbstractJavaSearchScope) {
                PackageFragmentRoot packageFragmentRoot = (PackageFragmentRoot) ((AbstractJavaSearchScope) iJavaSearchScope).packageFragmentRoot(str, i10, str2);
                if (packageFragmentRoot != null) {
                    return packageFragmentRoot;
                }
            } else {
                IPath[] enclosingProjectsAndJars = iJavaSearchScope.enclosingProjectsAndJars();
                int length = enclosingProjectsAndJars.length;
                IJavaProject[] iJavaProjectArr = new IJavaProject[length];
                int i11 = 0;
                for (IPath iPath : enclosingProjectsAndJars) {
                    if (iPath.segmentCount() == 1) {
                        iJavaProjectArr[i11] = this.javaModel.getJavaProject(iPath.segment(0));
                        i11++;
                    }
                }
                if (i11 < length) {
                    IJavaProject[] iJavaProjectArr2 = new IJavaProject[i11];
                    System.arraycopy(iJavaProjectArr, 0, iJavaProjectArr2, 0, i11);
                    iJavaProjectArr = iJavaProjectArr2;
                }
                PackageFragmentRoot jarPkgFragmentRoot = getJarPkgFragmentRoot(path, target, iJavaProjectArr);
                if (jarPkgFragmentRoot != null) {
                    return jarPkgFragmentRoot;
                }
            }
        }
        try {
            return getJarPkgFragmentRoot(path, target, this.javaModel.getJavaProjects());
        } catch (JavaModelException unused2) {
            return null;
        }
    }

    private PackageFragmentRoot getPkgFragmentRoot(String str) {
        Path path = new Path(str);
        for (IResource iResource : ResourcesPlugin.getWorkspace().getRoot().getProjects()) {
            try {
                if (iResource.isAccessible() && iResource.hasNature(JavaCore.NATURE_ID)) {
                    for (IPackageFragmentRoot iPackageFragmentRoot : this.javaModel.getJavaProject(iResource).getPackageFragmentRoots()) {
                        PackageFragmentRoot packageFragmentRoot = (PackageFragmentRoot) iPackageFragmentRoot;
                        if (packageFragmentRoot.internalPath().isPrefixOf(path) && !Util.isExcluded(path, packageFragmentRoot.fullInclusionPatternChars(), packageFragmentRoot.fullExclusionPatternChars(), false)) {
                            return packageFragmentRoot;
                        }
                    }
                }
            } catch (CoreException unused) {
            }
        }
        return null;
    }

    public IJavaElement createElement(ClassScope classScope, ICompilationUnit iCompilationUnit, HashSet hashSet, HashMap hashMap) {
        return createElement(classScope, classScope.referenceContext.sourceStart, iCompilationUnit, hashSet, hashMap);
    }

    public IJavaElement createLambdaTypeElement(LambdaExpression lambdaExpression, ICompilationUnit iCompilationUnit, HashSet hashSet, HashMap hashMap) {
        return createElement(lambdaExpression.scope, lambdaExpression.sourceStart(), iCompilationUnit, hashSet, hashMap).getParent();
    }

    public Openable createOpenable(String str, IJavaSearchScope iJavaSearchScope) {
        String[] strArr;
        int length;
        PackageFragmentRoot jarPkgFragmentRoot;
        String[] strArr2;
        int length2;
        int indexOf = str.indexOf("|");
        String str2 = null;
        if (indexOf <= -1) {
            String str3 = this.lastPkgFragmentRootPath;
            if (str3 == null || !str.startsWith(str3) || org.eclipse.jdt.internal.compiler.util.Util.isExcluded(str.toCharArray(), this.lastPkgFragmentRoot.fullInclusionPatternChars(), this.lastPkgFragmentRoot.fullExclusionPatternChars(), false) || (length = this.lastPkgFragmentRootPath.length()) <= 0 || str.charAt(length) != '/') {
                PackageFragmentRoot pkgFragmentRoot = getPkgFragmentRoot(str);
                if (pkgFragmentRoot == null) {
                    return null;
                }
                this.lastPkgFragmentRoot = pkgFragmentRoot;
                this.lastPkgFragmentRootPath = pkgFragmentRoot.internalPath().toString();
                this.packageHandles = new HashtableOfArrayToObject(5);
            }
            String[] segments = new Path(str.substring(this.lastPkgFragmentRootPath.length() + 1)).segments();
            int length3 = segments.length - 1;
            if (length3 > 0) {
                strArr = new String[length3];
                System.arraycopy(segments, 0, strArr, 0, length3);
            } else {
                strArr = CharOperation.NO_STRINGS;
            }
            IPackageFragment iPackageFragment = (IPackageFragment) this.packageHandles.get(strArr);
            if (iPackageFragment == null) {
                iPackageFragment = this.lastPkgFragmentRoot.getPackageFragment(strArr);
                this.packageHandles.put(strArr, iPackageFragment);
            }
            String str4 = segments[length3];
            if (Util.isJavaLikeFileName(str4)) {
                return (Openable) iPackageFragment.getCompilationUnit(str4);
            }
            if (org.eclipse.jdt.internal.compiler.util.Util.isClassFileName(str4)) {
                return (Openable) iPackageFragment.getClassFile(str4);
            }
            return null;
        }
        String str5 = this.lastPkgFragmentRootPath;
        if (str5 != null && (length2 = str5.length()) == str.length() && str.regionMatches(0, this.lastPkgFragmentRootPath, 0, length2)) {
            jarPkgFragmentRoot = null;
        } else {
            String substring = str.substring(0, indexOf);
            jarPkgFragmentRoot = getJarPkgFragmentRoot(str, indexOf, substring, iJavaSearchScope);
            if (jarPkgFragmentRoot == null) {
                return null;
            }
            this.lastPkgFragmentRootPath = substring;
            this.lastPkgFragmentRoot = jarPkgFragmentRoot;
            this.packageHandles = new HashtableOfArrayToObject(5);
        }
        if (org.eclipse.jdt.internal.compiler.util.Util.isJrt(this.lastPkgFragmentRoot.getPath().toOSString())) {
            int lastIndexOf = str.lastIndexOf("|");
            str2 = str.substring(indexOf + 1, lastIndexOf);
            indexOf = lastIndexOf;
        }
        String substring2 = str.substring(indexOf + 1);
        if (substring2.endsWith(TypeConstants.AUTOMATIC_MODULE_NAME)) {
            return jarPkgFragmentRoot;
        }
        String[] segments2 = new Path(substring2).segments();
        int length4 = segments2.length - 1;
        if (length4 > 0) {
            strArr2 = new String[length4];
            System.arraycopy(segments2, 0, strArr2, 0, length4);
        } else {
            strArr2 = CharOperation.NO_STRINGS;
        }
        IPackageFragment iPackageFragment2 = (IPackageFragment) this.packageHandles.get(strArr2);
        if (iPackageFragment2 == null) {
            iPackageFragment2 = this.lastPkgFragmentRoot.getPackageFragment(strArr2, str2);
            this.packageHandles.put(strArr2, iPackageFragment2);
        }
        return (Openable) iPackageFragment2.getClassFile(segments2[length4]);
    }

    public void resolveDuplicates(IJavaElement iJavaElement) {
        if (iJavaElement instanceof SourceType) {
            SourceType sourceType = (SourceType) iJavaElement;
            if (sourceType.isAnonymous()) {
                IJavaElement ancestor = iJavaElement.getParent().getAncestor(7);
                int i10 = this.localOccurrenceCounts.get(ancestor);
                if (i10 == -1) {
                    this.localOccurrenceCounts.put(ancestor, 1);
                    return;
                }
                int i11 = i10 + 1;
                this.localOccurrenceCounts.put(ancestor, i11);
                sourceType.localOccurrenceCount = i11;
            }
        }
    }

    public IJavaElement createElement(Scope scope, int i10, ICompilationUnit iCompilationUnit, HashSet hashSet, HashMap hashMap) {
        IJavaElement createElement;
        IJavaElement method;
        IJavaElement iJavaElement = (IJavaElement) hashMap.get(scope);
        if (iJavaElement != null) {
            return iJavaElement;
        }
        int i11 = scope.kind;
        if (i11 == 1) {
            createElement = createElement(scope.parent, i10, iCompilationUnit, hashSet, hashMap);
        } else {
            if (i11 == 2) {
                if (scope.isLambdaScope()) {
                    IJavaElement createElement2 = createElement(scope.parent, i10, iCompilationUnit, hashSet, hashMap);
                    LambdaExpression lambdaExpression = (LambdaExpression) scope.originalReferenceContext();
                    TypeBinding typeBinding = lambdaExpression.resolvedType;
                    if (typeBinding == null || !typeBinding.isValidBinding() || (lambdaExpression.descriptor instanceof ProblemMethodBinding)) {
                        return createElement2;
                    }
                    IMethod method2 = LambdaFactory.createLambdaExpression((JavaElement) createElement2, lambdaExpression).getMethod();
                    hashMap.put(scope, method2);
                    return method2;
                }
                IType iType = (IType) createElement(scope.parent, i10, iCompilationUnit, hashSet, hashMap);
                MethodScope methodScope = (MethodScope) scope;
                if (methodScope.isInsideInitializer()) {
                    TypeDeclaration referenceType = methodScope.referenceType();
                    FieldDeclaration[] fieldDeclarationArr = referenceType.fields;
                    int length = fieldDeclarationArr == null ? 0 : fieldDeclarationArr.length;
                    int i12 = 1;
                    for (int i13 = 0; i13 < length; i13++) {
                        FieldDeclaration fieldDeclaration = referenceType.fields[i13];
                        if (fieldDeclaration.declarationSourceStart <= i10 && i10 <= fieldDeclaration.declarationSourceEnd) {
                            int kind = fieldDeclaration.getKind();
                            if (kind != 1) {
                                if (kind == 2) {
                                    createElement = iType.getInitializer(i12);
                                } else if (kind != 3) {
                                    createElement = iJavaElement;
                                }
                            }
                            createElement = iType.getField(new String(fieldDeclaration.name));
                        } else {
                            if (fieldDeclaration.getKind() == 2) {
                                i12++;
                            }
                        }
                    }
                    createElement = iJavaElement;
                } else {
                    AbstractMethodDeclaration referenceMethod = methodScope.referenceMethod();
                    method = iType.getMethod(new String(referenceMethod.selector), Util.typeParameterSignatures(referenceMethod));
                    if (method != null) {
                        hashMap.put(scope, method);
                    }
                    createElement = method;
                }
            } else if (i11 != 3) {
                if (i11 == 4) {
                    createElement = iCompilationUnit;
                }
                createElement = iJavaElement;
            } else {
                IJavaElement createElement3 = createElement(scope.parent, i10, iCompilationUnit, hashSet, hashMap);
                switch (createElement3.getElementType()) {
                    case 5:
                        method = ((ICompilationUnit) createElement3).getType(new String(scope.enclosingSourceType().sourceName));
                        break;
                    case 6:
                    default:
                        method = iJavaElement;
                        break;
                    case 7:
                        method = ((IType) createElement3).getType(new String(scope.enclosingSourceType().sourceName));
                        break;
                    case 8:
                    case 9:
                    case 10:
                        IMember iMember = (IMember) createElement3;
                        if (iMember.isBinary()) {
                            return null;
                        }
                        method = iMember.getType(new String(scope.enclosingSourceType().sourceName), 1);
                        if (method != null) {
                            while (!hashSet.add(method)) {
                                ((SourceRefElement) method).occurrenceCount++;
                            }
                            break;
                        }
                        break;
                }
                if (method != null) {
                    hashMap.put(scope, method);
                }
                createElement = method;
            }
            resolveDuplicates(createElement);
            return createElement;
        }
        resolveDuplicates(createElement);
        return createElement;
    }

    private PackageFragmentRoot getJarPkgFragmentRoot(IPath iPath, Object obj, IJavaProject[] iJavaProjectArr) {
        JavaProject javaProject;
        for (IJavaProject iJavaProject : iJavaProjectArr) {
            try {
                javaProject = (JavaProject) iJavaProject;
            } catch (JavaModelException unused) {
            }
            if (javaProject.getClasspathEntryFor(iPath) != null) {
                if (obj instanceof IFile) {
                    return (PackageFragmentRoot) javaProject.getPackageFragmentRoot((IResource) obj);
                }
                return (PackageFragmentRoot) javaProject.getPackageFragmentRoot0(iPath);
            }
        }
        return null;
    }
}
