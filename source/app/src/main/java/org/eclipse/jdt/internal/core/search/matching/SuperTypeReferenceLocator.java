package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SuperTypeReferenceLocator extends PatternLocator {
    protected SuperTypeReferencePattern pattern;

    public SuperTypeReferenceLocator(SuperTypeReferencePattern superTypeReferencePattern) {
        super(superTypeReferencePattern);
        this.pattern = superTypeReferencePattern;
    }

    @Override
    public int match(LambdaExpression lambdaExpression, MatchingNodeSet matchingNodeSet) {
        if (this.pattern.superRefKind != 1) {
            return 0;
        }
        matchingNodeSet.mustResolve = true;
        return matchingNodeSet.addMatch(lambdaExpression, 2);
    }

    @Override
    public int matchContainer() {
        return 2;
    }

    @Override
    public void matchReportReference(ASTNode aSTNode, IJavaElement iJavaElement, Binding binding, int i10, MatchLocator matchLocator) throws CoreException {
        if (binding instanceof ReferenceBinding) {
            ReferenceBinding referenceBinding = (ReferenceBinding) binding;
            if (referenceBinding.isClass() && this.pattern.typeSuffix == 'I') {
                return;
            }
            if (referenceBinding.isInterface() && this.pattern.typeSuffix == 'C') {
                return;
            }
        }
        super.matchReportReference(aSTNode, iJavaElement, binding, i10, matchLocator);
    }

    @Override
    public int referenceType() {
        return 7;
    }

    @Override
    public int resolveLevel(ASTNode aSTNode) {
        TypeBinding typeBinding;
        if (aSTNode instanceof LambdaExpression) {
            typeBinding = ((LambdaExpression) aSTNode).resolvedType;
        } else {
            if (!(aSTNode instanceof TypeReference)) {
                return 0;
            }
            typeBinding = ((TypeReference) aSTNode).resolvedType;
        }
        if (typeBinding instanceof ArrayBinding) {
            typeBinding = ((ArrayBinding) typeBinding).leafComponentType;
        }
        if (typeBinding instanceof ProblemReferenceBinding) {
            typeBinding = ((ProblemReferenceBinding) typeBinding).closestMatch();
        }
        if (typeBinding == null || !typeBinding.isValidBinding()) {
            return 1;
        }
        SuperTypeReferencePattern superTypeReferencePattern = this.pattern;
        return resolveLevelForType(superTypeReferencePattern.superSimpleName, superTypeReferencePattern.superQualification, typeBinding);
    }

    @Override
    public String toString() {
        return "Locator for " + this.pattern.toString();
    }

    @Override
    public int match(TypeReference typeReference, MatchingNodeSet matchingNodeSet) {
        char[] cArr;
        if (this.flavors != 4096) {
            return 0;
        }
        SuperTypeReferencePattern superTypeReferencePattern = this.pattern;
        char[] cArr2 = superTypeReferencePattern.superSimpleName;
        if (cArr2 == null) {
            return matchingNodeSet.addMatch(typeReference, superTypeReferencePattern.mustResolve ? 2 : 3);
        }
        if (typeReference instanceof SingleTypeReference) {
            cArr = ((SingleTypeReference) typeReference).token;
        } else {
            cArr = ((QualifiedTypeReference) typeReference).tokens[r0.length - 1];
        }
        if (matchesName(cArr2, cArr)) {
            return matchingNodeSet.addMatch(typeReference, this.pattern.mustResolve ? 2 : 3);
        }
        return 0;
    }

    @Override
    public int resolveLevel(Binding binding) {
        int i10;
        if (binding == null) {
            return 1;
        }
        if (!(binding instanceof ReferenceBinding)) {
            return 0;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) binding;
        SuperTypeReferencePattern superTypeReferencePattern = this.pattern;
        if (superTypeReferencePattern.superRefKind != 1) {
            i10 = resolveLevelForType(superTypeReferencePattern.superSimpleName, superTypeReferencePattern.superQualification, referenceBinding.superclass());
            if (i10 == 3) {
                return 3;
            }
        } else {
            i10 = 0;
        }
        if (this.pattern.superRefKind != 2) {
            for (ReferenceBinding referenceBinding2 : referenceBinding.superInterfaces()) {
                SuperTypeReferencePattern superTypeReferencePattern2 = this.pattern;
                int resolveLevelForType = resolveLevelForType(superTypeReferencePattern2.superSimpleName, superTypeReferencePattern2.superQualification, referenceBinding2);
                if (resolveLevelForType > i10) {
                    if (resolveLevelForType == 3) {
                        return 3;
                    }
                    i10 = resolveLevelForType;
                }
            }
        }
        return i10;
    }
}
