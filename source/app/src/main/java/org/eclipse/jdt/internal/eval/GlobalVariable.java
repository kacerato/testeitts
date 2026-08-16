package org.eclipse.jdt.internal.eval;

public class GlobalVariable {
    int initExpressionStart;
    char[] initializer;
    char[] name;
    char[] typeName;
    int declarationStart = -1;
    int initializerStart = -1;
    int initializerLineStart = -1;

    public GlobalVariable(char[] cArr, char[] cArr2, char[] cArr3) {
        this.typeName = cArr;
        this.name = cArr2;
        this.initializer = cArr3;
    }

    public char[] getInitializer() {
        return this.initializer;
    }

    public char[] getName() {
        return this.name;
    }

    public char[] getTypeName() {
        return this.typeName;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.typeName);
        stringBuffer.append(" ");
        stringBuffer.append(this.name);
        if (this.initializer != null) {
            stringBuffer.append("= ");
            stringBuffer.append(this.initializer);
        }
        stringBuffer.append(";");
        return stringBuffer.toString();
    }
}
