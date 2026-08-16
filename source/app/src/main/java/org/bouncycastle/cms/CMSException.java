package org.bouncycastle.cms;

public class CMSException extends Exception {

    Exception f100511e;

    public CMSException(String str) {
        super(str);
    }

    @Override
    public Throwable getCause() {
        return this.f100511e;
    }

    public Exception getUnderlyingException() {
        return this.f100511e;
    }

    public CMSException(String str, Exception exc) {
        super(str);
        this.f100511e = exc;
    }
}
