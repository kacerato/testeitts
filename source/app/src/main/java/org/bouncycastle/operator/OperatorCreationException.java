package org.bouncycastle.operator;

public class OperatorCreationException extends OperatorException {
    public OperatorCreationException(String str) {
        super(str);
    }

    public OperatorCreationException(String str, Throwable th2) {
        super(str, th2);
    }
}
