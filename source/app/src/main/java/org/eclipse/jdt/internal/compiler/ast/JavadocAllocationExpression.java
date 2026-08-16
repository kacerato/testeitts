package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class JavadocAllocationExpression extends AllocationExpression {
    public int memberStart;
    public char[][] qualification;
    public int tagSourceEnd;
    public int tagSourceStart;
    public int tagValue;

    public JavadocAllocationExpression(int i10, int i11) {
        this.sourceStart = i10;
        this.sourceEnd = i11;
        this.bits |= 32768;
    }

    public TypeBinding internalResolveType(Scope scope) {
        boolean z10;
        int length;
        this.constant = Constant.NotAConstant;
        TypeReference typeReference = this.type;
        if (typeReference == null) {
            this.resolvedType = scope.enclosingSourceType();
        } else if (scope.kind == 3) {
            this.resolvedType = typeReference.resolveType((ClassScope) scope);
        } else {
            this.resolvedType = typeReference.resolveType((BlockScope) scope, true);
        }
        this.argumentTypes = Binding.NO_PARAMETERS;
        Expression[] expressionArr = this.arguments;
        int i10 = 0;
        if (expressionArr != null) {
            this.argumentsHaveErrors = false;
            int length2 = expressionArr.length;
            this.argumentTypes = new TypeBinding[length2];
            z10 = false;
            for (int i11 = 0; i11 < length2; i11++) {
                Expression expression = this.arguments[i11];
                if (scope.kind == 3) {
                    this.argumentTypes[i11] = expression.resolveType((ClassScope) scope);
                } else {
                    this.argumentTypes[i11] = expression.resolveType((BlockScope) scope);
                }
                TypeBinding typeBinding = this.argumentTypes[i11];
                if (typeBinding == null) {
                    this.argumentsHaveErrors = true;
                } else if (!z10) {
                    z10 = typeBinding.isTypeVariable();
                }
            }
            if (this.argumentsHaveErrors) {
                return null;
            }
        } else {
            z10 = false;
        }
        if (this.resolvedType == null) {
            return null;
        }
        this.resolvedType = scope.environment().convertToRawType(this.type.resolvedType, true);
        SourceTypeBinding enclosingSourceType = scope.enclosingSourceType();
        if (enclosingSourceType != null && enclosingSourceType.isCompatibleWith(this.resolvedType)) {
            this.bits |= 16384;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) this.resolvedType;
        MethodBinding constructor = scope.getConstructor(referenceBinding, this.argumentTypes, this);
        this.binding = constructor;
        if (!constructor.isValidBinding()) {
            MethodBinding methodBinding = this.binding;
            ReferenceBinding referenceBinding2 = referenceBinding;
            while (!methodBinding.isValidBinding() && (referenceBinding2.isMemberType() || referenceBinding2.isLocalType())) {
                referenceBinding2 = referenceBinding2.enclosingType();
                methodBinding = scope.getConstructor(referenceBinding2, this.argumentTypes, this);
            }
            if (methodBinding.isValidBinding()) {
                this.binding = methodBinding;
            }
        }
        if (!this.binding.isValidBinding()) {
            TypeBinding typeBinding2 = this.resolvedType;
            MethodBinding method = scope.getMethod(typeBinding2, typeBinding2.sourceName(), this.argumentTypes, this);
            if (method.isValidBinding()) {
                this.binding = method;
            } else {
                MethodBinding methodBinding2 = this.binding;
                if (methodBinding2.declaringClass == null) {
                    methodBinding2.declaringClass = referenceBinding;
                }
                scope.problemReporter().javadocInvalidConstructor(this, this.binding, scope.getDeclarationModifiers());
            }
            return this.resolvedType;
        }
        if (this.binding.isVarargs()) {
            TypeBinding[] typeBindingArr = this.argumentTypes;
            int length3 = typeBindingArr.length;
            if (this.binding.parameters.length != length3 || !typeBindingArr[length3 - 1].isArrayType()) {
                MethodBinding methodBinding3 = this.binding;
                scope.problemReporter().javadocInvalidConstructor(this, new ProblemMethodBinding(methodBinding3, methodBinding3.selector, this.argumentTypes, 1), scope.getDeclarationModifiers());
            }
        } else if (z10) {
            MethodBinding methodBinding4 = this.binding;
            scope.problemReporter().javadocInvalidConstructor(this, new ProblemMethodBinding(methodBinding4, methodBinding4.selector, this.argumentTypes, 1), scope.getDeclarationModifiers());
        } else {
            MethodBinding methodBinding5 = this.binding;
            if (methodBinding5 instanceof ParameterizedMethodBinding) {
                ParameterizedMethodBinding parameterizedMethodBinding = (ParameterizedMethodBinding) methodBinding5;
                if (parameterizedMethodBinding.hasSubstitutedParameters()) {
                    int length4 = this.argumentTypes.length;
                    while (true) {
                        if (i10 >= length4) {
                            break;
                        }
                        if (TypeBinding.notEquals(parameterizedMethodBinding.parameters[i10], this.argumentTypes[i10]) && TypeBinding.notEquals(parameterizedMethodBinding.parameters[i10].erasure(), this.argumentTypes[i10].erasure())) {
                            MethodBinding methodBinding6 = this.binding;
                            scope.problemReporter().javadocInvalidConstructor(this, new ProblemMethodBinding(methodBinding6, methodBinding6.selector, this.argumentTypes, 1), scope.getDeclarationModifiers());
                            break;
                        }
                        i10++;
                    }
                }
            } else if (this.resolvedType.isMemberType() && (length = this.qualification.length) > 1) {
                TypeReference typeReference2 = this.type;
                if (!(typeReference2 instanceof JavadocQualifiedTypeReference) || ((JavadocQualifiedTypeReference) typeReference2).tokens.length == length) {
                    ReferenceBinding referenceBinding3 = referenceBinding;
                    while (length > 0) {
                        length--;
                        if (!CharOperation.equals(this.qualification[length], referenceBinding3.sourceName) || (referenceBinding3 = referenceBinding3.enclosingType()) == null) {
                            break;
                        }
                    }
                    if (length > 0 || referenceBinding3 != null) {
                        scope.problemReporter().javadocInvalidMemberTypeQualification(this.memberStart + 1, this.sourceEnd, scope.getDeclarationModifiers());
                    }
                } else {
                    scope.problemReporter().javadocInvalidMemberTypeQualification(this.memberStart + 1, this.sourceEnd, scope.getDeclarationModifiers());
                }
            }
        }
        if (isMethodUseDeprecated(this.binding, scope, true, this)) {
            scope.problemReporter().javadocDeprecatedMethod(this.binding, this, scope.getDeclarationModifiers());
        }
        return referenceBinding;
    }

    @Override
    public boolean isSuperAccess() {
        return (this.bits & 16384) != 0;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        return internalResolveType(blockScope);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            TypeReference[] typeReferenceArr = this.typeArguments;
            if (typeReferenceArr != null) {
                int length = typeReferenceArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.typeArguments[i10].traverse(aSTVisitor, blockScope);
                }
            }
            TypeReference typeReference = this.type;
            if (typeReference != null) {
                typeReference.traverse(aSTVisitor, blockScope);
            }
            Expression[] expressionArr = this.arguments;
            if (expressionArr != null) {
                int length2 = expressionArr.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    this.arguments[i11].traverse(aSTVisitor, blockScope);
                }
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public TypeBinding resolveType(ClassScope classScope) {
        return internalResolveType(classScope);
    }

    public JavadocAllocationExpression(long j10) {
        this((int) (j10 >>> 32), (int) j10);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        if (aSTVisitor.visit(this, classScope)) {
            TypeReference[] typeReferenceArr = this.typeArguments;
            if (typeReferenceArr != null) {
                int length = typeReferenceArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.typeArguments[i10].traverse(aSTVisitor, classScope);
                }
            }
            TypeReference typeReference = this.type;
            if (typeReference != null) {
                typeReference.traverse(aSTVisitor, classScope);
            }
            Expression[] expressionArr = this.arguments;
            if (expressionArr != null) {
                int length2 = expressionArr.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    this.arguments[i11].traverse(aSTVisitor, classScope);
                }
            }
        }
        aSTVisitor.endVisit(this, classScope);
    }
}
