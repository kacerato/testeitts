package org.bouncycastle.cert.cmp;

public class CMPRuntimeException extends RuntimeException {
    private Throwable cause;

    public CMPRuntimeException(String str, Throwable th2) {
        super(str);
        this.cause = th2;
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }
}
