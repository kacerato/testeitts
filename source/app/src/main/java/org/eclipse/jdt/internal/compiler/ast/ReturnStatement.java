package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.InitializationFlowContext;
import org.eclipse.jdt.internal.compiler.flow.InsideSubRoutineFlowContext;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.VoidTypeBinding;

public class ReturnStatement extends Statement {
    public Expression expression;
    private boolean implicitReturn;
    public int initStateIndex;
    public LocalVariableBinding saveValueVariable;
    public SubRoutineStatement[] subroutines;

    public ReturnStatement(Expression expression, int i10, int i11) {
        this(expression, i10, i11, false);
    }

    private boolean needValueStore() {
        Expression expression = this.expression;
        if (expression != null) {
            return (expression.constant == Constant.NotAConstant || (expression.implicitConversion & 512) != 0) && !(expression instanceof NullLiteral);
        }
        return false;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        int i10;
        Expression expression;
        FakedTrackingVariable closeTrackingVariable;
        TypeBinding typeBinding;
        Expression expression2 = this.expression;
        if ((expression2 instanceof FunctionalExpression) && ((typeBinding = expression2.resolvedType) == null || !typeBinding.isValidBinding())) {
            flowContext.recordAbruptExit();
            return FlowInfo.DEAD_END;
        }
        MethodScope methodScope = blockScope.methodScope();
        Expression expression3 = this.expression;
        if (expression3 != null) {
            flowInfo = expression3.analyseCode(blockScope, flowContext, flowInfo);
            this.expression.checkNPEbyUnboxing(blockScope, flowContext, flowInfo);
            if (flowInfo.reachMode() == 0 && blockScope.compilerOptions().isAnnotationBasedNullAnalysisEnabled) {
                checkAgainstNullAnnotation(blockScope, flowContext, flowInfo, this.expression);
            }
            if (blockScope.compilerOptions().analyseResourceLeaks && (closeTrackingVariable = FakedTrackingVariable.getCloseTrackingVariable(this.expression, flowInfo, flowContext)) != null) {
                if (methodScope != closeTrackingVariable.methodScope) {
                    closeTrackingVariable.markClosedInNestedMethod();
                }
                flowInfo = FakedTrackingVariable.markPassedToOutside(blockScope, this.expression, flowInfo, flowContext, true);
            }
        }
        this.initStateIndex = methodScope.recordInitializationStates(flowInfo);
        boolean needValueStore = needValueStore();
        FlowContext flowContext2 = flowContext;
        boolean z10 = true;
        int i11 = 0;
        boolean z11 = false;
        while (true) {
            SubRoutineStatement subroutine = flowContext2.subroutine();
            if (subroutine != null) {
                if (this.subroutines == null) {
                    this.subroutines = new SubRoutineStatement[5];
                }
                SubRoutineStatement[] subRoutineStatementArr = this.subroutines;
                if (i11 == subRoutineStatementArr.length) {
                    SubRoutineStatement[] subRoutineStatementArr2 = new SubRoutineStatement[i11 * 2];
                    this.subroutines = subRoutineStatementArr2;
                    System.arraycopy(subRoutineStatementArr, 0, subRoutineStatementArr2, 0, i11);
                }
                i10 = i11 + 1;
                this.subroutines[i11] = subroutine;
                if (subroutine.isSubRoutineEscaping()) {
                    this.bits |= 536870912;
                    z11 = false;
                    break;
                }
                if ((subroutine instanceof TryStatement) && ((TryStatement) subroutine).resources.length > 0) {
                    z10 = false;
                }
                i11 = i10;
            }
            flowContext2.recordReturnFrom(flowInfo.unconditionalInits());
            if (flowContext2 instanceof InsideSubRoutineFlowContext) {
                ASTNode aSTNode = flowContext2.associatedNode;
                if (aSTNode instanceof SynchronizedStatement) {
                    this.bits |= 1073741824;
                } else if (aSTNode instanceof TryStatement) {
                    TryStatement tryStatement = (TryStatement) aSTNode;
                    flowInfo.addInitializationsFrom(tryStatement.subRoutineInits);
                    if (needValueStore) {
                        if (this.saveValueVariable == null) {
                            prepareSaveValueLocation(tryStatement);
                        }
                        this.initStateIndex = methodScope.recordInitializationStates(flowInfo);
                        z11 = true;
                    }
                }
            } else if (flowContext2 instanceof InitializationFlowContext) {
                blockScope.problemReporter().cannotReturnInInitializer(this);
                return FlowInfo.DEAD_END;
            }
            flowContext2 = flowContext2.getLocalParent();
            if (flowContext2 == null) {
                i10 = i11;
                break;
            }
        }
        SubRoutineStatement[] subRoutineStatementArr3 = this.subroutines;
        if (subRoutineStatementArr3 != null && i10 != subRoutineStatementArr3.length) {
            SubRoutineStatement[] subRoutineStatementArr4 = new SubRoutineStatement[i10];
            this.subroutines = subRoutineStatementArr4;
            System.arraycopy(subRoutineStatementArr3, 0, subRoutineStatementArr4, 0, i10);
        }
        if (z11) {
            LocalVariableBinding localVariableBinding = this.saveValueVariable;
            if (localVariableBinding != null) {
                localVariableBinding.useFlag = 1;
            }
        } else {
            this.saveValueVariable = null;
            if ((this.bits & 1073741824) == 0 && (expression = this.expression) != null && TypeBinding.equalsEquals(expression.resolvedType, TypeBinding.BOOLEAN) && z10) {
                this.expression.bits |= 16;
            }
        }
        blockScope.checkUnclosedCloseables(flowInfo, flowContext, this, blockScope);
        flowContext.recordAbruptExit();
        flowContext.expireNullCheckedFieldInfo();
        return FlowInfo.DEAD_END;
    }

    @Override
    public boolean doesNotCompleteNormally() {
        return true;
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
        boolean z10;
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        int i10 = codeStream.position;
        if (needValueStore()) {
            this.expression.generateCode(blockScope, codeStream, needValue());
            generateStoreSaveValueIfNecessary(codeStream);
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.subroutines != null) {
            Expression expression = this.expression;
            Object reusableJSRTarget = expression == null ? TypeBinding.VOID : expression.reusableJSRTarget();
            int length = this.subroutines.length;
            for (int i11 = 0; i11 < length; i11++) {
                if (this.subroutines[i11].generateSubRoutineInvocation(blockScope, codeStream, reusableJSRTarget, this.initStateIndex, this.saveValueVariable)) {
                    codeStream.recordPositionsFrom(i10, this.sourceStart);
                    SubRoutineStatement.reenterAllExceptionHandlers(this.subroutines, i11, codeStream);
                    return;
                }
            }
        }
        LocalVariableBinding localVariableBinding = this.saveValueVariable;
        if (localVariableBinding != null) {
            codeStream.load(localVariableBinding);
        }
        Expression expression2 = this.expression;
        if (expression2 != null && !z10) {
            expression2.generateCode(blockScope, codeStream, true);
            generateStoreSaveValueIfNecessary(codeStream);
        }
        generateReturnBytecode(codeStream);
        LocalVariableBinding localVariableBinding2 = this.saveValueVariable;
        if (localVariableBinding2 != null) {
            codeStream.removeVariable(localVariableBinding2);
        }
        int i12 = this.initStateIndex;
        if (i12 != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(blockScope, i12);
            codeStream.addDefinitelyAssignedVariables(blockScope, this.initStateIndex);
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
        SubRoutineStatement.reenterAllExceptionHandlers(this.subroutines, -1, codeStream);
    }

    public void generateReturnBytecode(CodeStream codeStream) {
        codeStream.generateReturnBytecode(this.expression);
    }

    public void generateStoreSaveValueIfNecessary(CodeStream codeStream) {
        LocalVariableBinding localVariableBinding = this.saveValueVariable;
        if (localVariableBinding != null) {
            codeStream.store(localVariableBinding, false);
            codeStream.addVariable(this.saveValueVariable);
        }
    }

    public boolean needValue() {
        if (this.saveValueVariable != null) {
            return true;
        }
        int i10 = this.bits;
        return (1073741824 & i10) != 0 || (i10 & 536870912) == 0;
    }

    public void prepareSaveValueLocation(TryStatement tryStatement) {
        this.saveValueVariable = tryStatement.secretReturnValue;
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer).append("return ");
        Expression expression = this.expression;
        if (expression != null) {
            expression.printExpression(0, stringBuffer);
        }
        stringBuffer.append(';');
        return stringBuffer;
    }

    @Override
    public void resolve(BlockScope blockScope) {
        TypeBinding typeBinding;
        ReferenceContext referenceContext = blockScope.methodScope().referenceContext;
        LambdaExpression lambdaExpression = referenceContext instanceof LambdaExpression ? (LambdaExpression) referenceContext : null;
        if (lambdaExpression != null) {
            typeBinding = lambdaExpression.expectedResultType();
        } else if (referenceContext instanceof AbstractMethodDeclaration) {
            MethodBinding methodBinding = ((AbstractMethodDeclaration) referenceContext).binding;
            typeBinding = methodBinding == null ? null : methodBinding.returnType;
        } else {
            typeBinding = TypeBinding.VOID;
        }
        Expression expression = this.expression;
        if (expression != null) {
            expression.setExpressionContext(ExpressionContext.ASSIGNMENT_CONTEXT);
            this.expression.setExpectedType(typeBinding);
            if (lambdaExpression != null && lambdaExpression.argumentsTypeElided()) {
                Expression expression2 = this.expression;
                if (expression2 instanceof CastExpression) {
                    expression2.bits |= 32;
                }
            }
        }
        VoidTypeBinding voidTypeBinding = TypeBinding.VOID;
        if (typeBinding == voidTypeBinding) {
            Expression expression3 = this.expression;
            if (expression3 == null) {
                if (lambdaExpression != null) {
                    lambdaExpression.returnsExpression(null, voidTypeBinding);
                    return;
                }
                return;
            }
            TypeBinding resolveType = expression3.resolveType(blockScope);
            if (lambdaExpression != null) {
                lambdaExpression.returnsExpression(this.expression, resolveType);
            }
            if ((this.implicitReturn && (resolveType == voidTypeBinding || this.expression.statementExpression())) || resolveType == null) {
                return;
            }
            blockScope.problemReporter().attemptToReturnNonVoidExpression(this, resolveType);
            return;
        }
        Expression expression4 = this.expression;
        if (expression4 == null) {
            if (lambdaExpression != null) {
                lambdaExpression.returnsExpression(null, typeBinding);
            }
            if (typeBinding != null) {
                blockScope.problemReporter().shouldReturn(typeBinding, this);
                return;
            }
            return;
        }
        TypeBinding resolveType2 = expression4.resolveType(blockScope);
        if (lambdaExpression != null) {
            lambdaExpression.returnsExpression(this.expression, resolveType2);
        }
        if (resolveType2 == null) {
            return;
        }
        if (resolveType2 == voidTypeBinding) {
            blockScope.problemReporter().attemptToReturnVoidValue(this);
            return;
        }
        if (typeBinding == null) {
            return;
        }
        if (typeBinding.isProperType(true) && lambdaExpression != null && lambdaExpression.updateLocalTypesInMethod(lambdaExpression.descriptor)) {
            typeBinding = lambdaExpression.expectedResultType();
        }
        if (TypeBinding.notEquals(typeBinding, resolveType2)) {
            blockScope.compilationUnitScope().recordTypeConversion(typeBinding, resolveType2);
        }
        if (!this.expression.isConstantValueOfTypeAssignableToType(resolveType2, typeBinding) && !resolveType2.isCompatibleWith(typeBinding, blockScope)) {
            if (!isBoxingCompatible(resolveType2, typeBinding, this.expression, blockScope)) {
                if ((typeBinding.tagBits & 128) == 0) {
                    blockScope.problemReporter().typeMismatchError(resolveType2, typeBinding, this.expression, this);
                    return;
                }
                return;
            } else {
                this.expression.computeConversion(blockScope, typeBinding, resolveType2);
                Expression expression5 = this.expression;
                if ((expression5 instanceof CastExpression) && (expression5.bits & 16416) == 0) {
                    CastExpression.checkNeedForAssignedCast(blockScope, typeBinding, (CastExpression) expression5);
                    return;
                }
                return;
            }
        }
        this.expression.computeConversion(blockScope, typeBinding, resolveType2);
        if (resolveType2.needsUncheckedConversion(typeBinding)) {
            blockScope.problemReporter().unsafeTypeConversion(this.expression, resolveType2, typeBinding);
        }
        Expression expression6 = this.expression;
        if (expression6 instanceof CastExpression) {
            if ((expression6.bits & 16416) == 0) {
                CastExpression.checkNeedForAssignedCast(blockScope, typeBinding, (CastExpression) expression6);
                return;
            }
            if (lambdaExpression == null || !lambdaExpression.argumentsTypeElided()) {
                return;
            }
            Expression expression7 = this.expression;
            if ((expression7.bits & 16384) == 0 || !TypeBinding.equalsEquals(((CastExpression) expression7).expression.resolvedType, typeBinding)) {
                return;
            }
            blockScope.problemReporter().unnecessaryCast((CastExpression) this.expression);
        }
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        Expression expression;
        if (aSTVisitor.visit(this, blockScope) && (expression = this.expression) != null) {
            expression.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    public ReturnStatement(Expression expression, int i10, int i11, boolean z10) {
        this.initStateIndex = -1;
        this.sourceStart = i10;
        this.sourceEnd = i11;
        this.expression = expression;
        this.implicitReturn = z10;
    }
}
