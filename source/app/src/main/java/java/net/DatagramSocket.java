package java.net;

import java.io.Closeable;
import java.io.IOException;
import java.nio.channels.DatagramChannel;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/net/DatagramSocket.class
 */
public class DatagramSocket implements Closeable {
    public DatagramSocket() throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public DatagramSocket(DatagramSocketImpl impl) {
        throw new RuntimeException("Stub!");
    }

    public DatagramSocket(SocketAddress bindaddr) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public DatagramSocket(int port) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public DatagramSocket(int port, InetAddress laddr) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public synchronized void bind(SocketAddress addr) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public void connect(InetAddress address, int port) {
        throw new RuntimeException("Stub!");
    }

    public void connect(SocketAddress addr) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public void disconnect() {
        throw new RuntimeException("Stub!");
    }

    public boolean isBound() {
        throw new RuntimeException("Stub!");
    }

    public boolean isConnected() {
        throw new RuntimeException("Stub!");
    }

    public InetAddress getInetAddress() {
        throw new RuntimeException("Stub!");
    }

    public int getPort() {
        throw new RuntimeException("Stub!");
    }

    public SocketAddress getRemoteSocketAddress() {
        throw new RuntimeException("Stub!");
    }

    public SocketAddress getLocalSocketAddress() {
        throw new RuntimeException("Stub!");
    }

    public void send(DatagramPacket p10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public synchronized void receive(DatagramPacket p10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public InetAddress getLocalAddress() {
        throw new RuntimeException("Stub!");
    }

    public int getLocalPort() {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setSoTimeout(int timeout) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public synchronized int getSoTimeout() throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setSendBufferSize(int size) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public synchronized int getSendBufferSize() throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setReceiveBufferSize(int size) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public synchronized int getReceiveBufferSize() throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setReuseAddress(boolean on2) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public synchronized boolean getReuseAddress() throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setBroadcast(boolean on2) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public synchronized boolean getBroadcast() throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setTrafficClass(int tc2) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public synchronized int getTrafficClass() throws SocketException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() {
        throw new RuntimeException("Stub!");
    }

    public boolean isClosed() {
        throw new RuntimeException("Stub!");
    }

    public DatagramChannel getChannel() {
        throw new RuntimeException("Stub!");
    }

    public static synchronized void setDatagramSocketImplFactory(DatagramSocketImplFactory fac) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
