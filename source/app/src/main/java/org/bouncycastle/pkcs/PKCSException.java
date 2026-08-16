package org.bouncycastle.pkcs;

public class PKCSException extends Exception {
    private Throwable cause;

    public PKCSException(String str) {
        super(str);
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }

    public PKCSException(String str, Throwable th2) {
        super(str);
        this.cause = th2;
    }
}
