package java.net;

import java.io.Closeable;
import java.io.IOException;
import java.nio.channels.ServerSocketChannel;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/net/ServerSocket.class
 */
public class ServerSocket implements Closeable {
    public ServerSocket() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public ServerSocket(int port) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public ServerSocket(int port, int backlog) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public ServerSocket(int port, int backlog, InetAddress bindAddr) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void bind(SocketAddress endpoint) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void bind(SocketAddress endpoint, int backlog) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public InetAddress getInetAddress() {
        throw new RuntimeException("Stub!");
    }

    public int getLocalPort() {
        throw new RuntimeException("Stub!");
    }

    public SocketAddress getLocalSocketAddress() {
        throw new RuntimeException("Stub!");
    }

    public Socket accept() throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected final void implAccept(Socket s10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public ServerSocketChannel getChannel() {
        throw new RuntimeException("Stub!");
    }

    public boolean isBound() {
        throw new RuntimeException("Stub!");
    }

    public boolean isClosed() {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setSoTimeout(int timeout) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public synchronized int getSoTimeout() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void setReuseAddress(boolean on2) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public boolean getReuseAddress() throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public static synchronized void setSocketFactory(SocketImplFactory fac) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setReceiveBufferSize(int size) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public synchronized int getReceiveBufferSize() throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public void setPerformancePreferences(int connectionTime, int latency, int bandwidth) {
        throw new RuntimeException("Stub!");
    }
}
