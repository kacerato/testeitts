package org.bouncycastle.cert;

public class CertRuntimeException extends RuntimeException {
    private Throwable cause;

    public CertRuntimeException(String str, Throwable th2) {
        super(str);
        this.cause = th2;
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }
}
