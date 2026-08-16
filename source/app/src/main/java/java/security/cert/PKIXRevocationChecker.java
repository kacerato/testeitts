package java.security.cert;

import java.net.URI;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/cert/PKIXRevocationChecker.class
 */
public abstract class PKIXRevocationChecker extends PKIXCertPathChecker {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/cert/PKIXRevocationChecker$Option.class
 */
    public enum Option {
        NO_FALLBACK,
        ONLY_END_ENTITY,
        PREFER_CRLS,
        SOFT_FAIL
    }

    public abstract List<CertPathValidatorException> getSoftFailExceptions();

    public PKIXRevocationChecker() {
        throw new RuntimeException("Stub!");
    }

    public void setOcspResponder(URI uri) {
        throw new RuntimeException("Stub!");
    }

    public URI getOcspResponder() {
        throw new RuntimeException("Stub!");
    }

    public void setOcspResponderCert(X509Certificate cert) {
        throw new RuntimeException("Stub!");
    }

    public X509Certificate getOcspResponderCert() {
        throw new RuntimeException("Stub!");
    }

    public void setOcspExtensions(List<Extension> extensions) {
        throw new RuntimeException("Stub!");
    }

    public List<Extension> getOcspExtensions() {
        throw new RuntimeException("Stub!");
    }

    public void setOcspResponses(Map<X509Certificate, byte[]> responses) {
        throw new RuntimeException("Stub!");
    }

    public Map<X509Certificate, byte[]> getOcspResponses() {
        throw new RuntimeException("Stub!");
    }

    public void setOptions(Set<Option> options) {
        throw new RuntimeException("Stub!");
    }

    public Set<Option> getOptions() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public PKIXRevocationChecker clone() {
        throw new RuntimeException("Stub!");
    }
}
