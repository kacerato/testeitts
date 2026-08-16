package org.bouncycastle.jce.provider;

import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.PKIXCertPathChecker;

public class Q implements Hj.q {

    public final PKIXCertPathChecker f101663b;

    public Q(PKIXCertPathChecker pKIXCertPathChecker) {
        this.f101663b = pKIXCertPathChecker;
    }

    @Override
    public void a(String str, Object obj) {
    }

    @Override
    public void b(Hj.r rVar) throws CertPathValidatorException {
        this.f101663b.init(false);
    }

    @Override
    public void check(Certificate certificate) throws CertPathValidatorException {
        this.f101663b.check(certificate);
    }
}
