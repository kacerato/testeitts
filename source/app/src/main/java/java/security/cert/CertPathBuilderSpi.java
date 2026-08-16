package java.security.cert;

import java.security.InvalidAlgorithmParameterException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/cert/CertPathBuilderSpi.class
 */
public abstract class CertPathBuilderSpi {
    public abstract CertPathBuilderResult engineBuild(CertPathParameters certPathParameters) throws CertPathBuilderException, InvalidAlgorithmParameterException;

    public CertPathBuilderSpi() {
        throw new RuntimeException("Stub!");
    }

    public CertPathChecker engineGetRevocationChecker() {
        throw new RuntimeException("Stub!");
    }
}
