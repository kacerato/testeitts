package org.bouncycastle.jce.exception;

import ek.InterfaceC13160a;
import java.security.cert.CertPath;
import java.security.cert.CertPathValidatorException;

public class ExtCertPathValidatorException extends CertPathValidatorException implements InterfaceC13160a {
    private Throwable cause;

    public ExtCertPathValidatorException(String str) {
        super(str);
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }

    public ExtCertPathValidatorException(String str, Throwable th2) {
        super(str);
        this.cause = th2;
    }

    public ExtCertPathValidatorException(String str, Throwable th2, CertPath certPath, int i10) {
        super(str, th2, certPath, i10);
        this.cause = th2;
    }
}
