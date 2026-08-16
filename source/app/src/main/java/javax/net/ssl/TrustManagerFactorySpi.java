package javax.net.ssl;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/ssl/TrustManagerFactorySpi.class
 */
public abstract class TrustManagerFactorySpi {
    protected abstract void engineInit(KeyStore keyStore) throws KeyStoreException;

    protected abstract void engineInit(ManagerFactoryParameters managerFactoryParameters) throws InvalidAlgorithmParameterException;

    protected abstract TrustManager[] engineGetTrustManagers();

    public TrustManagerFactorySpi() {
        throw new RuntimeException("Stub!");
    }
}
