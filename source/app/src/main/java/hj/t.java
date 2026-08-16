package Hj;

import java.io.IOException;
import java.security.cert.CertSelector;
import java.security.cert.CertStore;
import java.security.cert.CertStoreException;
import java.security.cert.Certificate;
import java.security.cert.X509CertSelector;
import java.util.Collection;

public class t<T extends Certificate> implements org.bouncycastle.util.r<T> {

    public final CertSelector f8545b;

    public static class b {

        public final CertSelector f8546a;

        public b(CertSelector certSelector) {
            this.f8546a = (CertSelector) certSelector.clone();
        }

        public t<? extends Certificate> a() {
            return new t<>(this.f8546a);
        }
    }

    public static class c extends X509CertSelector {

        public final t f8547b;

        public c(t tVar) {
            this.f8547b = tVar;
            if (tVar.f8545b instanceof X509CertSelector) {
                X509CertSelector x509CertSelector = (X509CertSelector) tVar.f8545b;
                setAuthorityKeyIdentifier(x509CertSelector.getAuthorityKeyIdentifier());
                setBasicConstraints(x509CertSelector.getBasicConstraints());
                setCertificate(x509CertSelector.getCertificate());
                setCertificateValid(x509CertSelector.getCertificateValid());
                setKeyUsage(x509CertSelector.getKeyUsage());
                setMatchAllSubjectAltNames(x509CertSelector.getMatchAllSubjectAltNames());
                setPrivateKeyValid(x509CertSelector.getPrivateKeyValid());
                setSerialNumber(x509CertSelector.getSerialNumber());
                setSubjectKeyIdentifier(x509CertSelector.getSubjectKeyIdentifier());
                setSubjectPublicKey(x509CertSelector.getSubjectPublicKey());
                try {
                    setExtendedKeyUsage(x509CertSelector.getExtendedKeyUsage());
                    setIssuer(x509CertSelector.getIssuerAsBytes());
                    setNameConstraints(x509CertSelector.getNameConstraints());
                    setPathToNames(x509CertSelector.getPathToNames());
                    setPolicy(x509CertSelector.getPolicy());
                    setSubject(x509CertSelector.getSubjectAsBytes());
                    setSubjectAlternativeNames(x509CertSelector.getSubjectAlternativeNames());
                    setSubjectPublicKeyAlgID(x509CertSelector.getSubjectPublicKeyAlgID());
                } catch (IOException e10) {
                    throw new IllegalStateException("base selector invalid: " + e10.getMessage(), e10);
                }
            }
        }

        @Override
        public boolean match(Certificate certificate) {
            t tVar = this.f8547b;
            return tVar == null ? certificate != null : tVar.Z2(certificate);
        }
    }

    public t(CertSelector certSelector) {
        this.f8545b = certSelector;
    }

    public static Collection<? extends Certificate> c(t tVar, CertStore certStore) throws CertStoreException {
        return certStore.getCertificates(new c(tVar));
    }

    public Certificate b() {
        CertSelector certSelector = this.f8545b;
        if (certSelector instanceof X509CertSelector) {
            return ((X509CertSelector) certSelector).getCertificate();
        }
        return null;
    }

    @Override
    public Object clone() {
        return new t(this.f8545b);
    }

    @Override
    public boolean Z2(Certificate certificate) {
        return this.f8545b.match(certificate);
    }
}
