package org.bouncycastle.pkix.jcajce;

import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import org.bouncycastle.util.r;

public class l extends X509CertSelector implements r {
    public static l a(X509CertSelector x509CertSelector) {
        if (x509CertSelector == null) {
            throw new IllegalArgumentException("cannot create from null selector");
        }
        l lVar = new l();
        lVar.setAuthorityKeyIdentifier(x509CertSelector.getAuthorityKeyIdentifier());
        lVar.setBasicConstraints(x509CertSelector.getBasicConstraints());
        lVar.setCertificate(x509CertSelector.getCertificate());
        lVar.setCertificateValid(x509CertSelector.getCertificateValid());
        lVar.setMatchAllSubjectAltNames(x509CertSelector.getMatchAllSubjectAltNames());
        try {
            lVar.setPathToNames(x509CertSelector.getPathToNames());
            lVar.setExtendedKeyUsage(x509CertSelector.getExtendedKeyUsage());
            lVar.setNameConstraints(x509CertSelector.getNameConstraints());
            lVar.setPolicy(x509CertSelector.getPolicy());
            lVar.setSubjectPublicKeyAlgID(x509CertSelector.getSubjectPublicKeyAlgID());
            lVar.setSubjectAlternativeNames(x509CertSelector.getSubjectAlternativeNames());
            lVar.setIssuer(x509CertSelector.getIssuer());
            lVar.setKeyUsage(x509CertSelector.getKeyUsage());
            lVar.setPrivateKeyValid(x509CertSelector.getPrivateKeyValid());
            lVar.setSerialNumber(x509CertSelector.getSerialNumber());
            lVar.setSubject(x509CertSelector.getSubject());
            lVar.setSubjectKeyIdentifier(x509CertSelector.getSubjectKeyIdentifier());
            lVar.setSubjectPublicKey(x509CertSelector.getSubjectPublicKey());
            return lVar;
        } catch (IOException e10) {
            throw new IllegalArgumentException("error in passed in selector: " + ((Object) e10));
        }
    }

    @Override
    public boolean Z2(Object obj) {
        if (obj instanceof X509Certificate) {
            return super.match((X509Certificate) obj);
        }
        return false;
    }

    @Override
    public Object clone() {
        return (l) super.clone();
    }

    @Override
    public boolean match(Certificate certificate) {
        return Z2(certificate);
    }
}
