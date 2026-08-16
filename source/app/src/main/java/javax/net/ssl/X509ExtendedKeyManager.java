package javax.net.ssl;

import java.security.Principal;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/ssl/X509ExtendedKeyManager.class
 */
public abstract class X509ExtendedKeyManager implements X509KeyManager {
    protected X509ExtendedKeyManager() {
        throw new RuntimeException("Stub!");
    }

    public String chooseEngineClientAlias(String[] keyType, Principal[] issuers, SSLEngine engine) {
        throw new RuntimeException("Stub!");
    }

    public String chooseEngineServerAlias(String keyType, Principal[] issuers, SSLEngine engine) {
        throw new RuntimeException("Stub!");
    }
}
