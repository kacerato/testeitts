package javax.net;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/SocketFactory.class
 */
public abstract class SocketFactory {
    public abstract Socket createSocket(String str, int i10) throws IOException, UnknownHostException;

    public abstract Socket createSocket(String str, int i10, InetAddress inetAddress, int i11) throws IOException, UnknownHostException;

    public abstract Socket createSocket(InetAddress inetAddress, int i10) throws IOException;

    public abstract Socket createSocket(InetAddress inetAddress, int i10, InetAddress inetAddress2, int i11) throws IOException;

    public SocketFactory() {
        throw new RuntimeException("Stub!");
    }

    public static SocketFactory getDefault() {
        throw new RuntimeException("Stub!");
    }

    public Socket createSocket() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
