package javax.net.ssl;

import java.io.IOException;
import java.net.Socket;
import javax.net.SocketFactory;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/ssl/SSLSocketFactory.class
 */
public abstract class SSLSocketFactory extends SocketFactory {
    public abstract String[] getDefaultCipherSuites();

    public abstract String[] getSupportedCipherSuites();

    public abstract Socket createSocket(Socket socket, String str, int i10, boolean z10) throws IOException;

    public SSLSocketFactory() {
        throw new RuntimeException("Stub!");
    }

    public static synchronized SocketFactory getDefault() {
        throw new RuntimeException("Stub!");
    }
}
