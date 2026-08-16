package org.eclipse.jdt.internal.compiler.ast;

public class UsesStatement extends ModuleStatement {
    public TypeReference serviceInterface;

    public UsesStatement(TypeReference typeReference) {
        this.serviceInterface = typeReference;
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        stringBuffer.append("uses ");
        this.serviceInterface.print(0, stringBuffer);
        stringBuffer.append(";");
        return stringBuffer;
    }
}
