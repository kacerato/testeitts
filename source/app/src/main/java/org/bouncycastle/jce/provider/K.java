package org.bouncycastle.jce.provider;

import dk.InterfaceC12950f;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Date;

public class K implements Hj.q {

    public final InterfaceC12950f f101620b;

    public Hj.r f101621c;

    public Date f101622d = null;

    public K(InterfaceC12950f interfaceC12950f) {
        this.f101620b = interfaceC12950f;
    }

    @Override
    public void a(String str, Object obj) {
    }

    @Override
    public void b(Hj.r rVar) {
        this.f101621c = rVar;
        this.f101622d = new Date();
    }

    public void c(boolean z10) throws CertPathValidatorException {
        if (z10) {
            throw new CertPathValidatorException("forward checking not supported");
        }
        this.f101621c = null;
        this.f101622d = new Date();
    }

    @Override
    public void check(Certificate certificate) throws CertPathValidatorException {
        try {
            Hj.r rVar = this.f101621c;
            N.b(rVar, rVar.c(), this.f101622d, this.f101621c.e(), (X509Certificate) certificate, this.f101621c.d(), this.f101621c.f(), this.f101621c.a().getCertificates(), this.f101620b);
        } catch (AnnotatedException e10) {
            throw new CertPathValidatorException(e10.getMessage(), e10.getCause() != null ? e10.getCause() : e10, this.f101621c.a(), this.f101621c.b());
        }
    }
}
