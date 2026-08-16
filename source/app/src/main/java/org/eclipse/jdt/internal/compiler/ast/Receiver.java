package org.eclipse.jdt.internal.compiler.ast;

import w2.C15883c;

public class Receiver extends Argument {
    public NameReference qualifyingName;

    public Receiver(char[] cArr, long j10, TypeReference typeReference, NameReference nameReference, int i10) {
        super(cArr, j10, typeReference, i10);
        this.qualifyingName = nameReference;
    }

    @Override
    public boolean isReceiver() {
        return true;
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        ASTNode.printIndent(i10, stringBuffer);
        ASTNode.printModifiers(this.modifiers, stringBuffer);
        TypeReference typeReference = this.type;
        if (typeReference == null) {
            stringBuffer.append("<no type> ");
        } else {
            typeReference.print(0, stringBuffer).append(C15883c.f126249O);
        }
        NameReference nameReference = this.qualifyingName;
        if (nameReference != null) {
            nameReference.print(i10, stringBuffer);
            stringBuffer.append('.');
        }
        stringBuffer.append(this.name);
        return stringBuffer;
    }
}
