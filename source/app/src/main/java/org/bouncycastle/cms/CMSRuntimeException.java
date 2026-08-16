package org.bouncycastle.cms;

public class CMSRuntimeException extends RuntimeException {

    Exception f100512e;

    public CMSRuntimeException(String str) {
        super(str);
    }

    @Override
    public Throwable getCause() {
        return this.f100512e;
    }

    public Exception getUnderlyingException() {
        return this.f100512e;
    }

    public CMSRuntimeException(String str, Exception exc) {
        super(str);
        this.f100512e = exc;
    }
}
