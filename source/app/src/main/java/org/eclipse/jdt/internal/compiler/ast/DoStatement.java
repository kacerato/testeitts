package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.LoopingFlowContext;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class DoStatement extends Statement {
    public Statement action;
    private BranchLabel breakLabel;
    public Expression condition;
    private BranchLabel continueLabel;
    int mergedInitStateIndex = -1;
    int preConditionInitStateIndex = -1;

    public DoStatement(Expression expression, Statement statement, int i10, int i11) {
        this.sourceStart = i10;
        this.sourceEnd = i11;
        this.condition = expression;
        this.action = statement;
        if (statement instanceof EmptyStatement) {
            statement.bits |= 1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c5  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        FlowInfo flowInfo2;
        UnconditionalFlowInfo unconditionalFlowInfo;
        LoopingFlowContext loopingFlowContext;
        FlowInfo analyseCode;
        FlowInfo flowInfo3;
        this.breakLabel = new BranchLabel();
        this.continueLabel = new BranchLabel();
        LoopingFlowContext loopingFlowContext2 = new LoopingFlowContext(flowContext, flowInfo, this, this.breakLabel, this.continueLabel, blockScope, false);
        Constant constant = this.condition.constant;
        Constant constant2 = Constant.NotAConstant;
        boolean z10 = constant != constant2 && constant.booleanValue();
        Constant optimizedBooleanConstant = this.condition.optimizedBooleanConstant();
        boolean z11 = optimizedBooleanConstant != constant2 && optimizedBooleanConstant.booleanValue();
        boolean z12 = (optimizedBooleanConstant == constant2 || optimizedBooleanConstant.booleanValue()) ? false : true;
        int reachMode = flowInfo.reachMode();
        UnconditionalFlowInfo nullInfoLessUnconditionalCopy = flowInfo.nullInfoLessUnconditionalCopy();
        Statement statement = this.action;
        if (statement != null && !statement.isEmptyBlock()) {
            nullInfoLessUnconditionalCopy = this.action.analyseCode(blockScope, loopingFlowContext2, nullInfoLessUnconditionalCopy).unconditionalInits();
            if ((nullInfoLessUnconditionalCopy.tagBits & loopingFlowContext2.initsOnContinue.tagBits & 1) != 0) {
                this.continueLabel = null;
            }
            if ((this.condition.implicitConversion & 1024) != 0) {
                flowInfo2 = flowInfo.unconditionalInits().addInitializationsFrom(nullInfoLessUnconditionalCopy.mergedWith(loopingFlowContext2.initsOnContinue));
                unconditionalFlowInfo = nullInfoLessUnconditionalCopy;
                this.condition.checkNPEbyUnboxing(blockScope, flowContext, flowInfo2);
                unconditionalFlowInfo.setReachMode(reachMode);
                Expression expression = this.condition;
                boolean z13 = z11;
                loopingFlowContext = new LoopingFlowContext(flowContext, flowInfo, this, null, null, blockScope, true);
                analyseCode = expression.analyseCode(blockScope, loopingFlowContext, (this.action != null ? unconditionalFlowInfo : unconditionalFlowInfo.mergedWith(loopingFlowContext2.initsOnContinue)).copy());
                this.preConditionInitStateIndex = blockScope.methodScope().recordInitializationStates(unconditionalFlowInfo.mergedWith(loopingFlowContext2.initsOnContinue));
                if (!z12 || this.continueLabel == null) {
                    loopingFlowContext2.complainOnDeferredNullChecks(blockScope, flowInfo.unconditionalCopy().addPotentialNullInfoFrom(analyseCode.initsWhenTrue().unconditionalInits()), false);
                    loopingFlowContext.complainOnDeferredNullChecks(blockScope, unconditionalFlowInfo.addPotentialNullInfoFrom(analyseCode.initsWhenTrue().unconditionalInits()), false);
                } else {
                    loopingFlowContext2.complainOnDeferredFinalChecks(blockScope, analyseCode);
                    loopingFlowContext.complainOnDeferredFinalChecks(blockScope, analyseCode);
                    loopingFlowContext2.complainOnDeferredNullChecks(blockScope, flowInfo.unconditionalCopy().addPotentialNullInfoFrom(analyseCode.initsWhenTrue().unconditionalInits()));
                    loopingFlowContext.complainOnDeferredNullChecks(blockScope, unconditionalFlowInfo.addPotentialNullInfoFrom(analyseCode.initsWhenTrue().unconditionalInits()));
                }
                if (loopingFlowContext2.hasEscapingExceptions()) {
                    FlowInfo copy = flowInfo.copy();
                    loopingFlowContext2.simulateThrowAfterLoopBack(copy.mergedWith(copy.unconditionalCopy().addNullInfoFrom(analyseCode.initsWhenTrue()).unconditionalInits()));
                }
                flowInfo3 = loopingFlowContext2.initsOnBreak;
                if ((flowInfo3.tagBits & 3) == 0) {
                    flowInfo3 = flowInfo.unconditionalCopy().addInitializationsFrom(loopingFlowContext2.initsOnBreak);
                }
                if ((analyseCode.tagBits & 3) == 0) {
                    analyseCode = flowInfo.copy().addInitializationsFrom(analyseCode.initsWhenFalse());
                }
                UnconditionalFlowInfo mergedOptimizedBranches = FlowInfo.mergedOptimizedBranches(flowInfo3, z13, analyseCode, false, true ^ z10);
                this.mergedInitStateIndex = blockScope.methodScope().recordInitializationStates(mergedOptimizedBranches);
                return mergedOptimizedBranches;
            }
        }
        flowInfo2 = flowInfo;
        unconditionalFlowInfo = nullInfoLessUnconditionalCopy;
        this.condition.checkNPEbyUnboxing(blockScope, flowContext, flowInfo2);
        unconditionalFlowInfo.setReachMode(reachMode);
        Expression expression2 = this.condition;
        boolean z132 = z11;
        loopingFlowContext = new LoopingFlowContext(flowContext, flowInfo, this, null, null, blockScope, true);
        analyseCode = expression2.analyseCode(blockScope, loopingFlowContext, (this.action != null ? unconditionalFlowInfo : unconditionalFlowInfo.mergedWith(loopingFlowContext2.initsOnContinue)).copy());
        this.preConditionInitStateIndex = blockScope.methodScope().recordInitializationStates(unconditionalFlowInfo.mergedWith(loopingFlowContext2.initsOnContinue));
        if (z12) {
        }
        loopingFlowContext2.complainOnDeferredNullChecks(blockScope, flowInfo.unconditionalCopy().addPotentialNullInfoFrom(analyseCode.initsWhenTrue().unconditionalInits()), false);
        loopingFlowContext.complainOnDeferredNullChecks(blockScope, unconditionalFlowInfo.addPotentialNullInfoFrom(analyseCode.initsWhenTrue().unconditionalInits()), false);
        if (loopingFlowContext2.hasEscapingExceptions()) {
        }
        flowInfo3 = loopingFlowContext2.initsOnBreak;
        if ((flowInfo3.tagBits & 3) == 0) {
        }
        if ((analyseCode.tagBits & 3) == 0) {
        }
        UnconditionalFlowInfo mergedOptimizedBranches2 = FlowInfo.mergedOptimizedBranches(flowInfo3, z132, analyseCode, false, true ^ z10);
        this.mergedInitStateIndex = blockScope.methodScope().recordInitializationStates(mergedOptimizedBranches2);
        return mergedOptimizedBranches2;
    }

    @Override
    public boolean completesByContinue() {
        return this.action.continuesAtOuterLabel();
    }

    @Override
    public boolean doesNotCompleteNormally() {
        Constant constant = this.condition.constant;
        boolean z10 = constant == null || (constant != Constant.NotAConstant && constant.booleanValue());
        Constant optimizedBooleanConstant = this.condition.optimizedBooleanConstant();
        boolean z11 = optimizedBooleanConstant == null || (optimizedBooleanConstant != Constant.NotAConstant && optimizedBooleanConstant.booleanValue());
        if (z10 || z11) {
            Statement statement = this.action;
            return statement == null || !statement.breaksOut(null);
        }
        Statement statement2 = this.action;
        return (statement2 == null || statement2.breaksOut(null) || !this.action.doesNotCompleteNormally() || this.action.completesByContinue()) ? false : true;
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        int i10 = codeStream.position;
        BranchLabel branchLabel = new BranchLabel(codeStream);
        if (this.action != null) {
            branchLabel.tagBits |= 2;
        }
        branchLabel.place();
        this.breakLabel.initialize(codeStream);
        BranchLabel branchLabel2 = this.continueLabel;
        boolean z10 = branchLabel2 != null;
        if (z10) {
            branchLabel2.initialize(codeStream);
        }
        Statement statement = this.action;
        if (statement != null) {
            statement.generateCode(blockScope, codeStream);
        }
        if (z10) {
            this.continueLabel.place();
            int i11 = this.preConditionInitStateIndex;
            if (i11 != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(blockScope, i11);
                codeStream.addDefinitelyAssignedVariables(blockScope, this.preConditionInitStateIndex);
            }
            Constant optimizedBooleanConstant = this.condition.optimizedBooleanConstant();
            if (optimizedBooleanConstant == Constant.NotAConstant || optimizedBooleanConstant.booleanValue()) {
                this.condition.generateOptimizedBoolean(blockScope, codeStream, branchLabel, null, true);
            } else {
                this.condition.generateCode(blockScope, codeStream, false);
            }
        }
        int i12 = this.mergedInitStateIndex;
        if (i12 != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(blockScope, i12);
            codeStream.addDefinitelyAssignedVariables(blockScope, this.mergedInitStateIndex);
        }
        if (this.breakLabel.forwardReferenceCount() > 0) {
            this.breakLabel.place();
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer).append("do");
        if (this.action == null) {
            stringBuffer.append(" ;\n");
        } else {
            stringBuffer.append('\n');
            this.action.printStatement(i10 + 1, stringBuffer).append('\n');
        }
        stringBuffer.append("while (");
        StringBuffer printExpression = this.condition.printExpression(0, stringBuffer);
        printExpression.append(");");
        return printExpression;
    }

    @Override
    public void resolve(BlockScope blockScope) {
        TypeBinding resolveTypeExpecting = this.condition.resolveTypeExpecting(blockScope, TypeBinding.BOOLEAN);
        this.condition.computeConversion(blockScope, resolveTypeExpecting, resolveTypeExpecting);
        Statement statement = this.action;
        if (statement != null) {
            statement.resolve(blockScope);
        }
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            Statement statement = this.action;
            if (statement != null) {
                statement.traverse(aSTVisitor, blockScope);
            }
            this.condition.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }
}
