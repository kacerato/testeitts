package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import w2.C15883c;

public class CompletionOnArgumentName extends Argument {
    private static final char[] FAKENAMESUFFIX = " ".toCharArray();
    public boolean isCatchArgument;
    public char[] realName;

    public CompletionOnArgumentName(char[] cArr, long j10, TypeReference typeReference, int i10) {
        super(CharOperation.concat(cArr, FAKENAMESUFFIX), j10, typeReference, i10);
        this.isCatchArgument = false;
        this.realName = cArr;
    }

    @Override
    public TypeBinding bind(MethodScope methodScope, TypeBinding typeBinding, boolean z10) {
        super.bind(methodScope, typeBinding, z10);
        throw new CompletionNodeFound(this, methodScope);
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        stringBuffer.append("<CompleteOnArgumentName:");
        TypeReference typeReference = this.type;
        if (typeReference != null) {
            typeReference.print(0, stringBuffer).append(C15883c.f126249O);
        }
        stringBuffer.append(this.realName);
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
        throw new CompletionNodeFound(this, blockScope);
    }
}
