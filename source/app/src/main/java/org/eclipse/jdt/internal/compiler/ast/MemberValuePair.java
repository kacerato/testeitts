package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.ElementValuePair;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;

public class MemberValuePair extends ASTNode {
    public MethodBinding binding;
    public ElementValuePair compilerElementPair = null;
    public char[] name;
    public Expression value;

    public MemberValuePair(char[] cArr, int i10, int i11, Expression expression) {
        this.name = cArr;
        this.sourceStart = i10;
        this.sourceEnd = i11;
        this.value = expression;
        if (expression instanceof ArrayInitializer) {
            expression.bits |= 1;
        }
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        stringBuffer.append(this.name);
        stringBuffer.append(" = ");
        this.value.print(0, stringBuffer);
        return stringBuffer;
    }

    public void resolveTypeExpecting(final BlockScope blockScope, final TypeBinding typeBinding) {
        if (this.compilerElementPair != null) {
            return;
        }
        Expression expression = this.value;
        if (expression == null) {
            this.compilerElementPair = new ElementValuePair(this.name, expression, this.binding);
            return;
        }
        TypeBinding typeBinding2 = null;
        if (typeBinding == null) {
            if (expression instanceof ArrayInitializer) {
                expression.resolveTypeExpecting(blockScope, null);
            } else {
                expression.resolveType(blockScope);
            }
            this.compilerElementPair = new ElementValuePair(this.name, this.value, this.binding);
            return;
        }
        expression.setExpectedType(typeBinding);
        Expression expression2 = this.value;
        if (expression2 instanceof ArrayInitializer) {
            typeBinding2 = ((ArrayInitializer) expression2).resolveTypeExpecting(blockScope, this.binding.returnType);
        } else if (expression2 instanceof ArrayAllocationExpression) {
            blockScope.problemReporter().annotationValueMustBeArrayInitializer(this.binding.declaringClass, this.name, this.value);
            this.value.resolveType(blockScope);
        } else {
            typeBinding2 = expression2.resolveType(blockScope);
            this.value.traverse(new ASTVisitor() {
                @Override
                public boolean visit(SingleNameReference singleNameReference, BlockScope blockScope2) {
                    Binding binding = singleNameReference.binding;
                    if (binding instanceof LocalVariableBinding) {
                        ((LocalVariableBinding) binding).useFlag = 1;
                    }
                    return true;
                }
            }, blockScope);
        }
        this.compilerElementPair = new ElementValuePair(this.name, this.value, this.binding);
        if (typeBinding2 == null) {
            return;
        }
        final TypeBinding leafComponentType = typeBinding.leafComponentType();
        final boolean[] zArr = new boolean[1];
        final TypeBinding typeBinding3 = typeBinding2;
        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                if (MemberValuePair.this.value.isConstantValueOfTypeAssignableToType(typeBinding3, typeBinding) || typeBinding3.isCompatibleWith(typeBinding)) {
                    blockScope.compilationUnitScope().recordTypeConversion(typeBinding.leafComponentType(), typeBinding3.leafComponentType());
                    MemberValuePair.this.value.computeConversion(blockScope, typeBinding, typeBinding3);
                    return;
                }
                if (typeBinding.isArrayType() && typeBinding.dimensions() == 1 && (MemberValuePair.this.value.isConstantValueOfTypeAssignableToType(typeBinding3, leafComponentType) || typeBinding3.isCompatibleWith(leafComponentType))) {
                    return;
                }
                if (!leafComponentType.isAnnotationType() || typeBinding3.isAnnotationType()) {
                    blockScope.problemReporter().typeMismatchError(typeBinding3, typeBinding, MemberValuePair.this.value, (ASTNode) null);
                } else {
                    ProblemReporter problemReporter = blockScope.problemReporter();
                    MemberValuePair memberValuePair = MemberValuePair.this;
                    problemReporter.annotationValueMustBeAnnotation(memberValuePair.binding.declaringClass, memberValuePair.name, memberValuePair.value, leafComponentType);
                }
                zArr[0] = true;
            }
        };
        int i10 = 0;
        if (!blockScope.deferCheck(runnable)) {
            runnable.run();
            if (zArr[0]) {
                return;
            }
        }
        int i11 = leafComponentType.erasure().f102482id;
        if (i11 != 2 && i11 != 3 && i11 != 4 && i11 != 5) {
            if (i11 == 16) {
                Expression expression3 = this.value;
                if (!(expression3 instanceof ArrayInitializer)) {
                    if (expression3 instanceof ClassLiteralAccess) {
                        return;
                    }
                    blockScope.problemReporter().annotationValueMustBeClassLiteral(this.binding.declaringClass, this.name, this.value);
                    return;
                }
                Expression[] expressionArr = ((ArrayInitializer) expression3).expressions;
                if (expressionArr != null) {
                    int length = expressionArr.length;
                    while (i10 < length) {
                        Expression expression4 = expressionArr[i10];
                        if (!(expression4 instanceof ClassLiteralAccess)) {
                            blockScope.problemReporter().annotationValueMustBeClassLiteral(this.binding.declaringClass, this.name, expression4);
                        }
                        i10++;
                    }
                    return;
                }
                return;
            }
            switch (i11) {
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                    break;
                default:
                    if (!leafComponentType.isEnum()) {
                        if (leafComponentType.isAnnotationType()) {
                            if (!typeBinding2.leafComponentType().isAnnotationType()) {
                                blockScope.problemReporter().annotationValueMustBeAnnotation(this.binding.declaringClass, this.name, this.value, leafComponentType);
                                return;
                            }
                            Expression expression5 = this.value;
                            if (!(expression5 instanceof ArrayInitializer)) {
                                if (expression5 instanceof Annotation) {
                                    return;
                                }
                                blockScope.problemReporter().annotationValueMustBeAnnotation(this.binding.declaringClass, this.name, this.value, leafComponentType);
                                return;
                            }
                            Expression[] expressionArr2 = ((ArrayInitializer) expression5).expressions;
                            if (expressionArr2 != null) {
                                int length2 = expressionArr2.length;
                                while (i10 < length2) {
                                    Expression expression6 = expressionArr2[i10];
                                    if ((expression6 instanceof NullLiteral) || !(expression6 instanceof Annotation)) {
                                        blockScope.problemReporter().annotationValueMustBeAnnotation(this.binding.declaringClass, this.name, expression6, leafComponentType);
                                    }
                                    i10++;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    Expression expression7 = this.value;
                    if (expression7 instanceof NullLiteral) {
                        blockScope.problemReporter().annotationValueMustBeConstant(this.binding.declaringClass, this.name, this.value, true);
                        return;
                    }
                    if (!(expression7 instanceof ArrayInitializer)) {
                        if (!(expression7 instanceof NameReference)) {
                            blockScope.problemReporter().annotationValueMustBeConstant(this.binding.declaringClass, this.name, this.value, true);
                            return;
                        }
                        Binding binding = ((NameReference) expression7).binding;
                        if (binding.kind() == 1) {
                            FieldBinding fieldBinding = (FieldBinding) binding;
                            if (fieldBinding.declaringClass.isEnum()) {
                                return;
                            }
                            if (fieldBinding.type.isArrayType()) {
                                blockScope.problemReporter().annotationValueMustBeArrayInitializer(this.binding.declaringClass, this.name, this.value);
                                return;
                            } else {
                                blockScope.problemReporter().annotationValueMustBeConstant(this.binding.declaringClass, this.name, this.value, true);
                                return;
                            }
                        }
                        return;
                    }
                    Expression[] expressionArr3 = ((ArrayInitializer) expression7).expressions;
                    if (expressionArr3 != null) {
                        int length3 = expressionArr3.length;
                        while (i10 < length3) {
                            Expression expression8 = expressionArr3[i10];
                            if (expression8 instanceof NullLiteral) {
                                blockScope.problemReporter().annotationValueMustBeConstant(this.binding.declaringClass, this.name, expression8, true);
                            } else if (expression8 instanceof NameReference) {
                                Binding binding2 = ((NameReference) expression8).binding;
                                if (binding2.kind() == 1 && !((FieldBinding) binding2).declaringClass.isEnum()) {
                                    blockScope.problemReporter().annotationValueMustBeConstant(this.binding.declaringClass, this.name, expression8, true);
                                }
                            }
                            i10++;
                        }
                        return;
                    }
                    return;
            }
        }
        Expression expression9 = this.value;
        if (!(expression9 instanceof ArrayInitializer)) {
            if (expression9.constant == Constant.NotAConstant) {
                if (typeBinding2.isArrayType()) {
                    blockScope.problemReporter().annotationValueMustBeArrayInitializer(this.binding.declaringClass, this.name, this.value);
                    return;
                } else {
                    blockScope.problemReporter().annotationValueMustBeConstant(this.binding.declaringClass, this.name, this.value, false);
                    return;
                }
            }
            return;
        }
        Expression[] expressionArr4 = ((ArrayInitializer) expression9).expressions;
        if (expressionArr4 != null) {
            int length4 = expressionArr4.length;
            for (int i12 = 0; i12 < length4; i12++) {
                Expression expression10 = expressionArr4[i12];
                if (expression10.resolvedType != null && expression10.constant == Constant.NotAConstant) {
                    blockScope.problemReporter().annotationValueMustBeConstant(this.binding.declaringClass, this.name, expressionArr4[i12], false);
                }
            }
        }
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        Expression expression;
        if (aSTVisitor.visit(this, blockScope) && (expression = this.value) != null) {
            expression.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        Expression expression;
        if (aSTVisitor.visit(this, classScope) && (expression = this.value) != null) {
            expression.traverse(aSTVisitor, classScope);
        }
        aSTVisitor.endVisit(this, classScope);
    }
}
