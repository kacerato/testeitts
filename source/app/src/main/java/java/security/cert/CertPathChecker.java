package java.security.cert;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/cert/CertPathChecker.class
 */
public interface CertPathChecker {
    void init(boolean z10) throws CertPathValidatorException;

    boolean isForwardCheckingSupported();

    void check(Certificate certificate) throws CertPathValidatorException;
}
