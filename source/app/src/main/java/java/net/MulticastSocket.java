package java.net;

import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/net/MulticastSocket.class
 */
public class MulticastSocket extends DatagramSocket {
    public MulticastSocket() throws IOException {
        super((DatagramSocketImpl) null);
        throw new RuntimeException("Stub!");
    }

    public MulticastSocket(int port) throws IOException {
        super((DatagramSocketImpl) null);
        throw new RuntimeException("Stub!");
    }

    public MulticastSocket(SocketAddress bindaddr) throws IOException {
        super((DatagramSocketImpl) null);
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setTTL(byte ttl) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void setTimeToLive(int ttl) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public byte getTTL() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public int getTimeToLive() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void joinGroup(InetAddress mcastaddr) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void leaveGroup(InetAddress mcastaddr) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void joinGroup(SocketAddress mcastaddr, NetworkInterface netIf) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void leaveGroup(SocketAddress mcastaddr, NetworkInterface netIf) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void setInterface(InetAddress inf) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public InetAddress getInterface() throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public void setNetworkInterface(NetworkInterface netIf) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public NetworkInterface getNetworkInterface() throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public void setLoopbackMode(boolean disable) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public boolean getLoopbackMode() throws SocketException {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void send(DatagramPacket p10, byte ttl) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
