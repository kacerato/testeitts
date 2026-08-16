package java.security.cert;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/cert/PKIXBuilderParameters.class
 */
public class PKIXBuilderParameters extends PKIXParameters {
    public PKIXBuilderParameters(Set<TrustAnchor> trustAnchors, CertSelector targetConstraints) throws InvalidAlgorithmParameterException {
        super((Set<TrustAnchor>) null);
        throw new RuntimeException("Stub!");
    }

    public PKIXBuilderParameters(KeyStore keystore, CertSelector targetConstraints) throws KeyStoreException, InvalidAlgorithmParameterException {
        super((KeyStore) null);
        throw new RuntimeException("Stub!");
    }

    public void setMaxPathLength(int maxPathLength) {
        throw new RuntimeException("Stub!");
    }

    public int getMaxPathLength() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
