package javax.net;

import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/ServerSocketFactory.class
 */
public abstract class ServerSocketFactory {
    public abstract ServerSocket createServerSocket(int i10) throws IOException;

    public abstract ServerSocket createServerSocket(int i10, int i11) throws IOException;

    public abstract ServerSocket createServerSocket(int i10, int i11, InetAddress inetAddress) throws IOException;

    public ServerSocketFactory() {
        throw new RuntimeException("Stub!");
    }

    public static ServerSocketFactory getDefault() {
        throw new RuntimeException("Stub!");
    }

    public ServerSocket createServerSocket() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
