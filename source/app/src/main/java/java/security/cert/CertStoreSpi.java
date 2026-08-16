package java.security.cert;

import java.security.InvalidAlgorithmParameterException;
import java.util.Collection;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/cert/CertStoreSpi.class
 */
public abstract class CertStoreSpi {
    public abstract Collection<? extends Certificate> engineGetCertificates(CertSelector certSelector) throws CertStoreException;

    public abstract Collection<? extends CRL> engineGetCRLs(CRLSelector cRLSelector) throws CertStoreException;

    public CertStoreSpi(CertStoreParameters params) throws InvalidAlgorithmParameterException {
        throw new RuntimeException("Stub!");
    }
}
