package org.bouncycastle.cms.jcajce;

import fi.C13228d;
import java.io.IOException;
import java.security.cert.X509CertSelector;
import oh.AbstractC14551y;
import org.bouncycastle.cms.C14675q0;
import org.bouncycastle.cms.K0;

public class C14644e {
    public C14675q0 a(X509CertSelector x509CertSelector) {
        try {
            return x509CertSelector.getSubjectKeyIdentifier() != null ? new C14675q0(C13228d.x(x509CertSelector.getIssuerAsBytes()), x509CertSelector.getSerialNumber(), AbstractC14551y.F(x509CertSelector.getSubjectKeyIdentifier()).H()) : new C14675q0(C13228d.x(x509CertSelector.getIssuerAsBytes()), x509CertSelector.getSerialNumber());
        } catch (IOException e10) {
            throw new IllegalArgumentException("unable to convert issuer: " + e10.getMessage());
        }
    }

    public K0 b(X509CertSelector x509CertSelector) {
        try {
            return x509CertSelector.getSubjectKeyIdentifier() != null ? new K0(C13228d.x(x509CertSelector.getIssuerAsBytes()), x509CertSelector.getSerialNumber(), AbstractC14551y.F(x509CertSelector.getSubjectKeyIdentifier()).H()) : new K0(C13228d.x(x509CertSelector.getIssuerAsBytes()), x509CertSelector.getSerialNumber());
        } catch (IOException e10) {
            throw new IllegalArgumentException("unable to convert issuer: " + e10.getMessage());
        }
    }
}
