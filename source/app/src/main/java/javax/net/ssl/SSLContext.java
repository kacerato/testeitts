package javax.net.ssl;

import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.SecureRandom;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/ssl/SSLContext.class
 */
public class SSLContext {
    protected SSLContext(SSLContextSpi contextSpi, Provider provider, String protocol) {
        throw new RuntimeException("Stub!");
    }

    public static synchronized SSLContext getDefault() throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public static synchronized void setDefault(SSLContext context) {
        throw new RuntimeException("Stub!");
    }

    public static SSLContext getInstance(String protocol) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public static SSLContext getInstance(String protocol, String provider) throws NoSuchAlgorithmException, NoSuchProviderException {
        throw new RuntimeException("Stub!");
    }

    public static SSLContext getInstance(String protocol, Provider provider) throws NoSuchAlgorithmException {
        throw new RuntimeException("Stub!");
    }

    public final String getProtocol() {
        throw new RuntimeException("Stub!");
    }

    public final Provider getProvider() {
        throw new RuntimeException("Stub!");
    }

    public final void init(KeyManager[] km2, TrustManager[] tm2, SecureRandom random) throws KeyManagementException {
        throw new RuntimeException("Stub!");
    }

    public final SSLSocketFactory getSocketFactory() {
        throw new RuntimeException("Stub!");
    }

    public final SSLServerSocketFactory getServerSocketFactory() {
        throw new RuntimeException("Stub!");
    }

    public final SSLEngine createSSLEngine() {
        throw new RuntimeException("Stub!");
    }

    public final SSLEngine createSSLEngine(String peerHost, int peerPort) {
        throw new RuntimeException("Stub!");
    }

    public final SSLSessionContext getServerSessionContext() {
        throw new RuntimeException("Stub!");
    }

    public final SSLSessionContext getClientSessionContext() {
        throw new RuntimeException("Stub!");
    }

    public final SSLParameters getDefaultSSLParameters() {
        throw new RuntimeException("Stub!");
    }

    public final SSLParameters getSupportedSSLParameters() {
        throw new RuntimeException("Stub!");
    }
}
