package org.bouncycastle.cert.cmp;

public class CMPException extends Exception {
    private Throwable cause;

    public CMPException(String str) {
        super(str);
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }

    public CMPException(String str, Throwable th2) {
        super(str);
        this.cause = th2;
    }
}
