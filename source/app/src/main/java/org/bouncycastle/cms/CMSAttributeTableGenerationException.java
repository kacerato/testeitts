package org.bouncycastle.cms;

public class CMSAttributeTableGenerationException extends CMSRuntimeException {

    Exception f100510e;

    public CMSAttributeTableGenerationException(String str) {
        super(str);
    }

    @Override
    public Throwable getCause() {
        return this.f100510e;
    }

    @Override
    public Exception getUnderlyingException() {
        return this.f100510e;
    }

    public CMSAttributeTableGenerationException(String str, Exception exc) {
        super(str);
        this.f100510e = exc;
    }
}
