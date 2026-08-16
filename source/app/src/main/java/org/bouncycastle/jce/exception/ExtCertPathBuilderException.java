package org.bouncycastle.jce.exception;

import ek.InterfaceC13160a;
import java.security.cert.CertPath;
import java.security.cert.CertPathBuilderException;

public class ExtCertPathBuilderException extends CertPathBuilderException implements InterfaceC13160a {
    private Throwable cause;

    public ExtCertPathBuilderException(String str, Throwable th2) {
        super(str);
        this.cause = th2;
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }

    public ExtCertPathBuilderException(String str, Throwable th2, CertPath certPath, int i10) {
        super(str, th2);
        this.cause = th2;
    }
}
