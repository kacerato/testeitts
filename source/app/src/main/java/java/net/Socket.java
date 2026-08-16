package java.net;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.SocketChannel;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/net/Socket.class
 */
public class Socket implements Closeable {
    public Socket() {
        throw new RuntimeException("Stub!");
    }

    public Socket(Proxy proxy) {
        throw new RuntimeException("Stub!");
    }

    public Socket(SocketImpl impl) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public Socket(String host, int port) throws UnknownHostException, IOException {
        throw new RuntimeException("Stub!");
    }

    public Socket(InetAddress address, int port) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public Socket(String host, int port, InetAddress localAddr, int localPort) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public Socket(InetAddress address, int port, InetAddress localAddr, int localPort) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public Socket(String host, int port, boolean stream) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public Socket(InetAddress host, int port, boolean stream) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void connect(SocketAddress endpoint) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void connect(SocketAddress endpoint, int timeout) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void bind(SocketAddress bindpoint) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public InetAddress getInetAddress() {
        throw new RuntimeException("Stub!");
    }

    public InetAddress getLocalAddress() {
        throw new RuntimeException("Stub!");
    }

    public int getPort() {
        throw new RuntimeException("Stub!");
    }

    public int getLocalPort() {
        throw new RuntimeException("Stub!");
    }

    public SocketAddress getRemoteSocketAddress() {
        throw new RuntimeException("Stub!");
    }

    public SocketAddress getLocalSocketAddress() {
        throw new RuntimeException("Stub!");
    }

    public SocketChannel getChannel() {
        throw new RuntimeException("Stub!");
    }

    public InputStream getInputStream() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public OutputStream getOutputStream() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void setTcpNoDelay(boolean on2) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public boolean getTcpNoDelay() throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public void setSoLinger(boolean on2, int linger) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public int getSoLinger() throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public void sendUrgentData(int data) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void setOOBInline(boolean on2) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public boolean getOOBInline() throws SocketException {
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

    public void setKeepAlive(boolean on2) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public boolean getKeepAlive() throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public void setTrafficClass(int tc2) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public int getTrafficClass() throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public void setReuseAddress(boolean on2) throws SocketException {
        throw new RuntimeException("Stub!");
    }

    public boolean getReuseAddress() throws SocketException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void close() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void shutdownInput() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void shutdownOutput() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public boolean isConnected() {
        throw new RuntimeException("Stub!");
    }

    public boolean isBound() {
        throw new RuntimeException("Stub!");
    }

    public boolean isClosed() {
        throw new RuntimeException("Stub!");
    }

    public boolean isInputShutdown() {
        throw new RuntimeException("Stub!");
    }

    public boolean isOutputShutdown() {
        throw new RuntimeException("Stub!");
    }

    public static synchronized void setSocketImplFactory(SocketImplFactory fac) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void setPerformancePreferences(int connectionTime, int latency, int bandwidth) {
        throw new RuntimeException("Stub!");
    }
}
