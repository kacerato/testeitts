package javax.net.ssl;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/ssl/TrustManagerFactory.class
 */
public class TrustManagerFactory {
    protected TrustManagerFactory(TrustManagerFactorySpi factorySpi, Provider provider, String algorithm) {
        throw new RuntimeException("Stub!");
    }

    public static final String getDefaultAlgorithm() {
        throw new RuntimeException("Stub!");
    }

    public final String getAlgorithm() {
        throw new RuntimeException("Stub!");
    }

    public static final TrustManagerFactory getInstance(String algorithm) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public static final TrustManagerFactory getInstance(String algorithm, String provider) throws NoSuchAlgorithmException, NoSuchProviderException {
        throw new RuntimeException("Stub!");
    }

    public static final TrustManagerFactory getInstance(String algorithm, Provider provider) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public final Provider getProvider() {
        throw new RuntimeException("Stub!");
    }

    public final void init(KeyStore ks) throws KeyStoreException {
        throw new RuntimeException("Stub!");
    }

    public final void init(ManagerFactoryParameters spec) throws InvalidAlgorithmParameterException {
        throw new RuntimeException("Stub!");
    }

    public final TrustManager[] getTrustManagers() {
        throw new RuntimeException("Stub!");
    }
}
