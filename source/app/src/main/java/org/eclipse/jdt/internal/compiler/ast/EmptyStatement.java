package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;

public class EmptyStatement extends Statement {
    public EmptyStatement(int i10, int i11) {
        this.sourceStart = i10;
        this.sourceEnd = i11;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        return flowInfo;
    }

    @Override
    public int complainIfUnreachable(FlowInfo flowInfo, BlockScope blockScope, int i10, boolean z10) {
        return blockScope.compilerOptions().complianceLevel < ClassFileConstants.JDK1_4 ? i10 : super.complainIfUnreachable(flowInfo, blockScope, i10, z10);
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream) {
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        StringBuffer printIndent = ASTNode.printIndent(i10, stringBuffer);
        printIndent.append(';');
        return printIndent;
    }

    @Override
    public void resolve(BlockScope blockScope) {
        if ((this.bits & 1) == 0) {
            blockScope.problemReporter().superfluousSemicolon(this.sourceStart, this.sourceEnd);
        } else {
            blockScope.problemReporter().emptyControlFlowStatement(this.sourceStart, this.sourceEnd);
        }
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        aSTVisitor.visit(this, blockScope);
        aSTVisitor.endVisit(this, blockScope);
    }
}
