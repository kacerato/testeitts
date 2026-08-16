package org.eclipse.jdt.internal.compiler.ast;

import org.apache.commons.math3.geometry.VectorFormat;
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

public class ForStatement extends Statement {
    public Statement action;
    private BranchLabel breakLabel;
    public Expression condition;
    private BranchLabel continueLabel;
    public Statement[] increments;
    public Statement[] initializations;
    public BlockScope scope;
    int preCondInitStateIndex = -1;
    int preIncrementsInitStateIndex = -1;
    int condIfTrueInitStateIndex = -1;
    int mergedInitStateIndex = -1;

    public ForStatement(Statement[] statementArr, Expression expression, Statement[] statementArr2, Statement statement, boolean z10, int i10, int i11) {
        this.sourceStart = i10;
        this.sourceEnd = i11;
        this.initializations = statementArr;
        this.condition = expression;
        this.increments = statementArr2;
        this.action = statement;
        if (statement instanceof EmptyStatement) {
            statement.bits |= 1;
        }
        if (z10) {
            this.bits |= 536870912;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v6, types: [org.eclipse.jdt.internal.compiler.flow.FlowInfo] */
    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        FlowInfo flowInfo2;
        boolean z10;
        boolean z11;
        UnconditionalFlowInfo unconditionalFlowInfo;
        LoopingFlowContext loopingFlowContext;
        boolean z12;
        UnconditionalFlowInfo unconditionalCopy;
        LoopingFlowContext loopingFlowContext2;
        FlowInfo flowInfo3;
        LoopingFlowContext loopingFlowContext3;
        int i10;
        LoopingFlowContext loopingFlowContext4;
        UnconditionalFlowInfo unconditionalCopy2;
        boolean z13;
        boolean z14;
        this.breakLabel = new BranchLabel();
        this.continueLabel = new BranchLabel();
        int i11 = (flowInfo.reachMode() & 3) != 0 ? 1 : 0;
        Statement[] statementArr = this.initializations;
        if (statementArr != null) {
            int length = statementArr.length;
            FlowInfo flowInfo4 = flowInfo;
            for (int i12 = 0; i12 < length; i12++) {
                flowInfo4 = this.initializations[i12].analyseCode(this.scope, flowContext, flowInfo4);
            }
            flowInfo2 = flowInfo4;
        } else {
            flowInfo2 = flowInfo;
        }
        this.preCondInitStateIndex = blockScope.methodScope().recordInitializationStates(flowInfo2);
        Expression expression = this.condition;
        Constant constant = expression == null ? null : expression.constant;
        boolean z15 = constant == null || (constant != Constant.NotAConstant && constant.booleanValue());
        boolean z16 = (constant == null || constant == Constant.NotAConstant || constant.booleanValue()) ? false : true;
        Expression expression2 = this.condition;
        Constant optimizedBooleanConstant = expression2 == null ? null : expression2.optimizedBooleanConstant();
        boolean z17 = optimizedBooleanConstant == null || (optimizedBooleanConstant != Constant.NotAConstant && optimizedBooleanConstant.booleanValue());
        boolean z18 = (optimizedBooleanConstant == null || optimizedBooleanConstant == Constant.NotAConstant || optimizedBooleanConstant.booleanValue()) ? false : true;
        UnconditionalFlowInfo nullInfoLessUnconditionalCopy = flowInfo2.nullInfoLessUnconditionalCopy();
        Expression expression3 = this.condition;
        if (expression3 == null || z15) {
            z10 = z18;
            z11 = z17;
            unconditionalFlowInfo = nullInfoLessUnconditionalCopy;
            loopingFlowContext = null;
        } else {
            BlockScope blockScope2 = this.scope;
            loopingFlowContext = r2;
            z10 = z18;
            z11 = z17;
            LoopingFlowContext loopingFlowContext5 = new LoopingFlowContext(flowContext, flowInfo2, this, null, null, this.scope, true);
            ?? analyseCode = expression3.analyseCode(blockScope2, loopingFlowContext, nullInfoLessUnconditionalCopy);
            this.condition.checkNPEbyUnboxing(blockScope, flowContext, flowInfo2);
            unconditionalFlowInfo = analyseCode;
        }
        Statement statement = this.action;
        if (statement == null || (statement.isEmptyBlock() && blockScope.compilerOptions().complianceLevel <= ClassFileConstants.JDK1_3)) {
            boolean z19 = z10;
            if (loopingFlowContext != null) {
                loopingFlowContext.complainOnDeferredFinalChecks(this.scope, unconditionalFlowInfo);
            }
            if (z15) {
                if (loopingFlowContext != null) {
                    loopingFlowContext.complainOnDeferredNullChecks(blockScope, unconditionalFlowInfo);
                }
                return FlowInfo.DEAD_END;
            }
            if (z16) {
                this.continueLabel = null;
            }
            z12 = z19;
            unconditionalCopy = unconditionalFlowInfo.initsWhenTrue().unconditionalCopy();
            loopingFlowContext2 = new LoopingFlowContext(flowContext, flowInfo2, this, this.breakLabel, this.continueLabel, this.scope, false);
        } else {
            LoopingFlowContext loopingFlowContext6 = new LoopingFlowContext(flowContext, flowInfo2, this, this.breakLabel, this.continueLabel, this.scope, true);
            FlowInfo initsWhenTrue = unconditionalFlowInfo.initsWhenTrue();
            this.condIfTrueInitStateIndex = blockScope.methodScope().recordInitializationStates(initsWhenTrue);
            if (z16) {
                unconditionalCopy2 = FlowInfo.DEAD_END;
                z13 = z10;
                z14 = true;
            } else {
                unconditionalCopy2 = initsWhenTrue.unconditionalCopy();
                z13 = z10;
                z14 = true;
                if (z13) {
                    unconditionalCopy2.setReachMode(1);
                }
            }
            if (this.action.complainIfUnreachable(unconditionalCopy2, this.scope, i11, z14) < 2) {
                unconditionalCopy2 = this.action.analyseCode(this.scope, loopingFlowContext6, unconditionalCopy2).unconditionalInits();
            }
            if ((unconditionalCopy2.tagBits & loopingFlowContext6.initsOnContinue.tagBits & 1) != 0) {
                this.continueLabel = null;
            } else {
                if (loopingFlowContext != null) {
                    loopingFlowContext.complainOnDeferredFinalChecks(this.scope, unconditionalFlowInfo);
                }
                unconditionalCopy2 = unconditionalCopy2.mergedWith(loopingFlowContext6.initsOnContinue);
                loopingFlowContext6.complainOnDeferredFinalChecks(this.scope, unconditionalCopy2);
            }
            loopingFlowContext2 = loopingFlowContext6;
            z12 = z13;
            unconditionalCopy = unconditionalCopy2;
        }
        FlowInfo copy = flowInfo2.copy();
        if (this.continueLabel != null) {
            if (this.increments != null) {
                loopingFlowContext3 = loopingFlowContext2;
                UnconditionalFlowInfo unconditionalFlowInfo2 = unconditionalCopy;
                loopingFlowContext4 = new LoopingFlowContext(flowContext, flowInfo2, this, null, null, this.scope, true);
                this.preIncrementsInitStateIndex = blockScope.methodScope().recordInitializationStates(unconditionalFlowInfo2);
                int length2 = this.increments.length;
                FlowInfo flowInfo5 = unconditionalFlowInfo2;
                for (int i13 = 0; i13 < length2; i13++) {
                    flowInfo5 = this.increments[i13].analyseCode(this.scope, loopingFlowContext4, flowInfo5);
                }
                BlockScope blockScope3 = this.scope;
                unconditionalCopy = flowInfo5.unconditionalInits();
                loopingFlowContext4.complainOnDeferredFinalChecks(blockScope3, unconditionalCopy);
                flowInfo3 = copy;
            } else {
                loopingFlowContext3 = loopingFlowContext2;
                flowInfo3 = copy;
                loopingFlowContext4 = null;
            }
            flowInfo3.addPotentialInitializationsFrom(unconditionalCopy).addInitializationsFrom(unconditionalFlowInfo.initsWhenFalse());
            i10 = 0;
        } else {
            flowInfo3 = copy;
            loopingFlowContext3 = loopingFlowContext2;
            UnconditionalFlowInfo unconditionalFlowInfo3 = unconditionalCopy;
            flowInfo3.addInitializationsFrom(unconditionalFlowInfo.initsWhenFalse());
            if (this.increments == null || i11 != 0) {
                i10 = 0;
            } else {
                i10 = 0;
                blockScope.problemReporter().fakeReachable(this.increments[0]);
            }
            unconditionalCopy = unconditionalFlowInfo3;
            loopingFlowContext4 = null;
        }
        if (loopingFlowContext != null) {
            loopingFlowContext.complainOnDeferredNullChecks(blockScope, unconditionalCopy);
        }
        LoopingFlowContext loopingFlowContext7 = loopingFlowContext3;
        loopingFlowContext7.complainOnDeferredNullChecks(blockScope, unconditionalCopy);
        if (loopingFlowContext4 != null) {
            loopingFlowContext4.complainOnDeferredNullChecks(blockScope, unconditionalCopy);
        }
        if (loopingFlowContext7.hasEscapingExceptions()) {
            FlowInfo copy2 = flowInfo2.copy();
            if (this.continueLabel != null) {
                copy2 = copy2.mergedWith(copy2.unconditionalCopy().addNullInfoFrom(unconditionalCopy).unconditionalInits());
            }
            loopingFlowContext7.simulateThrowAfterLoopBack(copy2);
        }
        FlowInfo flowInfo6 = loopingFlowContext7.initsOnBreak;
        if ((flowInfo6.tagBits & 3) == 0) {
            flowInfo6 = flowInfo2.addInitializationsFrom(flowInfo6);
        }
        UnconditionalFlowInfo mergedOptimizedBranches = FlowInfo.mergedOptimizedBranches(flowInfo6, z11, flowInfo3, z12, !z15);
        if (this.initializations != null) {
            int i14 = i10;
            while (true) {
                Statement[] statementArr2 = this.initializations;
                if (i14 >= statementArr2.length) {
                    break;
                }
                Statement statement2 = statementArr2[i14];
                if (statement2 instanceof LocalDeclaration) {
                    mergedOptimizedBranches.resetAssignmentInfo(((LocalDeclaration) statement2).binding);
                }
                i14++;
            }
        }
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
        Expression expression = this.condition;
        Constant constant = expression == null ? null : expression.constant;
        boolean z10 = constant == null || (constant != Constant.NotAConstant && constant.booleanValue());
        Expression expression2 = this.condition;
        Constant optimizedBooleanConstant = expression2 == null ? null : expression2.optimizedBooleanConstant();
        return (z10 || (optimizedBooleanConstant == null || (optimizedBooleanConstant != Constant.NotAConstant && optimizedBooleanConstant.booleanValue()))) && ((statement = this.action) == null || !statement.breaksOut(null));
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
        Statement statement;
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        int i10 = codeStream.position;
        Statement[] statementArr = this.initializations;
        if (statementArr != null) {
            int length = statementArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                this.initializations[i11].generateCode(this.scope, codeStream);
            }
        }
        Expression expression = this.condition;
        Constant optimizedBooleanConstant = expression == null ? null : expression.optimizedBooleanConstant();
        if (optimizedBooleanConstant != null && optimizedBooleanConstant != Constant.NotAConstant && !optimizedBooleanConstant.booleanValue()) {
            this.condition.generateCode(this.scope, codeStream, false);
            if ((this.bits & 536870912) != 0) {
                codeStream.exitUserScope(this.scope);
            }
            int i12 = this.mergedInitStateIndex;
            if (i12 != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(blockScope, i12);
                codeStream.addDefinitelyAssignedVariables(blockScope, this.mergedInitStateIndex);
            }
            codeStream.recordPositionsFrom(i10, this.sourceStart);
            return;
        }
        BranchLabel branchLabel = new BranchLabel(codeStream);
        branchLabel.tagBits |= 2;
        BranchLabel branchLabel2 = new BranchLabel(codeStream);
        this.breakLabel.initialize(codeStream);
        BranchLabel branchLabel3 = this.continueLabel;
        if (branchLabel3 == null) {
            branchLabel2.place();
            Expression expression2 = this.condition;
            if (expression2 != null && expression2.constant == Constant.NotAConstant) {
                expression2.generateOptimizedBoolean(this.scope, codeStream, null, this.breakLabel, true);
            }
        } else {
            branchLabel3.initialize(codeStream);
            Expression expression3 = this.condition;
            if (expression3 != null && expression3.constant == Constant.NotAConstant && (((statement = this.action) != null && !statement.isEmptyBlock()) || this.increments != null)) {
                branchLabel2.tagBits |= 2;
                int i13 = codeStream.position;
                codeStream.goto_(branchLabel2);
                codeStream.recordPositionsFrom(i13, this.condition.sourceStart);
            }
        }
        if (this.action != null) {
            int i14 = this.condIfTrueInitStateIndex;
            if (i14 != -1) {
                codeStream.addDefinitelyAssignedVariables(blockScope, i14);
            }
            branchLabel.place();
            this.action.generateCode(this.scope, codeStream);
        } else {
            branchLabel.place();
        }
        int i15 = this.preIncrementsInitStateIndex;
        if (i15 != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(blockScope, i15);
            codeStream.addDefinitelyAssignedVariables(blockScope, this.preIncrementsInitStateIndex);
        }
        BranchLabel branchLabel4 = this.continueLabel;
        if (branchLabel4 != null) {
            branchLabel4.place();
            Statement[] statementArr2 = this.increments;
            if (statementArr2 != null) {
                int length2 = statementArr2.length;
                for (int i16 = 0; i16 < length2; i16++) {
                    this.increments[i16].generateCode(this.scope, codeStream);
                }
            }
            int i17 = this.preCondInitStateIndex;
            if (i17 != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(blockScope, i17);
            }
            branchLabel2.place();
            Expression expression4 = this.condition;
            if (expression4 == null || expression4.constant != Constant.NotAConstant) {
                codeStream.goto_(branchLabel);
            } else {
                expression4.generateOptimizedBoolean(this.scope, codeStream, branchLabel, null, true);
            }
        } else {
            int i18 = this.preCondInitStateIndex;
            if (i18 != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(blockScope, i18);
            }
        }
        if ((this.bits & 536870912) != 0) {
            codeStream.exitUserScope(this.scope);
        }
        int i19 = this.mergedInitStateIndex;
        if (i19 != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(blockScope, i19);
            codeStream.addDefinitelyAssignedVariables(blockScope, this.mergedInitStateIndex);
        }
        this.breakLabel.place();
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer).append("for (");
        if (this.initializations != null) {
            for (int i11 = 0; i11 < this.initializations.length; i11++) {
                if (i11 > 0) {
                    stringBuffer.append(", ");
                }
                this.initializations[i11].print(0, stringBuffer);
            }
        }
        stringBuffer.append(VectorFormat.DEFAULT_SEPARATOR);
        Expression expression = this.condition;
        if (expression != null) {
            expression.printExpression(0, stringBuffer);
        }
        stringBuffer.append(VectorFormat.DEFAULT_SEPARATOR);
        if (this.increments != null) {
            for (int i12 = 0; i12 < this.increments.length; i12++) {
                if (i12 > 0) {
                    stringBuffer.append(", ");
                }
                this.increments[i12].print(0, stringBuffer);
            }
        }
        stringBuffer.append(") ");
        if (this.action == null) {
            stringBuffer.append(';');
        } else {
            stringBuffer.append('\n');
            this.action.printStatement(i10 + 1, stringBuffer);
        }
        return stringBuffer;
    }

    @Override
    public void resolve(BlockScope blockScope) {
        if ((this.bits & 536870912) != 0) {
            blockScope = new BlockScope(blockScope);
        }
        this.scope = blockScope;
        Statement[] statementArr = this.initializations;
        if (statementArr != null) {
            int length = statementArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.initializations[i10].resolve(this.scope);
            }
        }
        Expression expression = this.condition;
        if (expression != null) {
            TypeBinding resolveTypeExpecting = expression.resolveTypeExpecting(this.scope, TypeBinding.BOOLEAN);
            this.condition.computeConversion(this.scope, resolveTypeExpecting, resolveTypeExpecting);
        }
        Statement[] statementArr2 = this.increments;
        if (statementArr2 != null) {
            int length2 = statementArr2.length;
            for (int i11 = 0; i11 < length2; i11++) {
                this.increments[i11].resolve(this.scope);
            }
        }
        Statement statement = this.action;
        if (statement != null) {
            statement.resolve(this.scope);
        }
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            Statement[] statementArr = this.initializations;
            if (statementArr != null) {
                int length = statementArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.initializations[i10].traverse(aSTVisitor, this.scope);
                }
            }
            Expression expression = this.condition;
            if (expression != null) {
                expression.traverse(aSTVisitor, this.scope);
            }
            Statement[] statementArr2 = this.increments;
            if (statementArr2 != null) {
                int length2 = statementArr2.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    this.increments[i11].traverse(aSTVisitor, this.scope);
                }
            }
            Statement statement = this.action;
            if (statement != null) {
                statement.traverse(aSTVisitor, this.scope);
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }
}
