package JAVARuntime;

import java.io.IOException;
import java.net.InetAddress;
import java.net.SocketAddress;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ServerSocket.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ServerSocket.class
  classes.dex
 */
public class ServerSocket extends java.net.ServerSocket {
    public ServerSocket() throws IOException {
        validateThread();
    }

    public ServerSocket(int i10) throws IOException {
        super(i10);
    }

    public ServerSocket(int i10, int i11) throws IOException {
        super(i10, i11);
    }

    public ServerSocket(int i10, int i11, InetAddress inetAddress) throws IOException {
        super(i10, i11, inetAddress);
    }

    @Override
    public void bind(SocketAddress socketAddress) throws IOException {
        validateThread();
        super.bind(socketAddress);
    }

    @Override
    public void bind(SocketAddress socketAddress, int i10) throws IOException {
        validateThread();
        super.bind(socketAddress, i10);
    }

    @Override
    public java.net.Socket accept() throws IOException {
        return new Socket(super.accept());
    }

    private static void validateThread() {
    }
}
