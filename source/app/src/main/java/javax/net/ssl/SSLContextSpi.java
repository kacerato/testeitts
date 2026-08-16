package javax.net.ssl;

import java.security.KeyManagementException;
import java.security.SecureRandom;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/ssl/SSLContextSpi.class
 */
public abstract class SSLContextSpi {
    protected abstract void engineInit(KeyManager[] keyManagerArr, TrustManager[] trustManagerArr, SecureRandom secureRandom) throws KeyManagementException;

    protected abstract SSLSocketFactory engineGetSocketFactory();

    protected abstract SSLServerSocketFactory engineGetServerSocketFactory();

    protected abstract SSLEngine engineCreateSSLEngine();

    protected abstract SSLEngine engineCreateSSLEngine(String str, int i10);

    protected abstract SSLSessionContext engineGetServerSessionContext();

    protected abstract SSLSessionContext engineGetClientSessionContext();

    public SSLContextSpi() {
        throw new RuntimeException("Stub!");
    }

    protected SSLParameters engineGetDefaultSSLParameters() {
        throw new RuntimeException("Stub!");
    }

    protected SSLParameters engineGetSupportedSSLParameters() {
        throw new RuntimeException("Stub!");
    }
}
