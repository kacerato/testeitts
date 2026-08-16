package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;

public class AssistNodeParentAnnotationArrayInitializer extends ASTNode {
    public final char[] name;
    public final TypeReference type;

    public AssistNodeParentAnnotationArrayInitializer(TypeReference typeReference, char[] cArr) {
        this.type = typeReference;
        this.name = cArr;
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        stringBuffer.append("<AssistNodeParentAnnotationArrayInitializer:");
        stringBuffer.append('@');
        this.type.printExpression(0, stringBuffer);
        stringBuffer.append('(');
        stringBuffer.append(this.name);
        stringBuffer.append(')');
        stringBuffer.append('>');
        return stringBuffer;
    }
}
