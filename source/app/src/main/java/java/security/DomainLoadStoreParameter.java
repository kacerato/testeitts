package java.security;

import java.net.URI;
import java.security.KeyStore;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/security/DomainLoadStoreParameter.class
 */
public final class DomainLoadStoreParameter implements KeyStore.LoadStoreParameter {
    public DomainLoadStoreParameter(URI configuration, Map<String, KeyStore.ProtectionParameter> protectionParams) {
        throw new RuntimeException("Stub!");
    }

    public URI getConfiguration() {
        throw new RuntimeException("Stub!");
    }

    public Map<String, KeyStore.ProtectionParameter> getProtectionParams() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public KeyStore.ProtectionParameter getProtectionParameter() {
        throw new RuntimeException("Stub!");
    }
}
