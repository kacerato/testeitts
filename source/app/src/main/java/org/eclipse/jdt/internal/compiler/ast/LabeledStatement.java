package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.LabelFlowContext;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;

public class LabeledStatement extends Statement {
    public char[] label;
    public int labelEnd;
    int mergedInitStateIndex = -1;
    public Statement statement;
    public BranchLabel targetLabel;

    public LabeledStatement(char[] cArr, Statement statement, long j10, int i10) {
        this.statement = statement;
        if (statement instanceof EmptyStatement) {
            statement.bits |= 1;
        }
        this.label = cArr;
        this.sourceStart = (int) (j10 >>> 32);
        this.labelEnd = (int) j10;
        this.sourceEnd = i10;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        Statement statement = this.statement;
        if (statement == null) {
            return flowInfo;
        }
        char[] cArr = this.label;
        BranchLabel branchLabel = new BranchLabel();
        this.targetLabel = branchLabel;
        LabelFlowContext labelFlowContext = new LabelFlowContext(flowContext, this, cArr, branchLabel, blockScope);
        FlowInfo analyseCode = statement.analyseCode(blockScope, labelFlowContext, flowInfo);
        boolean z10 = (analyseCode.tagBits & 3) != 0 && (labelFlowContext.initsOnBreak.tagBits & 3) == 0;
        UnconditionalFlowInfo mergedWith = analyseCode.mergedWith(labelFlowContext.initsOnBreak);
        if (z10) {
            mergedWith.addNullInfoFrom(flowInfo.unconditionalFieldLessCopy()).addNullInfoFrom(labelFlowContext.initsOnBreak.unconditionalFieldLessCopy());
        }
        this.mergedInitStateIndex = blockScope.methodScope().recordInitializationStates(mergedWith);
        if ((this.bits & 64) == 0) {
            blockScope.problemReporter().unusedLabel(this);
        }
        return mergedWith;
    }

    @Override
    public boolean completesByContinue() {
        return this.statement instanceof ContinueStatement;
    }

    @Override
    public ASTNode concreteStatement() {
        return this.statement;
    }

    @Override
    public boolean doesNotCompleteNormally() {
        if (this.statement.breaksOut(this.label)) {
            return false;
        }
        return this.statement.doesNotCompleteNormally();
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        int i10 = codeStream.position;
        BranchLabel branchLabel = this.targetLabel;
        if (branchLabel != null) {
            branchLabel.initialize(codeStream);
            Statement statement = this.statement;
            if (statement != null) {
                statement.generateCode(blockScope, codeStream);
            }
            this.targetLabel.place();
        }
        int i11 = this.mergedInitStateIndex;
        if (i11 != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(blockScope, i11);
            codeStream.addDefinitelyAssignedVariables(blockScope, this.mergedInitStateIndex);
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        StringBuffer printIndent = ASTNode.printIndent(i10, stringBuffer);
        printIndent.append(this.label);
        printIndent.append(": ");
        Statement statement = this.statement;
        if (statement == null) {
            stringBuffer.append(';');
        } else {
            statement.printStatement(0, stringBuffer);
        }
        return stringBuffer;
    }

    @Override
    public void resolve(BlockScope blockScope) {
        Statement statement = this.statement;
        if (statement != null) {
            statement.resolve(blockScope);
        }
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        Statement statement;
        if (aSTVisitor.visit(this, blockScope) && (statement = this.statement) != null) {
            statement.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }
}
