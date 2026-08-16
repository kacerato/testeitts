package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import w2.C15883c;

public class SelectionOnArgumentName extends Argument {
    public SelectionOnArgumentName(char[] cArr, long j10, TypeReference typeReference, int i10) {
        super(cArr, j10, typeReference, i10);
    }

    @Override
    public TypeBinding bind(MethodScope methodScope, TypeBinding typeBinding, boolean z10) {
        super.bind(methodScope, typeBinding, z10);
        throw new SelectionNodeFound(this.binding);
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        stringBuffer.append("<SelectionOnArgumentName:");
        TypeReference typeReference = this.type;
        if (typeReference != null) {
            typeReference.print(0, stringBuffer).append(C15883c.f126249O);
        }
        stringBuffer.append(this.name);
        if (this.initialization != null) {
            stringBuffer.append(" = ");
            this.initialization.printExpression(0, stringBuffer);
        }
        stringBuffer.append('>');
        return stringBuffer;
    }

    @Override
    public void resolve(BlockScope blockScope) {
        super.resolve(blockScope);
        throw new SelectionNodeFound(this.binding);
    }

    @Override
    public TypeBinding resolveForCatch(BlockScope blockScope) {
        super.resolveForCatch(blockScope);
        throw new SelectionNodeFound(this.binding);
    }

    public SelectionOnArgumentName(char[] cArr, long j10, TypeReference typeReference, int i10, boolean z10) {
        super(cArr, j10, typeReference, i10, z10);
    }
}
