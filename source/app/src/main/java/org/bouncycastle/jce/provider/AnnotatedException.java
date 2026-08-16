package org.bouncycastle.jce.provider;

import ek.InterfaceC13160a;

public class AnnotatedException extends Exception implements InterfaceC13160a {
    private Throwable _underlyingException;

    public AnnotatedException(String str) {
        this(str, null);
    }

    @Override
    public Throwable getCause() {
        return this._underlyingException;
    }

    public Throwable getUnderlyingException() {
        return this._underlyingException;
    }

    public AnnotatedException(String str, Throwable th2) {
        super(str);
        this._underlyingException = th2;
    }
}
