package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.InsideSubRoutineFlowContext;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SynchronizedStatement extends SubRoutineStatement {
    static final char[] SecretLocalDeclarationName = " syncValue".toCharArray();
    public Block block;
    public Expression expression;
    public BlockScope scope;
    public LocalVariableBinding synchroVariable;
    int preSynchronizedInitStateIndex = -1;
    int mergedSynchronizedInitStateIndex = -1;

    public SynchronizedStatement(Expression expression, Block block, int i10, int i11) {
        this.expression = expression;
        this.block = block;
        this.sourceEnd = i11;
        this.sourceStart = i10;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        this.preSynchronizedInitStateIndex = blockScope.methodScope().recordInitializationStates(flowInfo);
        this.synchroVariable.useFlag = 1;
        FlowInfo analyseCode = this.block.analyseCode(this.scope, new InsideSubRoutineFlowContext(flowContext, this), this.expression.analyseCode(this.scope, flowContext, flowInfo));
        this.mergedSynchronizedInitStateIndex = blockScope.methodScope().recordInitializationStates(analyseCode);
        if ((analyseCode.tagBits & 1) != 0) {
            this.bits |= 536870912;
        }
        return analyseCode;
    }

    @Override
    public boolean completesByContinue() {
        return this.block.completesByContinue();
    }

    @Override
    public boolean doesNotCompleteNormally() {
        return this.block.doesNotCompleteNormally();
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        this.anyExceptionLabel = null;
        int i10 = codeStream.position;
        this.expression.generateCode(this.scope, codeStream, true);
        if (this.block.isEmptyBlock()) {
            int i11 = this.synchroVariable.type.f102482id;
            if (i11 == 7 || i11 == 8) {
                codeStream.dup2();
            } else {
                codeStream.dup();
            }
            codeStream.monitorenter();
            codeStream.monitorexit();
            BlockScope blockScope2 = this.scope;
            if (blockScope2 != blockScope) {
                codeStream.exitUserScope(blockScope2);
            }
        } else {
            codeStream.store(this.synchroVariable, true);
            codeStream.addVariable(this.synchroVariable);
            codeStream.monitorenter();
            enterAnyExceptionHandler(codeStream);
            this.block.generateCode(this.scope, codeStream);
            BlockScope blockScope3 = this.scope;
            if (blockScope3 != blockScope) {
                codeStream.exitUserScope(blockScope3, this.synchroVariable);
            }
            BranchLabel branchLabel = new BranchLabel(codeStream);
            if ((this.bits & 536870912) == 0) {
                codeStream.load(this.synchroVariable);
                codeStream.monitorexit();
                exitAnyExceptionHandler();
                codeStream.goto_(branchLabel);
                enterAnyExceptionHandler(codeStream);
            }
            codeStream.pushExceptionOnStack(this.scope.getJavaLangThrowable());
            int i12 = this.preSynchronizedInitStateIndex;
            if (i12 != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(blockScope, i12);
            }
            placeAllAnyExceptionHandler();
            codeStream.load(this.synchroVariable);
            codeStream.monitorexit();
            exitAnyExceptionHandler();
            codeStream.athrow();
            int i13 = this.mergedSynchronizedInitStateIndex;
            if (i13 != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(blockScope, i13);
                codeStream.addDefinitelyAssignedVariables(blockScope, this.mergedSynchronizedInitStateIndex);
            }
            if (this.scope != blockScope) {
                codeStream.removeVariable(this.synchroVariable);
            }
            if ((this.bits & 536870912) == 0) {
                branchLabel.place();
            }
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public boolean generateSubRoutineInvocation(BlockScope blockScope, CodeStream codeStream, Object obj, int i10, LocalVariableBinding localVariableBinding) {
        codeStream.load(this.synchroVariable);
        codeStream.monitorexit();
        exitAnyExceptionHandler();
        return false;
    }

    @Override
    public boolean isSubRoutineEscaping() {
        return false;
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        stringBuffer.append("synchronized (");
        this.expression.printExpression(0, stringBuffer).append(')');
        stringBuffer.append('\n');
        return this.block.printStatement(i10 + 1, stringBuffer);
    }

    @Override
    public void resolve(BlockScope blockScope) {
        BlockScope blockScope2 = new BlockScope(blockScope);
        this.scope = blockScope2;
        TypeBinding resolveType = this.expression.resolveType(blockScope2);
        if (resolveType != null) {
            switch (resolveType.f102482id) {
                case 2:
                case 3:
                case 4:
                case 5:
                case 7:
                case 8:
                case 9:
                case 10:
                    this.scope.problemReporter().invalidTypeToSynchronize(this.expression, resolveType);
                    break;
                case 6:
                    this.scope.problemReporter().illegalVoidExpression(this.expression);
                    break;
                case 12:
                    this.scope.problemReporter().invalidNullToSynchronize(this.expression);
                    break;
            }
            LocalVariableBinding localVariableBinding = new LocalVariableBinding(SecretLocalDeclarationName, resolveType, 0, false);
            this.synchroVariable = localVariableBinding;
            this.scope.addLocalVariable(localVariableBinding);
            this.synchroVariable.setConstant(Constant.NotAConstant);
            this.expression.computeConversion(this.scope, resolveType, resolveType);
        }
        this.block.resolveUsing(this.scope);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            this.expression.traverse(aSTVisitor, this.scope);
            this.block.traverse(aSTVisitor, this.scope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }
}
