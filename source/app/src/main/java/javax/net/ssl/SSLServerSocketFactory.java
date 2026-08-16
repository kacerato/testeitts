package javax.net.ssl;

import javax.net.ServerSocketFactory;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/ssl/SSLServerSocketFactory.class
 */
public abstract class SSLServerSocketFactory extends ServerSocketFactory {
    public abstract String[] getDefaultCipherSuites();

    public abstract String[] getSupportedCipherSuites();

    protected SSLServerSocketFactory() {
        throw new RuntimeException("Stub!");
    }

    public static synchronized ServerSocketFactory getDefault() {
        throw new RuntimeException("Stub!");
    }
}
