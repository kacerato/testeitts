package org.bouncycastle.eac;

public class EACException extends Exception {
    private Throwable cause;

    public EACException(String str) {
        super(str);
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }

    public EACException(String str, Throwable th2) {
        super(str);
        this.cause = th2;
    }
}
