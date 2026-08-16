package org.bouncycastle.jce.exception;

import ek.InterfaceC13160a;
import java.io.IOException;

public class ExtIOException extends IOException implements InterfaceC13160a {
    private Throwable cause;

    public ExtIOException(String str, Throwable th2) {
        super(str);
        this.cause = th2;
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }
}
