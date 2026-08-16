package org.bouncycastle.cert.jcajce;

import hi.C13505q;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import li.C14146h;

public class i extends C14146h {
    public i(X509Certificate x509Certificate) throws CertificateEncodingException {
        super(C13505q.v(x509Certificate.getEncoded()));
    }
}
