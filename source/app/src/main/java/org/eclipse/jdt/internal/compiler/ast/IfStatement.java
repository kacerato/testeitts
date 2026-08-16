package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class IfStatement extends Statement {
    public Expression condition;
    public Statement elseStatement;
    public Statement thenStatement;
    int thenInitStateIndex = -1;
    int elseInitStateIndex = -1;
    int mergedInitStateIndex = -1;

    public IfStatement(Expression expression, Statement statement, int i10, int i11) {
        this.condition = expression;
        this.thenStatement = statement;
        if (statement instanceof EmptyStatement) {
            statement.bits |= 1;
        }
        this.sourceStart = i10;
        this.sourceEnd = i11;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        FlowInfo analyseCode = this.condition.analyseCode(blockScope, flowContext, flowInfo);
        int i10 = (flowInfo.reachMode() & 3) != 0 ? 1 : 0;
        Constant optimizedBooleanConstant = this.condition.optimizedBooleanConstant();
        this.condition.checkNPEbyUnboxing(blockScope, flowContext, flowInfo);
        Constant constant = Constant.NotAConstant;
        boolean z10 = optimizedBooleanConstant != constant && optimizedBooleanConstant.booleanValue();
        boolean z11 = (optimizedBooleanConstant == constant || optimizedBooleanConstant.booleanValue()) ? false : true;
        flowContext.conditionalLevel++;
        FlowInfo safeInitsWhenTrue = analyseCode.safeInitsWhenTrue();
        if (z11) {
            safeInitsWhenTrue.setReachMode(1);
        }
        FlowInfo copy = analyseCode.initsWhenFalse().copy();
        if (z10) {
            copy.setReachMode(1);
        }
        int i11 = flowInfo.tagBits;
        if ((i11 & 3) == 0 && (safeInitsWhenTrue.tagBits & 3) != 0) {
            this.bits |= 256;
        } else if ((i11 & 3) == 0 && (copy.tagBits & 3) != 0) {
            this.bits |= 128;
        }
        boolean z12 = !Statement.isKnowDeadCodePattern(this.condition) || blockScope.compilerOptions().reportDeadCodeInTrivialIfStatement;
        if (this.thenStatement != null) {
            this.thenInitStateIndex = blockScope.methodScope().recordInitializationStates(safeInitsWhenTrue);
            if (z11 || (this.bits & 256) != 0) {
                if (z12) {
                    this.thenStatement.complainIfUnreachable(safeInitsWhenTrue, blockScope, i10, false);
                } else {
                    this.bits &= -257;
                }
            }
            safeInitsWhenTrue = this.thenStatement.analyseCode(blockScope, flowContext, safeInitsWhenTrue);
            if (!(this.thenStatement instanceof Block)) {
                flowContext.expireNullCheckedFieldInfo();
            }
        }
        flowContext.expireNullCheckedFieldInfo();
        if ((safeInitsWhenTrue.tagBits & 1) != 0) {
            this.bits |= 1073741824;
        }
        Statement statement = this.elseStatement;
        if (statement != null) {
            if (safeInitsWhenTrue == FlowInfo.DEAD_END && (this.bits & 536870912) == 0 && !(statement instanceof IfStatement)) {
                blockScope.problemReporter().unnecessaryElse(this.elseStatement);
            }
            this.elseInitStateIndex = blockScope.methodScope().recordInitializationStates(copy);
            if (z10 || (this.bits & 128) != 0) {
                if (z12) {
                    this.elseStatement.complainIfUnreachable(copy, blockScope, i10, false);
                } else {
                    this.bits &= -129;
                }
            }
            copy = this.elseStatement.analyseCode(blockScope, flowContext, copy);
            if (!(this.elseStatement instanceof Block)) {
                flowContext.expireNullCheckedFieldInfo();
            }
        }
        FlowInfo flowInfo2 = copy;
        blockScope.correlateTrackingVarsIfElse(safeInitsWhenTrue, flowInfo2);
        UnconditionalFlowInfo mergedOptimizedBranchesIfElse = FlowInfo.mergedOptimizedBranchesIfElse(safeInitsWhenTrue, z10, flowInfo2, z11, true, flowInfo, this, z12);
        this.mergedInitStateIndex = blockScope.methodScope().recordInitializationStates(mergedOptimizedBranchesIfElse);
        flowContext.conditionalLevel--;
        return mergedOptimizedBranchesIfElse;
    }

    @Override
    public boolean completesByContinue() {
        Statement statement = this.thenStatement;
        if (statement != null && statement.completesByContinue()) {
            return true;
        }
        Statement statement2 = this.elseStatement;
        return statement2 != null && statement2.completesByContinue();
    }

    @Override
    public boolean doesNotCompleteNormally() {
        Statement statement;
        Statement statement2 = this.thenStatement;
        return statement2 != null && statement2.doesNotCompleteNormally() && (statement = this.elseStatement) != null && statement.doesNotCompleteNormally();
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
        Statement statement;
        Statement statement2;
        BranchLabel branchLabel;
        BranchLabel branchLabel2;
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        int i10 = codeStream.position;
        BranchLabel branchLabel3 = new BranchLabel(codeStream);
        Constant optimizedBooleanConstant = this.condition.optimizedBooleanConstant();
        Constant constant = Constant.NotAConstant;
        boolean z10 = ((optimizedBooleanConstant != constant && !optimizedBooleanConstant.booleanValue()) || (statement = this.thenStatement) == null || statement.isEmptyBlock()) ? false : true;
        boolean z11 = ((optimizedBooleanConstant != constant && optimizedBooleanConstant.booleanValue()) || (statement2 = this.elseStatement) == null || statement2.isEmptyBlock()) ? false : true;
        if (z10) {
            BranchLabel branchLabel4 = null;
            if (optimizedBooleanConstant == constant || !optimizedBooleanConstant.booleanValue()) {
                Expression expression = this.condition;
                if (z11) {
                    branchLabel2 = new BranchLabel(codeStream);
                    branchLabel = branchLabel2;
                } else {
                    branchLabel = null;
                    branchLabel2 = branchLabel3;
                }
                expression.generateOptimizedBoolean(blockScope, codeStream, null, branchLabel2, true);
                branchLabel4 = branchLabel;
            } else {
                this.condition.generateCode(blockScope, codeStream, false);
            }
            int i11 = this.thenInitStateIndex;
            if (i11 != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(blockScope, i11);
                codeStream.addDefinitelyAssignedVariables(blockScope, this.thenInitStateIndex);
            }
            this.thenStatement.generateCode(blockScope, codeStream);
            if (z11) {
                if ((this.bits & 1073741824) == 0) {
                    this.thenStatement.branchChainTo(branchLabel3);
                    int i12 = codeStream.position;
                    codeStream.goto_(branchLabel3);
                    codeStream.recordPositionsFrom(i12, this.thenStatement.sourceEnd);
                }
                int i13 = this.elseInitStateIndex;
                if (i13 != -1) {
                    codeStream.removeNotDefinitelyAssignedVariables(blockScope, i13);
                    codeStream.addDefinitelyAssignedVariables(blockScope, this.elseInitStateIndex);
                }
                if (branchLabel4 != null) {
                    branchLabel4.place();
                }
                this.elseStatement.generateCode(blockScope, codeStream);
            }
        } else if (z11) {
            if (optimizedBooleanConstant == constant || optimizedBooleanConstant.booleanValue()) {
                this.condition.generateOptimizedBoolean(blockScope, codeStream, branchLabel3, null, true);
            } else {
                this.condition.generateCode(blockScope, codeStream, false);
            }
            int i14 = this.elseInitStateIndex;
            if (i14 != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(blockScope, i14);
                codeStream.addDefinitelyAssignedVariables(blockScope, this.elseInitStateIndex);
            }
            this.elseStatement.generateCode(blockScope, codeStream);
        } else {
            this.condition.generateCode(blockScope, codeStream, false);
            codeStream.recordPositionsFrom(i10, this.sourceStart);
        }
        int i15 = this.mergedInitStateIndex;
        if (i15 != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(blockScope, i15);
            codeStream.addDefinitelyAssignedVariables(blockScope, this.mergedInitStateIndex);
        }
        branchLabel3.place();
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer).append("if (");
        this.condition.printExpression(0, stringBuffer).append(")\n");
        int i11 = i10 + 2;
        this.thenStatement.printStatement(i11, stringBuffer);
        if (this.elseStatement != null) {
            stringBuffer.append('\n');
            ASTNode.printIndent(i10, stringBuffer);
            stringBuffer.append("else\n");
            this.elseStatement.printStatement(i11, stringBuffer);
        }
        return stringBuffer;
    }

    @Override
    public void resolve(BlockScope blockScope) {
        TypeBinding resolveTypeExpecting = this.condition.resolveTypeExpecting(blockScope, TypeBinding.BOOLEAN);
        this.condition.computeConversion(blockScope, resolveTypeExpecting, resolveTypeExpecting);
        Statement statement = this.thenStatement;
        if (statement != null) {
            statement.resolve(blockScope);
        }
        Statement statement2 = this.elseStatement;
        if (statement2 != null) {
            statement2.resolve(blockScope);
        }
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            this.condition.traverse(aSTVisitor, blockScope);
            Statement statement = this.thenStatement;
            if (statement != null) {
                statement.traverse(aSTVisitor, blockScope);
            }
            Statement statement2 = this.elseStatement;
            if (statement2 != null) {
                statement2.traverse(aSTVisitor, blockScope);
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    public IfStatement(Expression expression, Statement statement, Statement statement2, int i10, int i11) {
        this.condition = expression;
        this.thenStatement = statement;
        if (statement instanceof EmptyStatement) {
            statement.bits |= 1;
        }
        this.elseStatement = statement2;
        if (statement2 instanceof IfStatement) {
            statement2.bits |= 536870912;
        }
        if (statement2 instanceof EmptyStatement) {
            statement2.bits |= 1;
        }
        this.sourceStart = i10;
        this.sourceEnd = i11;
    }
}
