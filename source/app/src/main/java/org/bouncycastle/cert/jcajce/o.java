package org.bouncycastle.cert.jcajce;

import java.security.NoSuchProviderException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;

public class o extends a {

    public final String f100446a;

    public o(String str) {
        this.f100446a = str;
    }

    @Override
    public CertificateFactory a(String str) throws CertificateException, NoSuchProviderException {
        return CertificateFactory.getInstance(str, this.f100446a);
    }
}
