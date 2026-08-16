package org.bouncycastle.cert.jcajce;

import java.security.Provider;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;

public class p extends a {

    public final Provider f100447a;

    public p(Provider provider) {
        this.f100447a = provider;
    }

    @Override
    public CertificateFactory a(String str) throws CertificateException {
        return CertificateFactory.getInstance(str, this.f100447a);
    }
}
