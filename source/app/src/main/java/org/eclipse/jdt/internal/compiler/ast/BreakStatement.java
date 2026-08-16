package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.InsideSubRoutineFlowContext;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import w2.C15883c;

public class BreakStatement extends BranchStatement {
    public Expression expression;
    public boolean isImplicit;
    public SwitchExpression switchExpression;

    public BreakStatement(char[] cArr, int i10, int i11) {
        super(cArr, i10, i11);
    }

    @Override
    public void adjustStackSize(BlockScope blockScope, CodeStream codeStream) {
        Expression expression;
        int i10;
        if (this.label != null || (expression = this.expression) == null || this.switchExpression == null || (i10 = expression.postConversionType(blockScope).f102482id) == 6) {
            return;
        }
        if (i10 == 7 || i10 == 8) {
            codeStream.decrStackSize(2);
        } else {
            codeStream.decrStackSize(1);
        }
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        Expression expression;
        int i10;
        char[] cArr = this.label;
        FlowContext targetContextForDefaultBreak = cArr == null ? flowContext.getTargetContextForDefaultBreak() : flowContext.getTargetContextForBreakLabel(cArr);
        if (targetContextForDefaultBreak == null) {
            if (this.label == null) {
                blockScope.problemReporter().invalidBreak(this);
            } else if (this.switchExpression == null) {
                blockScope.problemReporter().undefinedLabel(this);
            }
            return flowInfo;
        }
        if ((this.isImplicit || this.switchExpression != null) && (expression = this.expression) != null) {
            flowInfo = expression.analyseCode(blockScope, flowContext, flowInfo);
            this.expression.checkNPEbyUnboxing(blockScope, flowContext, flowInfo);
            if (flowInfo.reachMode() == 0 && blockScope.compilerOptions().isAnnotationBasedNullAnalysisEnabled) {
                checkAgainstNullAnnotation(blockScope, flowContext, flowInfo, this.expression);
            }
        }
        targetContextForDefaultBreak.recordAbruptExit();
        targetContextForDefaultBreak.expireNullCheckedFieldInfo();
        this.initStateIndex = blockScope.methodScope().recordInitializationStates(flowInfo);
        this.targetLabel = targetContextForDefaultBreak.breakLabel();
        this.subroutines = new SubRoutineStatement[5];
        int i11 = 0;
        while (true) {
            SubRoutineStatement subroutine = flowContext.subroutine();
            if (subroutine != null) {
                SubRoutineStatement[] subRoutineStatementArr = this.subroutines;
                if (i11 == subRoutineStatementArr.length) {
                    SubRoutineStatement[] subRoutineStatementArr2 = new SubRoutineStatement[i11 * 2];
                    this.subroutines = subRoutineStatementArr2;
                    System.arraycopy(subRoutineStatementArr, 0, subRoutineStatementArr2, 0, i11);
                }
                i10 = i11 + 1;
                this.subroutines[i11] = subroutine;
                if (subroutine.isSubRoutineEscaping()) {
                    break;
                }
                i11 = i10;
            }
            flowContext.recordReturnFrom(flowInfo.unconditionalInits());
            flowContext.recordBreakTo(targetContextForDefaultBreak);
            if (!(flowContext instanceof InsideSubRoutineFlowContext)) {
                if (flowContext == targetContextForDefaultBreak) {
                    targetContextForDefaultBreak.recordBreakFrom(flowInfo);
                    break;
                }
            } else {
                ASTNode aSTNode = flowContext.associatedNode;
                if (aSTNode instanceof TryStatement) {
                    flowInfo.addInitializationsFrom(((TryStatement) aSTNode).subRoutineInits);
                }
            }
            flowContext = flowContext.getLocalParent();
            if (flowContext == null) {
                break;
            }
        }
        i10 = i11;
        SubRoutineStatement[] subRoutineStatementArr3 = this.subroutines;
        if (i10 != subRoutineStatementArr3.length) {
            SubRoutineStatement[] subRoutineStatementArr4 = new SubRoutineStatement[i10];
            this.subroutines = subRoutineStatementArr4;
            System.arraycopy(subRoutineStatementArr3, 0, subRoutineStatementArr4, 0, i10);
        }
        return FlowInfo.DEAD_END;
    }

    @Override
    public boolean doesNotCompleteNormally() {
        return true;
    }

    @Override
    public void generateExpressionResultCode(BlockScope blockScope, CodeStream codeStream) {
        Expression expression;
        if (this.label != null || (expression = this.expression) == null) {
            return;
        }
        expression.generateCode(blockScope, codeStream, this.switchExpression != null);
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        if (!this.isImplicit) {
            ASTNode.printIndent(i10, stringBuffer).append("break");
        }
        if (this.label != null) {
            stringBuffer.append(C15883c.f126249O);
            stringBuffer.append(this.label);
        }
        if (this.expression != null) {
            stringBuffer.append(C15883c.f126249O);
            this.expression.printExpression(i10, stringBuffer);
        }
        stringBuffer.append(';');
        return stringBuffer;
    }

    @Override
    public void resolve(BlockScope blockScope) {
        SwitchExpression switchExpression;
        super.resolve(blockScope);
        Expression expression = this.expression;
        if (expression == null || ((switchExpression = this.switchExpression) == null && !this.isImplicit)) {
            if (expression != null || this.switchExpression == null) {
                return;
            }
            blockScope.problemReporter().switchExpressionBreakMissingValue(this);
            return;
        }
        if (switchExpression == null && this.isImplicit && !expression.statementExpression() && blockScope.compilerOptions().enablePreviewFeatures) {
            blockScope.problemReporter().invalidExpressionAsStatement(this.expression);
        } else {
            this.expression.resolveType(blockScope);
        }
    }

    @Override
    public TypeBinding resolveExpressionType(BlockScope blockScope) {
        Expression expression = this.expression;
        if (expression != null) {
            return expression.resolveType(blockScope);
        }
        return null;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        Expression expression;
        if (aSTVisitor.visit(this, blockScope) && (expression = this.expression) != null) {
            expression.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }
}
