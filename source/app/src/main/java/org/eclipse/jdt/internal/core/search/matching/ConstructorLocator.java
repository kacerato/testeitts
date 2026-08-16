package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.MethodReferenceMatch;
import org.eclipse.jdt.core.search.SearchMatch;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.JavadocMessageSend;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class ConstructorLocator extends PatternLocator {
    protected ConstructorPattern pattern;

    public ConstructorLocator(ConstructorPattern constructorPattern) {
        super(constructorPattern);
        this.pattern = constructorPattern;
    }

    @Override
    public int fineGrain() {
        return this.pattern.fineGrain;
    }

    @Override
    public int match(ASTNode aSTNode, MatchingNodeSet matchingNodeSet) {
        if (this.pattern.findReferences && (aSTNode instanceof ExplicitConstructorCall) && matchParametersCount(aSTNode, ((ExplicitConstructorCall) aSTNode).arguments)) {
            return matchingNodeSet.addMatch(aSTNode, this.pattern.mustResolve ? 2 : 3);
        }
        return 0;
    }

    public int matchConstructor(MethodBinding methodBinding) {
        if (!methodBinding.isConstructor()) {
            return 0;
        }
        ConstructorPattern constructorPattern = this.pattern;
        int resolveLevelForType = resolveLevelForType(constructorPattern.declaringSimpleName, constructorPattern.declaringQualification, methodBinding.declaringClass);
        if (resolveLevelForType == 0) {
            return 0;
        }
        int i10 = this.pattern.parameterCount;
        if (i10 > -1) {
            TypeBinding[] typeBindingArr = methodBinding.parameters;
            if (typeBindingArr == null) {
                return 1;
            }
            if (i10 != typeBindingArr.length) {
                return 0;
            }
            for (int i11 = 0; i11 < i10; i11++) {
                ConstructorPattern constructorPattern2 = this.pattern;
                int resolveLevelForType2 = resolveLevelForType(constructorPattern2.parameterSimpleNames[i11], constructorPattern2.parameterQualifications[i11], methodBinding.parameters[i11]);
                if (resolveLevelForType > resolveLevelForType2) {
                    if (resolveLevelForType2 == 0) {
                        return 0;
                    }
                    resolveLevelForType = resolveLevelForType2;
                }
            }
        }
        return resolveLevelForType;
    }

    @Override
    public int matchContainer() {
        return this.pattern.findReferences ? 15 : 2;
    }

    public int matchLevelForDeclarations(ConstructorDeclaration constructorDeclaration) {
        TypeParameter[] typeParameterArr;
        char[] cArr = this.pattern.declaringSimpleName;
        if (cArr != null && !matchesName(cArr, constructorDeclaration.selector)) {
            return 0;
        }
        ConstructorPattern constructorPattern = this.pattern;
        char[][] cArr2 = constructorPattern.parameterSimpleNames;
        if (cArr2 != null) {
            int length = cArr2.length;
            Argument[] argumentArr = constructorDeclaration.arguments;
            if (length != (argumentArr == null ? 0 : argumentArr.length)) {
                return 0;
            }
        }
        if (!constructorPattern.hasConstructorArguments() || ((typeParameterArr = constructorDeclaration.typeParameters) != null && typeParameterArr.length == this.pattern.constructorArguments.length)) {
            return this.pattern.mustResolve ? 2 : 3;
        }
        return 0;
    }

    public int matchLevelForReferences(ConstructorDeclaration constructorDeclaration) {
        ExplicitConstructorCall explicitConstructorCall = constructorDeclaration.constructorCall;
        if (explicitConstructorCall == null || explicitConstructorCall.accessMode != 1) {
            return 0;
        }
        ConstructorPattern constructorPattern = this.pattern;
        char[][] cArr = constructorPattern.parameterSimpleNames;
        if (cArr != null) {
            int length = cArr.length;
            Expression[] expressionArr = explicitConstructorCall.arguments;
            if (length != (expressionArr == null ? 0 : expressionArr.length)) {
                return 0;
            }
        }
        return constructorPattern.mustResolve ? 2 : 3;
    }

    public boolean matchParametersCount(ASTNode aSTNode, Expression[] expressionArr) {
        ConstructorPattern constructorPattern = this.pattern;
        char[][] cArr = constructorPattern.parameterSimpleNames;
        if (cArr == null) {
            return true;
        }
        if (constructorPattern.varargs && (aSTNode.bits & 32768) == 0) {
            return true;
        }
        int i10 = constructorPattern.parameterCount;
        if (i10 < 0) {
            i10 = cArr.length;
        }
        return i10 == (expressionArr == null ? 0 : expressionArr.length);
    }

    @Override
    public void matchReportReference(ASTNode aSTNode, IJavaElement iJavaElement, Binding binding, int i10, MatchLocator matchLocator) throws CoreException {
        boolean z10;
        MethodBinding methodBinding;
        MatchLocator matchLocator2;
        ASTNode aSTNode2;
        if (aSTNode instanceof ExplicitConstructorCall) {
            ExplicitConstructorCall explicitConstructorCall = (ExplicitConstructorCall) aSTNode;
            z10 = explicitConstructorCall.isImplicitSuper();
            methodBinding = explicitConstructorCall.binding;
        } else {
            z10 = false;
            if (aSTNode instanceof AllocationExpression) {
                methodBinding = ((AllocationExpression) aSTNode).binding;
            } else {
                if ((aSTNode instanceof TypeDeclaration) || (aSTNode instanceof FieldDeclaration)) {
                    super.matchReportReference(aSTNode, iJavaElement, binding, i10, matchLocator);
                    if (this.match != null) {
                        return;
                    }
                }
                methodBinding = null;
            }
        }
        MethodReferenceMatch newMethodReferenceMatch = matchLocator.newMethodReferenceMatch(iJavaElement, binding, i10, -1, -1, true, z10, aSTNode);
        this.match = newMethodReferenceMatch;
        if (methodBinding instanceof ParameterizedGenericMethodBinding) {
            ParameterizedGenericMethodBinding parameterizedGenericMethodBinding = (ParameterizedGenericMethodBinding) methodBinding;
            newMethodReferenceMatch.setRaw(parameterizedGenericMethodBinding.isRaw);
            TypeBinding[] typeBindingArr = parameterizedGenericMethodBinding.isRaw ? null : parameterizedGenericMethodBinding.typeArguments;
            ConstructorPattern constructorPattern = this.pattern;
            updateMatch(typeBindingArr, matchLocator, constructorPattern.constructorArguments, constructorPattern.hasConstructorParameters());
            if (methodBinding.declaringClass.isParameterizedType() || methodBinding.declaringClass.isRawType()) {
                ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) methodBinding.declaringClass;
                if ((this.pattern.hasTypeArguments() || !this.pattern.hasConstructorArguments()) && !parameterizedTypeBinding.isParameterizedWithOwnVariables()) {
                    if (!this.pattern.hasTypeArguments() || this.pattern.hasConstructorArguments()) {
                        matchLocator2 = matchLocator;
                        aSTNode2 = aSTNode;
                        updateMatch(parameterizedTypeBinding, this.pattern.getTypeArguments(), this.pattern.hasTypeParameters(), 0, matchLocator);
                    } else {
                        matchLocator2 = matchLocator;
                        aSTNode2 = aSTNode;
                        updateMatch(parameterizedTypeBinding, this.pattern.getTypeArguments(), this.pattern.hasTypeParameters(), 0, matchLocator);
                    }
                }
            } else if (this.pattern.hasTypeArguments()) {
                this.match.setRule(16);
            }
            matchLocator2 = matchLocator;
            aSTNode2 = aSTNode;
        } else {
            matchLocator2 = matchLocator;
            aSTNode2 = aSTNode;
            if (methodBinding instanceof ParameterizedMethodBinding) {
                if (methodBinding.declaringClass.isParameterizedType() || methodBinding.declaringClass.isRawType()) {
                    ParameterizedTypeBinding parameterizedTypeBinding2 = (ParameterizedTypeBinding) methodBinding.declaringClass;
                    if (!this.pattern.hasTypeArguments() && this.pattern.hasConstructorArguments()) {
                        ConstructorPattern constructorPattern2 = this.pattern;
                        updateMatch(parameterizedTypeBinding2, new char[][][]{constructorPattern2.constructorArguments}, constructorPattern2.hasTypeParameters(), 0, matchLocator);
                    } else if (!parameterizedTypeBinding2.isParameterizedWithOwnVariables()) {
                        updateMatch(parameterizedTypeBinding2, this.pattern.getTypeArguments(), this.pattern.hasTypeParameters(), 0, matchLocator);
                    }
                } else if (this.pattern.hasTypeArguments()) {
                    this.match.setRule(16);
                }
            } else if (this.pattern.hasConstructorArguments()) {
                this.match.setRule(16);
            }
        }
        if (this.match.getRule() == 0) {
            return;
        }
        if ((this.isErasureMatch && this.match.isErasure()) || ((this.isEquivalentMatch && this.match.isEquivalent()) || this.match.isExact())) {
            int i11 = aSTNode2.sourceStart;
            this.match.setOffset(i11);
            this.match.setLength((aSTNode2.sourceEnd - i11) + 1);
            if (aSTNode2 instanceof FieldDeclaration) {
                FieldDeclaration fieldDeclaration = (FieldDeclaration) aSTNode2;
                Expression expression = fieldDeclaration.initialization;
                if (expression instanceof QualifiedAllocationExpression) {
                    matchLocator2.reportAccurateEnumConstructorReference(this.match, fieldDeclaration, (QualifiedAllocationExpression) expression);
                    return;
                }
            }
            matchLocator2.report(this.match);
        }
    }

    @Override
    public SearchMatch newDeclarationMatch(ASTNode aSTNode, IJavaElement iJavaElement, Binding binding, int i10, int i11, MatchLocator matchLocator) {
        this.match = null;
        int i12 = aSTNode.sourceStart;
        if (this.pattern.findReferences) {
            if (aSTNode instanceof TypeDeclaration) {
                TypeDeclaration typeDeclaration = (TypeDeclaration) aSTNode;
                AbstractMethodDeclaration[] abstractMethodDeclarationArr = typeDeclaration.methods;
                if (abstractMethodDeclarationArr != null) {
                    int i13 = 0;
                    for (int length = abstractMethodDeclarationArr.length; i13 < length; length = length) {
                        AbstractMethodDeclaration abstractMethodDeclaration = abstractMethodDeclarationArr[i13];
                        this.match = matchLocator.newMethodReferenceMatch(iJavaElement, binding, i10, i12, i11, abstractMethodDeclaration.isConstructor(), abstractMethodDeclaration.isDefaultConstructor() && abstractMethodDeclaration.sourceStart < typeDeclaration.bodyStart, abstractMethodDeclaration);
                        i13++;
                    }
                }
            } else if (aSTNode instanceof ConstructorDeclaration) {
                ConstructorDeclaration constructorDeclaration = (ConstructorDeclaration) aSTNode;
                ExplicitConstructorCall explicitConstructorCall = constructorDeclaration.constructorCall;
                this.match = matchLocator.newMethodReferenceMatch(iJavaElement, binding, i10, i12, i11, constructorDeclaration.isConstructor(), explicitConstructorCall != null && explicitConstructorCall.isImplicitSuper(), constructorDeclaration);
            }
        }
        SearchMatch searchMatch = this.match;
        return searchMatch != null ? searchMatch : matchLocator.newDeclarationMatch(iJavaElement, binding, i10, aSTNode.sourceStart, i11);
    }

    @Override
    public int referenceType() {
        return 9;
    }

    @Override
    public int resolveLevel(ASTNode aSTNode) {
        if (this.pattern.findReferences) {
            if (aSTNode instanceof AllocationExpression) {
                return resolveLevel((AllocationExpression) aSTNode);
            }
            if (aSTNode instanceof ExplicitConstructorCall) {
                return resolveLevel(((ExplicitConstructorCall) aSTNode).binding);
            }
            if (aSTNode instanceof TypeDeclaration) {
                return resolveLevel((TypeDeclaration) aSTNode);
            }
            if (aSTNode instanceof FieldDeclaration) {
                return resolveLevel((FieldDeclaration) aSTNode);
            }
            if (aSTNode instanceof JavadocMessageSend) {
                return resolveLevel(((JavadocMessageSend) aSTNode).binding);
            }
            if (aSTNode instanceof ReferenceExpression) {
                return resolveLevel(((ReferenceExpression) aSTNode).getMethodBinding());
            }
        }
        if (aSTNode instanceof ConstructorDeclaration) {
            return resolveLevel((ConstructorDeclaration) aSTNode, true);
        }
        return 0;
    }

    @Override
    public String toString() {
        return "Locator for " + this.pattern.toString();
    }

    @Override
    public int match(ConstructorDeclaration constructorDeclaration, MatchingNodeSet matchingNodeSet) {
        ConstructorPattern constructorPattern = this.pattern;
        if (constructorPattern.fineGrain != 0 && !constructorPattern.findDeclarations) {
            return 0;
        }
        int matchLevelForReferences = constructorPattern.findReferences ? matchLevelForReferences(constructorDeclaration) : 0;
        int matchLevelForDeclarations = this.pattern.findDeclarations ? matchLevelForDeclarations(constructorDeclaration) : 0;
        if (matchLevelForReferences < matchLevelForDeclarations) {
            matchLevelForReferences = matchLevelForDeclarations;
        }
        return matchingNodeSet.addMatch(constructorDeclaration, matchLevelForReferences);
    }

    @Override
    public int match(Expression expression, MatchingNodeSet matchingNodeSet) {
        if (!this.pattern.findReferences || !(expression instanceof AllocationExpression)) {
            return 0;
        }
        AllocationExpression allocationExpression = (AllocationExpression) expression;
        char[][] typeName = allocationExpression.type.getTypeName();
        char[] cArr = this.pattern.declaringSimpleName;
        if ((cArr == null || matchesName(cArr, typeName[typeName.length - 1])) && matchParametersCount(expression, allocationExpression.arguments)) {
            return matchingNodeSet.addMatch(expression, this.pattern.mustResolve ? 2 : 3);
        }
        return 0;
    }

    @Override
    public int match(FieldDeclaration fieldDeclaration, MatchingNodeSet matchingNodeSet) {
        ReferenceBinding referenceBinding;
        char[] cArr;
        ConstructorPattern constructorPattern = this.pattern;
        if (constructorPattern.findReferences && fieldDeclaration.type == null) {
            Expression expression = fieldDeclaration.initialization;
            if (expression instanceof AllocationExpression) {
                AllocationExpression allocationExpression = (AllocationExpression) expression;
                FieldBinding fieldBinding = fieldDeclaration.binding;
                if ((fieldBinding == null || (referenceBinding = fieldBinding.declaringClass) == null || (cArr = constructorPattern.declaringSimpleName) == null || matchesName(cArr, referenceBinding.sourceName())) && matchParametersCount(fieldDeclaration, allocationExpression.arguments)) {
                    return matchingNodeSet.addMatch(fieldDeclaration, this.pattern.mustResolve ? 2 : 3);
                }
                return 0;
            }
        }
        return 0;
    }

    public int resolveLevel(AllocationExpression allocationExpression) {
        char[][] typeName = allocationExpression.type.getTypeName();
        char[] cArr = this.pattern.declaringSimpleName;
        if (cArr == null || matchesName(cArr, typeName[typeName.length - 1])) {
            return resolveLevel(allocationExpression.binding);
        }
        return 0;
    }

    public int resolveLevel(FieldDeclaration fieldDeclaration) {
        FieldBinding fieldBinding;
        char[] cArr;
        if (fieldDeclaration.type != null || (fieldBinding = fieldDeclaration.binding) == null || ((cArr = this.pattern.declaringSimpleName) != null && !matchesName(cArr, fieldBinding.type.sourceName()))) {
            return 0;
        }
        Expression expression = fieldDeclaration.initialization;
        if ((expression instanceof AllocationExpression) && !expression.resolvedType.isLocalType()) {
            return resolveLevel(((AllocationExpression) fieldDeclaration.initialization).binding);
        }
        return 0;
    }

    @Override
    public int match(MessageSend messageSend, MatchingNodeSet matchingNodeSet) {
        if ((messageSend.bits & 32768) == 0) {
            return 0;
        }
        ConstructorPattern constructorPattern = this.pattern;
        if (!constructorPattern.findReferences) {
            return 0;
        }
        char[] cArr = constructorPattern.declaringSimpleName;
        if (cArr == null || CharOperation.equals(messageSend.selector, cArr)) {
            return matchingNodeSet.addMatch(messageSend, this.pattern.mustResolve ? 2 : 3);
        }
        return 0;
    }

    @Override
    public int resolveLevel(Binding binding) {
        if (binding == null) {
            return 1;
        }
        if (!(binding instanceof MethodBinding)) {
            return 0;
        }
        MethodBinding methodBinding = (MethodBinding) binding;
        int matchConstructor = matchConstructor(methodBinding);
        return (matchConstructor != 0 || methodBinding == methodBinding.original()) ? matchConstructor : matchConstructor(methodBinding.original());
    }

    @Override
    public int match(ReferenceExpression referenceExpression, MatchingNodeSet matchingNodeSet) {
        if (!this.pattern.findReferences || referenceExpression.isMethodReference()) {
            return 0;
        }
        return matchingNodeSet.addMatch(referenceExpression, this.pattern.mustResolve ? 2 : 3);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x002e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int resolveLevel(ConstructorDeclaration constructorDeclaration, boolean z10) {
        int i10;
        ExplicitConstructorCall explicitConstructorCall;
        ConstructorPattern constructorPattern = this.pattern;
        if (constructorPattern.findReferences && (explicitConstructorCall = constructorDeclaration.constructorCall) != null && explicitConstructorCall.accessMode == 1) {
            Expression[] expressionArr = explicitConstructorCall.arguments;
            int length = expressionArr == null ? 0 : expressionArr.length;
            char[][] cArr = constructorPattern.parameterSimpleNames;
            if ((cArr == null ? 0 : cArr.length) == length) {
                i10 = resolveLevel(explicitConstructorCall.binding);
                if (i10 == 3) {
                    return 3;
                }
                if (z10) {
                    return i10;
                }
                int resolveLevel = this.pattern.findDeclarations ? resolveLevel(constructorDeclaration.binding) : 0;
                return i10 >= resolveLevel ? i10 : resolveLevel;
            }
        }
        i10 = 0;
        if (z10) {
        }
    }

    @Override
    public int match(TypeDeclaration typeDeclaration, MatchingNodeSet matchingNodeSet) {
        ConstructorPattern constructorPattern = this.pattern;
        if (!constructorPattern.findReferences) {
            return 0;
        }
        int i10 = constructorPattern.fineGrain;
        if (i10 == 0 || (i10 & (-268435457)) != 0) {
            return matchingNodeSet.addMatch(typeDeclaration, constructorPattern.mustResolve ? 2 : 3);
        }
        return 0;
    }

    public int resolveLevel(TypeDeclaration typeDeclaration) {
        AbstractMethodDeclaration[] abstractMethodDeclarationArr = typeDeclaration.methods;
        if (abstractMethodDeclarationArr != null) {
            for (AbstractMethodDeclaration abstractMethodDeclaration : abstractMethodDeclarationArr) {
                if (abstractMethodDeclaration.isDefaultConstructor() && abstractMethodDeclaration.sourceStart < typeDeclaration.bodyStart) {
                    return resolveLevel((ConstructorDeclaration) abstractMethodDeclaration, false);
                }
            }
        }
        return 0;
    }
}
