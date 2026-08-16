package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.BranchStatement;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;

public class CompletionOnBranchStatementLabel extends BranchStatement {
    public static final int BREAK = 1;
    public static final int CONTINUE = 2;
    private int kind;
    public char[][] possibleLabels;

    public CompletionOnBranchStatementLabel(int i10, char[] cArr, int i11, int i12, char[][] cArr2) {
        super(cArr, i11, i12);
        this.kind = i10;
        this.possibleLabels = cArr2;
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        return null;
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        if (this.kind == 2) {
            stringBuffer.append("continue ");
        } else {
            stringBuffer.append("break ");
        }
        stringBuffer.append("<CompleteOnLabel:");
        stringBuffer.append(this.label);
        stringBuffer.append(">;");
        return stringBuffer;
    }

    @Override
    public void resolve(BlockScope blockScope) {
        throw new CompletionNodeFound(this, blockScope);
    }
}
