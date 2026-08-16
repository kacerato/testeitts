package org.bouncycastle.jce;

import hi.B0;
import hi.i0;
import hi.k0;
import java.io.IOException;
import java.security.cert.CRLException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import oh.B;

public class g {
    public static j a(X509CRL x509crl) throws CRLException {
        try {
            return new j(B0.C(i0.v(B.B(x509crl.getTBSCertList())).x()));
        } catch (IOException e10) {
            throw new CRLException(e10.toString());
        }
    }

    public static j b(X509Certificate x509Certificate) throws CertificateEncodingException {
        try {
            return new j(B0.C(k0.w(B.B(x509Certificate.getTBSCertificate())).y()));
        } catch (IOException e10) {
            throw new CertificateEncodingException(e10.toString());
        }
    }

    public static j c(X509Certificate x509Certificate) throws CertificateEncodingException {
        try {
            return new j(B0.C(k0.w(B.B(x509Certificate.getTBSCertificate())).D()));
        } catch (IOException e10) {
            throw new CertificateEncodingException(e10.toString());
        }
    }
}
