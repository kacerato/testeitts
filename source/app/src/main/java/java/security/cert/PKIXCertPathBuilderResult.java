package java.security.cert;

import java.security.PublicKey;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/cert/PKIXCertPathBuilderResult.class
 */
public class PKIXCertPathBuilderResult extends PKIXCertPathValidatorResult implements CertPathBuilderResult {
    public PKIXCertPathBuilderResult(CertPath certPath, TrustAnchor trustAnchor, PolicyNode policyTree, PublicKey subjectPublicKey) {
        super((TrustAnchor) null, (PolicyNode) null, (PublicKey) null);
        throw new RuntimeException("Stub!");
    }

    @Override
    public CertPath getCertPath() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
