package JAVARuntime;

import java.net.DatagramSocketImpl;
import java.net.InetAddress;
import java.net.SocketAddress;
import java.net.SocketException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:DatagramSocket.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:DatagramSocket.class
  classes.dex
 */
public class DatagramSocket extends java.net.DatagramSocket {
    public DatagramSocket() throws SocketException {
        validateThread();
    }

    public DatagramSocket(DatagramSocketImpl datagramSocketImpl) {
        super(datagramSocketImpl);
    }

    public DatagramSocket(SocketAddress socketAddress) throws SocketException {
        super(socketAddress);
    }

    public DatagramSocket(int i10) throws SocketException {
        super(i10);
    }

    public DatagramSocket(int i10, InetAddress inetAddress) throws SocketException {
        super(i10, inetAddress);
    }

    @Override
    public synchronized void bind(SocketAddress socketAddress) throws SocketException {
        validateThread();
        super.bind(socketAddress);
    }

    @Override
    public void connect(InetAddress inetAddress, int i10) {
        validateThread();
        super.connect(inetAddress, i10);
    }

    @Override
    public void connect(SocketAddress socketAddress) throws SocketException {
        validateThread();
        super.connect(socketAddress);
    }

    private static void validateThread() {
    }
}
