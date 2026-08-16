package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.InsideSubRoutineFlowContext;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;

public class ContinueStatement extends BranchStatement {
    public ContinueStatement(char[] cArr, int i10, int i11) {
        super(cArr, i10, i11);
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        int i10;
        char[] cArr = this.label;
        FlowContext targetContextForDefaultContinue = cArr == null ? flowContext.getTargetContextForDefaultContinue() : flowContext.getTargetContextForContinueLabel(cArr);
        if (targetContextForDefaultContinue == null) {
            if (this.label == null) {
                blockScope.problemReporter().invalidContinue(this);
            } else {
                blockScope.problemReporter().undefinedLabel(this);
            }
            return flowInfo;
        }
        targetContextForDefaultContinue.recordAbruptExit();
        targetContextForDefaultContinue.expireNullCheckedFieldInfo();
        if (targetContextForDefaultContinue == FlowContext.NotContinuableContext) {
            blockScope.problemReporter().invalidContinue(this);
            return flowInfo;
        }
        this.initStateIndex = blockScope.methodScope().recordInitializationStates(flowInfo);
        this.targetLabel = targetContextForDefaultContinue.continueLabel();
        this.subroutines = new SubRoutineStatement[5];
        int i11 = 0;
        FlowContext flowContext2 = flowContext;
        while (true) {
            SubRoutineStatement subroutine = flowContext2.subroutine();
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
            flowContext2.recordReturnFrom(flowInfo.unconditionalInits());
            if (!(flowContext2 instanceof InsideSubRoutineFlowContext)) {
                if (flowContext2 == targetContextForDefaultContinue) {
                    targetContextForDefaultContinue.recordContinueFrom(flowContext, flowInfo);
                    break;
                }
            } else {
                ASTNode aSTNode = flowContext2.associatedNode;
                if (aSTNode instanceof TryStatement) {
                    flowInfo.addInitializationsFrom(((TryStatement) aSTNode).subRoutineInits);
                }
            }
            flowContext2 = flowContext2.getLocalParent();
            if (flowContext2 == null) {
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
    public boolean completesByContinue() {
        return true;
    }

    @Override
    public boolean doesNotCompleteNormally() {
        return true;
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer).append("continue ");
        char[] cArr = this.label;
        if (cArr != null) {
            stringBuffer.append(cArr);
        }
        stringBuffer.append(';');
        return stringBuffer;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        aSTVisitor.visit(this, blockScope);
        aSTVisitor.endVisit(this, blockScope);
    }
}
