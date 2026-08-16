package org.bouncycastle.cert.jcajce;

import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;

public class b extends a {
    @Override
    public CertificateFactory a(String str) throws CertificateException {
        return CertificateFactory.getInstance(str);
    }
}
