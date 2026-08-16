package org.bouncycastle.operator;

public class RuntimeOperatorException extends RuntimeException {
    private Throwable cause;

    public RuntimeOperatorException(String str) {
        super(str);
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }

    public RuntimeOperatorException(String str, Throwable th2) {
        super(str);
        this.cause = th2;
    }
}
