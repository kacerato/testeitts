package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.core.JavaElement;

public class ArrayInitializer extends Expression {
    public ArrayBinding binding;
    public Expression[] expressions;

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        if (this.expressions != null) {
            boolean z10 = blockScope.compilerOptions().analyseResourceLeaks;
            boolean usesNullTypeAnnotations = blockScope.environment().usesNullTypeAnnotations();
            int length = this.expressions.length;
            for (int i10 = 0; i10 < length; i10++) {
                flowInfo = this.expressions[i10].analyseCode(blockScope, flowContext, flowInfo).unconditionalInits();
                if (z10 && FakedTrackingVariable.isAnyCloseable(this.expressions[i10].resolvedType)) {
                    flowInfo = FakedTrackingVariable.markPassedToOutside(blockScope, this.expressions[i10], flowInfo, flowContext, false);
                }
                if (usesNullTypeAnnotations) {
                    checkAgainstNullTypeAnnotation(blockScope, this.binding.elementsType(), this.expressions[i10], flowContext, flowInfo);
                }
            }
        }
        return flowInfo;
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        generateCode(null, null, blockScope, codeStream, z10);
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
        if (this.expressions != null) {
            int i11 = 20;
            for (int i12 = 0; i12 < this.expressions.length; i12++) {
                if (i12 > 0) {
                    stringBuffer.append(", ");
                }
                this.expressions[i12].printExpression(0, stringBuffer);
                i11--;
                if (i11 == 0) {
                    stringBuffer.append('\n');
                    ASTNode.printIndent(i10 + 1, stringBuffer);
                    i11 = 20;
                }
            }
        }
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveTypeExpecting(BlockScope blockScope, TypeBinding typeBinding) {
        ReferenceBinding referenceBinding;
        TypeBinding resolveType;
        this.constant = Constant.NotAConstant;
        int i10 = 1;
        if (typeBinding instanceof ArrayBinding) {
            if ((this.bits & 1) == 0) {
                TypeBinding leafComponentType = typeBinding.leafComponentType();
                if (!leafComponentType.isReifiable()) {
                    blockScope.problemReporter().illegalGenericArray(leafComponentType, this);
                }
            }
            ArrayBinding arrayBinding = (ArrayBinding) typeBinding;
            this.binding = arrayBinding;
            this.resolvedType = arrayBinding;
            if (this.expressions == null) {
                return arrayBinding;
            }
            TypeBinding elementsType = arrayBinding.elementsType();
            int length = this.expressions.length;
            for (int i11 = 0; i11 < length; i11++) {
                Expression expression = this.expressions[i11];
                expression.setExpressionContext(ExpressionContext.ASSIGNMENT_CONTEXT);
                expression.setExpectedType(elementsType);
                TypeBinding resolveTypeExpecting = expression instanceof ArrayInitializer ? expression.resolveTypeExpecting(blockScope, elementsType) : expression.resolveType(blockScope);
                if (resolveTypeExpecting != null) {
                    if (TypeBinding.notEquals(elementsType, resolveTypeExpecting)) {
                        blockScope.compilationUnitScope().recordTypeConversion(elementsType, resolveTypeExpecting);
                    }
                    if (expression.isConstantValueOfTypeAssignableToType(resolveTypeExpecting, elementsType) || resolveTypeExpecting.isCompatibleWith(elementsType)) {
                        expression.computeConversion(blockScope, elementsType, resolveTypeExpecting);
                    } else if (isBoxingCompatible(resolveTypeExpecting, elementsType, expression, blockScope)) {
                        expression.computeConversion(blockScope, elementsType, resolveTypeExpecting);
                    } else {
                        blockScope.problemReporter().typeMismatchError(resolveTypeExpecting, elementsType, expression, (ASTNode) null);
                    }
                }
            }
            return this.binding;
        }
        Expression[] expressionArr = this.expressions;
        if (expressionArr == null) {
            resolveType = blockScope.getJavaLangObject();
        } else {
            Expression expression2 = expressionArr[0];
            int i12 = 1;
            while (expression2 != null && (expression2 instanceof ArrayInitializer)) {
                i12++;
                Expression[] expressionArr2 = ((ArrayInitializer) expression2).expressions;
                if (expressionArr2 == null) {
                    referenceBinding = blockScope.getJavaLangObject();
                    expression2 = null;
                    break;
                }
                expression2 = expressionArr2[0];
            }
            referenceBinding = null;
            resolveType = expression2 != null ? expression2.resolveType(blockScope) : referenceBinding;
            int length2 = this.expressions.length;
            while (i10 < length2) {
                Expression expression3 = this.expressions[i10];
                if (expression3 != null) {
                    expression3.resolveType(blockScope);
                }
                i10++;
            }
            i10 = i12;
        }
        if (resolveType != null) {
            this.resolvedType = blockScope.createArrayType(resolveType, i10);
            if (typeBinding != null) {
                blockScope.problemReporter().typeMismatchError(this.resolvedType, typeBinding, this, (ASTNode) null);
            }
        }
        return null;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        Expression[] expressionArr;
        if (aSTVisitor.visit(this, blockScope) && (expressionArr = this.expressions) != null) {
            int length = expressionArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.expressions[i10].traverse(aSTVisitor, blockScope);
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    public void generateCode(TypeReference typeReference, ArrayAllocationExpression arrayAllocationExpression, BlockScope blockScope, CodeStream codeStream, boolean z10) {
        int i10 = codeStream.position;
        Expression[] expressionArr = this.expressions;
        int length = expressionArr == null ? 0 : expressionArr.length;
        codeStream.generateInlinedValue(length);
        codeStream.newArray(typeReference, arrayAllocationExpression, this.binding);
        if (this.expressions != null) {
            ArrayBinding arrayBinding = this.binding;
            int i11 = arrayBinding.dimensions > 1 ? -1 : arrayBinding.leafComponentType.f102482id;
            for (int i12 = 0; i12 < length; i12++) {
                Expression expression = this.expressions[i12];
                Constant constant = expression.constant;
                if (constant != Constant.NotAConstant) {
                    switch (i11) {
                        case 2:
                        case 3:
                        case 4:
                        case 7:
                        case 10:
                            if (constant.longValue() != 0) {
                                codeStream.dup();
                                codeStream.generateInlinedValue(i12);
                                expression.generateCode(blockScope, codeStream, true);
                                codeStream.arrayAtPut(i11, false);
                                break;
                            } else {
                                break;
                            }
                        case 5:
                            if (constant.booleanValue()) {
                                codeStream.dup();
                                codeStream.generateInlinedValue(i12);
                                expression.generateCode(blockScope, codeStream, true);
                                codeStream.arrayAtPut(i11, false);
                                break;
                            } else {
                                break;
                            }
                        case 6:
                        default:
                            if (expression instanceof NullLiteral) {
                                break;
                            } else {
                                codeStream.dup();
                                codeStream.generateInlinedValue(i12);
                                expression.generateCode(blockScope, codeStream, true);
                                codeStream.arrayAtPut(i11, false);
                                break;
                            }
                        case 8:
                        case 9:
                            double doubleValue = constant.doubleValue();
                            if (doubleValue == -0.0d || doubleValue != 0.0d) {
                                codeStream.dup();
                                codeStream.generateInlinedValue(i12);
                                expression.generateCode(blockScope, codeStream, true);
                                codeStream.arrayAtPut(i11, false);
                                break;
                            } else {
                                break;
                            }
                    }
                } else if (!(expression instanceof NullLiteral)) {
                    codeStream.dup();
                    codeStream.generateInlinedValue(i12);
                    expression.generateCode(blockScope, codeStream, true);
                    codeStream.arrayAtPut(i11, false);
                }
            }
        }
        if (z10) {
            codeStream.generateImplicitConversion(this.implicitConversion);
        } else {
            codeStream.pop();
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }
}
