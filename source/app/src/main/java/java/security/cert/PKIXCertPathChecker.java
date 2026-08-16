package java.security.cert;

import java.util.Collection;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/cert/PKIXCertPathChecker.class
 */
public abstract class PKIXCertPathChecker implements CertPathChecker, Cloneable {
    @Override
    public abstract void init(boolean z10) throws CertPathValidatorException;

    @Override
    public abstract boolean isForwardCheckingSupported();

    public abstract Set<String> getSupportedExtensions();

    public abstract void check(Certificate certificate, Collection<String> collection) throws CertPathValidatorException;

    public PKIXCertPathChecker() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void check(Certificate cert) throws CertPathValidatorException {
        throw new RuntimeException("Stub!");
    }

    public Object clone() {
        throw new RuntimeException("Stub!");
    }
}
