package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.PackageReferenceMatch;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ImportBinding;
import org.eclipse.jdt.internal.compiler.lookup.MemberTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;

public class PackageReferenceLocator extends PatternLocator {
    protected PackageReferencePattern pattern;

    public PackageReferenceLocator(PackageReferencePattern packageReferencePattern) {
        super(packageReferencePattern);
        this.pattern = packageReferencePattern;
    }

    public static boolean isDeclaringPackageFragment(IPackageFragment iPackageFragment, ReferenceBinding referenceBinding) {
        char[] fileName = referenceBinding.getFileName();
        if (fileName != null) {
            char[] lastSegment = CharOperation.lastSegment(CharOperation.replaceOnCopy(fileName, '/', JavaElement.JEM_ESCAPE), JavaElement.JEM_ESCAPE);
            try {
                int kind = iPackageFragment.getKind();
                if (kind != 1) {
                    if (kind == 2 && (!Util.isClassFileName(lastSegment) || !iPackageFragment.getClassFile(new String(lastSegment)).exists())) {
                        return false;
                    }
                } else if (!org.eclipse.jdt.internal.core.util.Util.isJavaLikeFileName(lastSegment) || !iPackageFragment.getCompilationUnit(new String(lastSegment)).exists()) {
                    return false;
                }
            } catch (JavaModelException unused) {
            }
        }
        return true;
    }

    @Override
    public int match(Annotation annotation, MatchingNodeSet matchingNodeSet) {
        return match(annotation.type, matchingNodeSet);
    }

    @Override
    public int matchLevel(ImportReference importReference) {
        return matchLevelForTokens(importReference.tokens);
    }

    @Override
    public void matchLevelAndReportImportRef(ImportReference importReference, Binding binding, MatchLocator matchLocator) throws CoreException {
        if (importReference.isStatic()) {
            if (binding instanceof FieldBinding) {
                FieldBinding fieldBinding = (FieldBinding) binding;
                if (!fieldBinding.isStatic()) {
                    return;
                } else {
                    binding = fieldBinding.declaringClass;
                }
            } else if (binding instanceof MethodBinding) {
                MethodBinding methodBinding = (MethodBinding) binding;
                if (!methodBinding.isStatic()) {
                    return;
                } else {
                    binding = methodBinding.declaringClass;
                }
            } else if ((binding instanceof MemberTypeBinding) && !((MemberTypeBinding) binding).isStatic()) {
                return;
            }
        }
        super.matchLevelAndReportImportRef(importReference, binding, matchLocator);
    }

    public int matchLevelForTokens(char[][] cArr) {
        char[] cArr2 = this.pattern.pkgName;
        if (cArr2 == null) {
            return 3;
        }
        int i10 = this.matchMode;
        if (i10 == 0 || i10 == 1) {
            if (CharOperation.prefixEquals(cArr2, CharOperation.concatWith(cArr, '.'), this.isCaseSensitive)) {
                return 2;
            }
        } else if (i10 == 2) {
            if (cArr2[cArr2.length - 1] != '*') {
                cArr2 = CharOperation.concat(cArr2, ".*".toCharArray());
            }
            if (CharOperation.match(cArr2, CharOperation.concatWith(cArr, '.'), this.isCaseSensitive)) {
                return 2;
            }
        } else if (i10 == 128) {
            char[] concatWith = CharOperation.concatWith(cArr, '.');
            if (CharOperation.camelCaseMatch(this.pattern.pkgName, concatWith, false)) {
                return 2;
            }
            if (!this.isCaseSensitive && CharOperation.prefixEquals(this.pattern.pkgName, concatWith, false)) {
                return 2;
            }
        } else if (i10 == 256 && CharOperation.camelCaseMatch(cArr2, CharOperation.concatWith(cArr, '.'), true)) {
            return 2;
        }
        return 0;
    }

    @Override
    public void matchReportImportRef(ImportReference importReference, Binding binding, IJavaElement iJavaElement, int i10, MatchLocator matchLocator) throws CoreException {
        PackageBinding packageBinding;
        if (binding == null) {
            matchReportReference(importReference, iJavaElement, null, i10, matchLocator);
            return;
        }
        if (matchLocator.encloses(iJavaElement)) {
            long[] jArr = importReference.sourcePositions;
            int length = jArr.length - 1;
            if (binding instanceof ProblemReferenceBinding) {
                binding = ((ProblemReferenceBinding) binding).closestMatch();
            }
            if ((binding instanceof ReferenceBinding) && (packageBinding = ((ReferenceBinding) binding).fPackage) != null) {
                length = packageBinding.compoundName.length;
            }
            if (binding instanceof PackageBinding) {
                length = ((PackageBinding) binding).compoundName.length;
            }
            int i11 = (int) (jArr[0] >>> 32);
            PackageReferenceMatch newPackageReferenceMatch = matchLocator.newPackageReferenceMatch(iJavaElement, i10, i11, (((int) jArr[length > 0 ? length - 1 : 0]) - i11) + 1, importReference);
            this.match = newPackageReferenceMatch;
            matchLocator.report(newPackageReferenceMatch);
        }
    }

    @Override
    public void matchReportReference(ASTNode aSTNode, IJavaElement iJavaElement, Binding binding, int i10, MatchLocator matchLocator) throws CoreException {
        matchReportReference(aSTNode, iJavaElement, null, null, binding, i10, matchLocator);
    }

    @Override
    public int referenceType() {
        return 4;
    }

    @Override
    public int resolveLevel(ASTNode aSTNode) {
        if (aSTNode instanceof JavadocQualifiedTypeReference) {
            JavadocQualifiedTypeReference javadocQualifiedTypeReference = (JavadocQualifiedTypeReference) aSTNode;
            PackageBinding packageBinding = javadocQualifiedTypeReference.packageBinding;
            if (packageBinding != null) {
                return resolveLevel(packageBinding);
            }
            return resolveLevel(javadocQualifiedTypeReference.resolvedType);
        }
        if (aSTNode instanceof JavadocSingleTypeReference) {
            PackageBinding packageBinding2 = ((JavadocSingleTypeReference) aSTNode).packageBinding;
            if (packageBinding2 != null) {
                return resolveLevel(packageBinding2);
            }
            return 0;
        }
        if (aSTNode instanceof QualifiedTypeReference) {
            return resolveLevel(((QualifiedTypeReference) aSTNode).resolvedType);
        }
        if (aSTNode instanceof QualifiedNameReference) {
            return resolveLevel((QualifiedNameReference) aSTNode);
        }
        return 0;
    }

    @Override
    public String toString() {
        return "Locator for " + this.pattern.toString();
    }

    @Override
    public int match(ASTNode aSTNode, MatchingNodeSet matchingNodeSet) {
        if (aSTNode instanceof ImportReference) {
            return matchingNodeSet.addMatch(aSTNode, matchLevel((ImportReference) aSTNode));
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x009f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a0  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void matchReportReference(ASTNode aSTNode, IJavaElement iJavaElement, IJavaElement iJavaElement2, IJavaElement[] iJavaElementArr, Binding binding, int i10, MatchLocator matchLocator) throws CoreException {
        int i11;
        TypeBinding typeBinding;
        long[] jArr;
        long[] jArr2;
        int i12;
        PackageBinding packageBinding;
        if (aSTNode instanceof ImportReference) {
            ImportReference importReference = (ImportReference) aSTNode;
            jArr2 = importReference.sourcePositions;
            i12 = (importReference.bits & 131072) != 0 ? jArr2.length : jArr2.length - 1;
        } else {
            if (aSTNode instanceof QualifiedNameReference) {
                QualifiedNameReference qualifiedNameReference = (QualifiedNameReference) aSTNode;
                jArr = qualifiedNameReference.sourcePositions;
                int i13 = qualifiedNameReference.bits & 7;
                if (i13 != 1) {
                    if (i13 == 7 || i13 == 3) {
                        Binding binding2 = qualifiedNameReference.binding;
                        if (binding2 instanceof TypeBinding) {
                            typeBinding = (TypeBinding) binding2;
                        } else if (binding2 instanceof ProblemFieldBinding) {
                            TypeBinding typeBinding2 = qualifiedNameReference.actualReceiverType;
                            int length = qualifiedNameReference.tokens.length;
                            FieldBinding[] fieldBindingArr = qualifiedNameReference.otherBindings;
                            i11 = length - (fieldBindingArr != null ? 2 + fieldBindingArr.length : 2);
                            typeBinding = typeBinding2;
                        } else {
                            if (binding2 instanceof ProblemBinding) {
                                ProblemBinding problemBinding = (ProblemBinding) binding2;
                                typeBinding = problemBinding.searchType;
                                i11 = CharOperation.occurencesOf('.', problemBinding.name);
                            }
                            i11 = -1;
                            typeBinding = null;
                        }
                    } else {
                        if (i13 == 4) {
                            Binding binding3 = qualifiedNameReference.binding;
                            if (binding3 instanceof TypeBinding) {
                                typeBinding = (TypeBinding) binding3;
                            }
                        }
                        i11 = -1;
                        typeBinding = null;
                    }
                    if (jArr != null) {
                        return;
                    }
                    if (typeBinding instanceof ArrayBinding) {
                        typeBinding = ((ArrayBinding) typeBinding).leafComponentType;
                    }
                    if (typeBinding instanceof ProblemReferenceBinding) {
                        typeBinding = ((ProblemReferenceBinding) typeBinding).closestMatch();
                    }
                    int length2 = (!(typeBinding instanceof ReferenceBinding) || (packageBinding = ((ReferenceBinding) typeBinding).fPackage) == null) ? i11 : packageBinding.compoundName.length;
                    ReferenceBinding enclosingType = typeBinding != null ? typeBinding.enclosingType() : null;
                    if (enclosingType != null) {
                        int length3 = jArr.length;
                        while (enclosingType != null && length3 > 0) {
                            length3--;
                            enclosingType = enclosingType.enclosingType();
                        }
                        if (length3 <= 1) {
                            return;
                        }
                    }
                    jArr2 = jArr;
                    i12 = length2;
                } else {
                    typeBinding = qualifiedNameReference.actualReceiverType;
                }
                i11 = -1;
                if (jArr != null) {
                }
            } else {
                if (aSTNode instanceof QualifiedTypeReference) {
                    QualifiedTypeReference qualifiedTypeReference = (QualifiedTypeReference) aSTNode;
                    jArr = qualifiedTypeReference.sourcePositions;
                    typeBinding = qualifiedTypeReference.resolvedType;
                } else if (aSTNode instanceof JavadocSingleTypeReference) {
                    jArr = new long[]{(r1.sourceStart << 32) + r1.sourceEnd};
                    typeBinding = ((JavadocSingleTypeReference) aSTNode).resolvedType;
                } else {
                    i11 = -1;
                    typeBinding = null;
                    jArr = null;
                    if (jArr != null) {
                    }
                }
                i11 = -1;
                if (jArr != null) {
                }
            }
        }
        if (i12 == -1) {
            i12 = this.pattern.segments.length;
        }
        if (i12 == 0) {
            return;
        }
        if (i12 > jArr2.length) {
            i12 = jArr2.length;
        }
        int i14 = (int) (jArr2[0] >>> 32);
        PackageReferenceMatch newPackageReferenceMatch = matchLocator.newPackageReferenceMatch(iJavaElement, i10, i14, (((int) jArr2[i12 - 1]) - i14) + 1, aSTNode);
        newPackageReferenceMatch.setLocalElement(iJavaElement2);
        this.match = newPackageReferenceMatch;
        matchLocator.report(newPackageReferenceMatch);
    }

    @Override
    public int match(Reference reference, MatchingNodeSet matchingNodeSet) {
        if (reference instanceof QualifiedNameReference) {
            return matchingNodeSet.addMatch(reference, matchLevelForTokens(((QualifiedNameReference) reference).tokens));
        }
        return 0;
    }

    @Override
    public int match(TypeReference typeReference, MatchingNodeSet matchingNodeSet) {
        if (typeReference instanceof JavadocSingleTypeReference) {
            return matchingNodeSet.addMatch(typeReference, matchLevelForTokens(new char[][]{((JavadocSingleTypeReference) typeReference).token}));
        }
        if (typeReference instanceof QualifiedTypeReference) {
            return matchingNodeSet.addMatch(typeReference, matchLevelForTokens(((QualifiedTypeReference) typeReference).tokens));
        }
        return 0;
    }

    @Override
    public int resolveLevel(Binding binding) {
        char[][] cArr;
        if (binding == null) {
            return 1;
        }
        if (binding instanceof ImportBinding) {
            cArr = ((ImportBinding) binding).compoundName;
        } else if (binding instanceof PackageBinding) {
            cArr = ((PackageBinding) binding).compoundName;
        } else {
            if (binding instanceof ArrayBinding) {
                binding = ((ArrayBinding) binding).leafComponentType;
            }
            if (binding instanceof ProblemReferenceBinding) {
                binding = ((ProblemReferenceBinding) binding).closestMatch();
            }
            if (binding == null) {
                return 1;
            }
            if (binding instanceof ReferenceBinding) {
                PackageBinding packageBinding = ((ReferenceBinding) binding).fPackage;
                if (packageBinding == null) {
                    return 1;
                }
                cArr = packageBinding.compoundName;
            } else {
                cArr = null;
            }
        }
        if (cArr == null || !matchesName(this.pattern.pkgName, CharOperation.concatWith(cArr, '.'))) {
            return 0;
        }
        IJavaElement iJavaElement = this.pattern.focus;
        return ((iJavaElement instanceof IPackageFragment) && (binding instanceof ReferenceBinding) && !isDeclaringPackageFragment((IPackageFragment) iJavaElement, (ReferenceBinding) binding)) ? 0 : 3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0011, code lost:
    
        if (r0 != 7) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int resolveLevel(QualifiedNameReference qualifiedNameReference) {
        Binding binding;
        int i10 = qualifiedNameReference.bits & 7;
        if (i10 == 1) {
            int length = qualifiedNameReference.tokens.length;
            FieldBinding[] fieldBindingArr = qualifiedNameReference.otherBindings;
            if (length < (fieldBindingArr != null ? 3 + fieldBindingArr.length : 3)) {
                return 0;
            }
            binding = qualifiedNameReference.actualReceiverType;
        } else {
            if (i10 == 2) {
                return 0;
            }
            if (i10 != 3) {
                if (i10 == 4) {
                    Binding binding2 = qualifiedNameReference.binding;
                    if (binding2 instanceof TypeBinding) {
                        binding = (TypeBinding) binding2;
                    }
                }
                binding = null;
            }
            Binding binding3 = qualifiedNameReference.binding;
            if (binding3 instanceof ProblemReferenceBinding) {
                binding = (TypeBinding) binding3;
            } else if (binding3 instanceof ProblemFieldBinding) {
                int length2 = qualifiedNameReference.tokens.length;
                FieldBinding[] fieldBindingArr2 = qualifiedNameReference.otherBindings;
                if (length2 < (fieldBindingArr2 != null ? 3 + fieldBindingArr2.length : 3)) {
                    return 0;
                }
                binding = qualifiedNameReference.actualReceiverType;
            } else {
                if (binding3 instanceof ProblemBinding) {
                    ProblemBinding problemBinding = (ProblemBinding) binding3;
                    if (CharOperation.occurencesOf('.', problemBinding.name) <= 0) {
                        return 1;
                    }
                    binding = problemBinding.searchType;
                }
                binding = null;
            }
        }
        return resolveLevel(binding);
    }
}
