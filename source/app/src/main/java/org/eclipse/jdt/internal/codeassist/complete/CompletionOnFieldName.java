package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import w2.C15883c;

public class CompletionOnFieldName extends FieldDeclaration {
    private static final char[] FAKENAMESUFFIX = " ".toCharArray();
    public char[] realName;

    public CompletionOnFieldName(char[] cArr, int i10, int i11) {
        super(CharOperation.concat(cArr, FAKENAMESUFFIX), i10, i11);
        this.realName = cArr;
    }

    @Override
    public StringBuffer printStatement(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer).append("<CompleteOnFieldName:");
        TypeReference typeReference = this.type;
        if (typeReference != null) {
            typeReference.print(0, stringBuffer).append(C15883c.f126249O);
        }
        stringBuffer.append(this.realName);
        if (this.initialization != null) {
            stringBuffer.append(" = ");
            this.initialization.printExpression(0, stringBuffer);
        }
        stringBuffer.append(">;");
        return stringBuffer;
    }

    @Override
    public void resolve(MethodScope methodScope) {
        super.resolve(methodScope);
        throw new CompletionNodeFound(this, methodScope);
    }
}
