package java.security.cert;

import java.security.PublicKey;
import javax.security.auth.x500.X500Principal;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/cert/TrustAnchor.class
 */
public class TrustAnchor {
    public TrustAnchor(X509Certificate trustedCert, byte[] nameConstraints) {
        throw new RuntimeException("Stub!");
    }

    public TrustAnchor(X500Principal caPrincipal, PublicKey pubKey, byte[] nameConstraints) {
        throw new RuntimeException("Stub!");
    }

    public TrustAnchor(String caName, PublicKey pubKey, byte[] nameConstraints) {
        throw new RuntimeException("Stub!");
    }

    public final X509Certificate getTrustedCert() {
        throw new RuntimeException("Stub!");
    }

    public final X500Principal getCA() {
        throw new RuntimeException("Stub!");
    }

    public final String getCAName() {
        throw new RuntimeException("Stub!");
    }

    public final PublicKey getCAPublicKey() {
        throw new RuntimeException("Stub!");
    }

    public final byte[] getNameConstraints() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
