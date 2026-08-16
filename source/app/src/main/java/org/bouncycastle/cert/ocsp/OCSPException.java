package org.bouncycastle.cert.ocsp;

public class OCSPException extends Exception {
    private Throwable cause;

    public OCSPException(String str) {
        super(str);
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }

    public OCSPException(String str, Throwable th2) {
        super(str);
        this.cause = th2;
    }
}
