package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.core.JavaElement;

public class Block extends Statement {
    public int explicitDeclarations;
    public BlockScope scope;
    public Statement[] statements;

    public Block(int i10) {
        this.explicitDeclarations = i10;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        BlockScope blockScope2;
        LocalVariableBinding[] localVariableBindingArr;
        if (this.statements == null) {
            return flowInfo;
        }
        int i10 = (flowInfo.reachMode() & 3) != 0 ? 1 : 0;
        boolean z10 = blockScope.compilerOptions().enableSyntacticNullAnalysisForFields;
        int length = this.statements.length;
        for (int i11 = 0; i11 < length; i11++) {
            Statement statement = this.statements[i11];
            i10 = statement.complainIfUnreachable(flowInfo, this.scope, i10, true);
            if (i10 < 2) {
                flowInfo = statement.analyseCode(this.scope, flowContext, flowInfo);
            }
            flowContext.mergeFinallyNullInfo(flowInfo);
            if (z10) {
                flowContext.expireNullCheckedFieldInfo();
            }
        }
        BlockScope blockScope3 = this.scope;
        if (blockScope3 != blockScope) {
            blockScope3.checkUnclosedCloseables(flowInfo, flowContext, null, null);
        }
        if (this.explicitDeclarations > 0 && (localVariableBindingArr = (blockScope2 = this.scope).locals) != null) {
            int i12 = blockScope2.localIndex;
            for (int i13 = 0; i13 < i12; i13++) {
                flowInfo.resetAssignmentInfo(localVariableBindingArr[i13]);
            }
        }
        return flowInfo;
    }

    @Override
    public void branchChainTo(BranchLabel branchLabel) {
        Statement[] statementArr = this.statements;
        if (statementArr != null) {
            statementArr[statementArr.length - 1].branchChainTo(branchLabel);
        }
    }

    @Override
    public boolean completesByContinue() {
        Statement[] statementArr = this.statements;
        int length = statementArr == null ? 0 : statementArr.length;
        return length > 0 && statementArr[length - 1].completesByContinue();
    }

    @Override
    public boolean doesNotCompleteNormally() {
        Statement[] statementArr = this.statements;
        int length = statementArr == null ? 0 : statementArr.length;
        return length > 0 && statementArr[length - 1].doesNotCompleteNormally();
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        int i10 = codeStream.position;
        Statement[] statementArr = this.statements;
        if (statementArr != null) {
            int length = statementArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                this.statements[i11].generateCode(this.scope, codeStream);
            }
        }
        BlockScope blockScope2 = this.scope;
        if (blockScope2 != blockScope) {
            codeStream.exitUserScope(blockScope2);
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public boolean isEmptyBlock() {
        return this.statements == null;
    }

    public StringBuffer printBody(int i10, StringBuffer stringBuffer) {
        if (this.statements == null) {
            return stringBuffer;
        }
        int i11 = 0;
        while (true) {
            Statement[] statementArr = this.statements;
            if (i11 >= statementArr.length) {
                return stringBuffer;
            }
            statementArr[i11].printStatement(i10 + 1, stringBuffer);
            stringBuffer.append('\n');
            i11++;
        }
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        stringBuffer.append("{\n");
        printBody(i10, stringBuffer);
        StringBuffer printIndent = ASTNode.printIndent(i10, stringBuffer);
        printIndent.append(JavaElement.JEM_ANNOTATION);
        return printIndent;
    }

    @Override
    public void resolve(BlockScope blockScope) {
        if ((this.bits & 8) != 0) {
            blockScope.problemReporter().undocumentedEmptyBlock(this.sourceStart, this.sourceEnd);
        }
        if (this.statements != null) {
            if (this.explicitDeclarations != 0) {
                blockScope = new BlockScope(blockScope, this.explicitDeclarations);
            }
            this.scope = blockScope;
            int length = this.statements.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.statements[i10].resolve(this.scope);
            }
        }
    }

    public void resolveUsing(BlockScope blockScope) {
        if ((this.bits & 8) != 0) {
            blockScope.problemReporter().undocumentedEmptyBlock(this.sourceStart, this.sourceEnd);
        }
        this.scope = blockScope;
        Statement[] statementArr = this.statements;
        if (statementArr != null) {
            int length = statementArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.statements[i10].resolve(this.scope);
            }
        }
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        Statement[] statementArr;
        if (aSTVisitor.visit(this, blockScope) && (statementArr = this.statements) != null) {
            int length = statementArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.statements[i10].traverse(aSTVisitor, this.scope);
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }
}
