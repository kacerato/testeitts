package org.bouncycastle.cert.crmf;

public class CRMFRuntimeException extends RuntimeException {
    private Throwable cause;

    public CRMFRuntimeException(String str, Throwable th2) {
        super(str);
        this.cause = th2;
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }
}
