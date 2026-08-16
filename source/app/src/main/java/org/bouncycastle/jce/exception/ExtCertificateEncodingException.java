package org.bouncycastle.jce.exception;

import ek.InterfaceC13160a;
import java.security.cert.CertificateEncodingException;

public class ExtCertificateEncodingException extends CertificateEncodingException implements InterfaceC13160a {
    private Throwable cause;

    public ExtCertificateEncodingException(String str, Throwable th2) {
        super(str);
        this.cause = th2;
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }
}
