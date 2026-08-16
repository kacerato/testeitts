package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.LoopingFlowContext;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class WhileStatement extends Statement {
    public Statement action;
    private BranchLabel breakLabel;
    public Expression condition;
    private BranchLabel continueLabel;
    int preCondInitStateIndex = -1;
    int condIfTrueInitStateIndex = -1;
    int mergedInitStateIndex = -1;

    public WhileStatement(Expression expression, Statement statement, int i10, int i11) {
        this.condition = expression;
        this.action = statement;
        if (statement instanceof EmptyStatement) {
            statement.bits |= 1;
        }
        this.sourceStart = i10;
        this.sourceEnd = i11;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        FlowInfo copy;
        boolean z10;
        boolean z11;
        UnconditionalFlowInfo mergedWith;
        this.breakLabel = new BranchLabel();
        this.continueLabel = new BranchLabel();
        int i10 = (flowInfo.reachMode() & 3) != 0 ? 1 : 0;
        Constant constant = this.condition.constant;
        Constant constant2 = Constant.NotAConstant;
        boolean z12 = constant != constant2 && constant.booleanValue();
        boolean z13 = (constant == constant2 || constant.booleanValue()) ? false : true;
        Constant optimizedBooleanConstant = this.condition.optimizedBooleanConstant();
        boolean z14 = optimizedBooleanConstant != constant2 && optimizedBooleanConstant.booleanValue();
        boolean z15 = (optimizedBooleanConstant == constant2 || optimizedBooleanConstant.booleanValue()) ? false : true;
        this.preCondInitStateIndex = blockScope.methodScope().recordInitializationStates(flowInfo);
        UnconditionalFlowInfo nullInfoLessUnconditionalCopy = flowInfo.nullInfoLessUnconditionalCopy();
        Expression expression = this.condition;
        boolean z16 = z15;
        boolean z17 = z14;
        LoopingFlowContext loopingFlowContext = new LoopingFlowContext(flowContext, flowInfo, this, null, null, blockScope, true);
        FlowInfo analyseCode = expression.analyseCode(blockScope, loopingFlowContext, nullInfoLessUnconditionalCopy);
        this.condition.checkNPEbyUnboxing(blockScope, flowContext, flowInfo);
        Statement statement = this.action;
        if (statement == null || (statement.isEmptyBlock() && blockScope.compilerOptions().complianceLevel <= ClassFileConstants.JDK1_3)) {
            boolean z18 = z12;
            loopingFlowContext.complainOnDeferredFinalChecks(blockScope, analyseCode);
            loopingFlowContext.complainOnDeferredNullChecks(blockScope, analyseCode.unconditionalInits());
            if (z18) {
                return FlowInfo.DEAD_END;
            }
            FlowInfo addInitializationsFrom = flowInfo.copy().addInitializationsFrom(analyseCode.initsWhenFalse());
            if (z17) {
                addInitializationsFrom.setReachMode(1);
            }
            this.mergedInitStateIndex = blockScope.methodScope().recordInitializationStates(addInitializationsFrom);
            return addInitializationsFrom;
        }
        boolean z19 = z12;
        LoopingFlowContext loopingFlowContext2 = new LoopingFlowContext(flowContext, flowInfo, this, this.breakLabel, this.continueLabel, blockScope, true);
        loopingFlowContext2.copyNullCheckedFieldsFrom(loopingFlowContext);
        if (z13) {
            copy = FlowInfo.DEAD_END;
            z10 = z16;
            z11 = true;
        } else {
            copy = analyseCode.initsWhenTrue().copy();
            z10 = z16;
            z11 = true;
            if (z10) {
                copy.setReachMode(1);
            }
        }
        this.condIfTrueInitStateIndex = blockScope.methodScope().recordInitializationStates(analyseCode.initsWhenTrue());
        if (this.action.complainIfUnreachable(copy, blockScope, i10, z11) < 2) {
            copy = this.action.analyseCode(blockScope, loopingFlowContext2, copy);
        }
        FlowInfo copy2 = flowInfo.copy();
        int i11 = copy.tagBits & loopingFlowContext2.initsOnContinue.tagBits;
        if ((i11 & 3) != 0) {
            if ((i11 & 1) != 0) {
                this.continueLabel = null;
            }
            copy2.addInitializationsFrom(analyseCode.initsWhenFalse());
            mergedWith = copy.mergedWith(loopingFlowContext2.initsOnContinue.unconditionalInits());
            loopingFlowContext.complainOnDeferredNullChecks(blockScope, mergedWith, false);
            loopingFlowContext2.complainOnDeferredNullChecks(blockScope, mergedWith, false);
        } else {
            loopingFlowContext.complainOnDeferredFinalChecks(blockScope, analyseCode);
            mergedWith = copy.mergedWith(loopingFlowContext2.initsOnContinue.unconditionalInits());
            loopingFlowContext.complainOnDeferredNullChecks(blockScope, mergedWith);
            loopingFlowContext2.complainOnDeferredFinalChecks(blockScope, mergedWith);
            loopingFlowContext2.complainOnDeferredNullChecks(blockScope, mergedWith);
            copy2.addPotentialInitializationsFrom(mergedWith.unconditionalInits()).addInitializationsFrom(analyseCode.initsWhenFalse());
        }
        if (loopingFlowContext2.hasEscapingExceptions()) {
            FlowInfo copy3 = flowInfo.copy();
            if (this.continueLabel != null) {
                copy3 = copy3.mergedWith(copy3.unconditionalCopy().addNullInfoFrom(mergedWith).unconditionalInits());
            }
            loopingFlowContext2.simulateThrowAfterLoopBack(copy3);
        }
        FlowInfo flowInfo2 = loopingFlowContext2.initsOnBreak;
        if ((flowInfo2.tagBits & 3) == 0) {
            flowInfo2 = flowInfo.addInitializationsFrom(flowInfo2);
        }
        UnconditionalFlowInfo mergedOptimizedBranches = FlowInfo.mergedOptimizedBranches(flowInfo2, z17, copy2, z10, !z19);
        this.mergedInitStateIndex = blockScope.methodScope().recordInitializationStates(mergedOptimizedBranches);
        return mergedOptimizedBranches;
    }

    @Override
    public boolean completesByContinue() {
        return this.action.continuesAtOuterLabel();
    }

    @Override
    public boolean doesNotCompleteNormally() {
        Statement statement;
        Constant constant = this.condition.constant;
        boolean z10 = constant == null || (constant != Constant.NotAConstant && constant.booleanValue());
        Constant optimizedBooleanConstant = this.condition.optimizedBooleanConstant();
        return (z10 || (optimizedBooleanConstant == null || (optimizedBooleanConstant != Constant.NotAConstant && optimizedBooleanConstant.booleanValue()))) && ((statement = this.action) == null || !statement.breaksOut(null));
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
        Statement statement;
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        int i10 = codeStream.position;
        Constant optimizedBooleanConstant = this.condition.optimizedBooleanConstant();
        Constant constant = Constant.NotAConstant;
        if (optimizedBooleanConstant != constant && !optimizedBooleanConstant.booleanValue()) {
            this.condition.generateCode(blockScope, codeStream, false);
            int i11 = this.mergedInitStateIndex;
            if (i11 != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(blockScope, i11);
                codeStream.addDefinitelyAssignedVariables(blockScope, this.mergedInitStateIndex);
            }
            codeStream.recordPositionsFrom(i10, this.sourceStart);
            return;
        }
        this.breakLabel.initialize(codeStream);
        BranchLabel branchLabel = this.continueLabel;
        if (branchLabel == null) {
            Expression expression = this.condition;
            if (expression.constant == constant) {
                expression.generateOptimizedBoolean(blockScope, codeStream, null, this.breakLabel, true);
            }
        } else {
            branchLabel.initialize(codeStream);
            Constant constant2 = this.condition.constant;
            if ((constant2 == constant || !constant2.booleanValue()) && (statement = this.action) != null && !statement.isEmptyBlock()) {
                int i12 = codeStream.position;
                codeStream.goto_(this.continueLabel);
                codeStream.recordPositionsFrom(i12, this.condition.sourceStart);
            }
        }
        BranchLabel branchLabel2 = new BranchLabel(codeStream);
        if (this.action != null) {
            branchLabel2.tagBits |= 2;
            int i13 = this.condIfTrueInitStateIndex;
            if (i13 != -1) {
                codeStream.addDefinitelyAssignedVariables(blockScope, i13);
            }
            branchLabel2.place();
            this.action.generateCode(blockScope, codeStream);
            int i14 = this.preCondInitStateIndex;
            if (i14 != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(blockScope, i14);
            }
        } else {
            branchLabel2.place();
        }
        BranchLabel branchLabel3 = this.continueLabel;
        if (branchLabel3 != null) {
            branchLabel3.place();
            this.condition.generateOptimizedBoolean(blockScope, codeStream, branchLabel2, null, true);
        }
        int i15 = this.mergedInitStateIndex;
        if (i15 != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(blockScope, i15);
            codeStream.addDefinitelyAssignedVariables(blockScope, this.mergedInitStateIndex);
        }
        this.breakLabel.place();
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer).append("while (");
        this.condition.printExpression(0, stringBuffer).append(')');
        Statement statement = this.action;
        if (statement == null) {
            stringBuffer.append(';');
        } else {
            statement.printStatement(i10 + 1, stringBuffer);
        }
        return stringBuffer;
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
            this.condition.traverse(aSTVisitor, blockScope);
            Statement statement = this.action;
            if (statement != null) {
                statement.traverse(aSTVisitor, blockScope);
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }
}
