package JAVARuntime;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.SocketImpl;
import java.nio.channels.SocketChannel;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Socket.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Socket.class
  classes.dex
 */
public class Socket extends java.net.Socket {
    private java.net.Socket imposter;

    public Socket() {
        validateThread();
    }

    public Socket(java.net.Socket socket) {
        this.imposter = socket;
    }

    public Socket(Proxy proxy) {
        super(proxy);
    }

    public Socket(SocketImpl socketImpl) throws SocketException {
        super(socketImpl);
    }

    public Socket(String str, int i10) throws IOException {
        super(str, i10);
    }

    public Socket(InetAddress inetAddress, int i10) throws IOException {
        super(inetAddress, i10);
    }

    public Socket(String str, int i10, InetAddress inetAddress, int i11) throws IOException {
        super(str, i10, inetAddress, i11);
    }

    public Socket(InetAddress inetAddress, int i10, InetAddress inetAddress2, int i11) throws IOException {
        super(inetAddress, i10, inetAddress2, i11);
    }

    public Socket(String str, int i10, boolean z10) throws IOException {
        super(str, i10, z10);
    }

    public Socket(InetAddress inetAddress, int i10, boolean z10) throws IOException {
        super(inetAddress, i10, z10);
    }

    @Override
    public void connect(SocketAddress socketAddress) throws IOException {
        if (this.imposter != null) {
            this.imposter.connect(socketAddress);
        } else {
            validateThread();
            super.connect(socketAddress);
        }
    }

    @Override
    public void connect(SocketAddress socketAddress, int i10) throws IOException {
        if (this.imposter != null) {
            this.imposter.connect(socketAddress, i10);
        } else {
            validateThread();
            super.connect(socketAddress, i10);
        }
    }

    @Override
    public void bind(SocketAddress socketAddress) throws IOException {
        if (this.imposter != null) {
            this.imposter.bind(socketAddress);
        } else {
            validateThread();
            super.bind(socketAddress);
        }
    }

    @Override
    public InetAddress getInetAddress() {
        return this.imposter != null ? this.imposter.getInetAddress() : super.getInetAddress();
    }

    @Override
    public InetAddress getLocalAddress() {
        return this.imposter != null ? this.imposter.getLocalAddress() : super.getLocalAddress();
    }

    @Override
    public int getPort() {
        return this.imposter != null ? this.imposter.getPort() : super.getPort();
    }

    @Override
    public int getLocalPort() {
        return this.imposter != null ? this.imposter.getLocalPort() : super.getLocalPort();
    }

    @Override
    public SocketAddress getRemoteSocketAddress() {
        return this.imposter != null ? this.imposter.getRemoteSocketAddress() : super.getRemoteSocketAddress();
    }

    @Override
    public SocketAddress getLocalSocketAddress() {
        return this.imposter != null ? this.imposter.getLocalSocketAddress() : super.getLocalSocketAddress();
    }

    @Override
    public SocketChannel getChannel() {
        return this.imposter != null ? this.imposter.getChannel() : super.getChannel();
    }

    @Override
    public InputStream getInputStream() throws IOException {
        return this.imposter != null ? this.imposter.getInputStream() : super.getInputStream();
    }

    @Override
    public OutputStream getOutputStream() throws IOException {
        return this.imposter != null ? this.imposter.getOutputStream() : super.getOutputStream();
    }

    @Override
    public void setTcpNoDelay(boolean z10) throws SocketException {
        if (this.imposter != null) {
            this.imposter.setTcpNoDelay(z10);
        } else {
            super.setTcpNoDelay(z10);
        }
    }

    @Override
    public boolean getTcpNoDelay() throws SocketException {
        return this.imposter != null ? this.imposter.getTcpNoDelay() : super.getTcpNoDelay();
    }

    @Override
    public void setSoLinger(boolean z10, int i10) throws SocketException {
        if (this.imposter != null) {
            this.imposter.setSoLinger(z10, i10);
        } else {
            super.setSoLinger(z10, i10);
        }
    }

    @Override
    public int getSoLinger() throws SocketException {
        return this.imposter != null ? this.imposter.getSoLinger() : super.getSoLinger();
    }

    @Override
    public void sendUrgentData(int i10) throws IOException {
        if (this.imposter != null) {
            this.imposter.sendUrgentData(i10);
        } else {
            super.sendUrgentData(i10);
        }
    }

    @Override
    public void setOOBInline(boolean z10) throws SocketException {
        if (this.imposter != null) {
            this.imposter.setOOBInline(z10);
        } else {
            super.setOOBInline(z10);
        }
    }

    @Override
    public boolean getOOBInline() throws SocketException {
        return this.imposter != null ? this.imposter.getOOBInline() : super.getOOBInline();
    }

    @Override
    public synchronized void setSoTimeout(int i10) throws SocketException {
        if (this.imposter != null) {
            this.imposter.setSoTimeout(i10);
        } else {
            super.setSoTimeout(i10);
        }
    }

    @Override
    public synchronized int getSoTimeout() throws SocketException {
        return this.imposter != null ? this.imposter.getSoTimeout() : super.getSoTimeout();
    }

    @Override
    public synchronized void setSendBufferSize(int i10) throws SocketException {
        if (this.imposter != null) {
            this.imposter.setSendBufferSize(i10);
        } else {
            super.setSendBufferSize(i10);
        }
    }

    @Override
    public synchronized int getSendBufferSize() throws SocketException {
        return this.imposter != null ? this.imposter.getSendBufferSize() : super.getSendBufferSize();
    }

    @Override
    public synchronized void setReceiveBufferSize(int i10) throws SocketException {
        if (this.imposter != null) {
            this.imposter.setReceiveBufferSize(i10);
        } else {
            super.setReceiveBufferSize(i10);
        }
    }

    @Override
    public synchronized int getReceiveBufferSize() throws SocketException {
        return this.imposter != null ? this.imposter.getReceiveBufferSize() : super.getReceiveBufferSize();
    }

    @Override
    public void setKeepAlive(boolean z10) throws SocketException {
        if (this.imposter != null) {
            this.imposter.setKeepAlive(z10);
        } else {
            super.setKeepAlive(z10);
        }
    }

    @Override
    public boolean getKeepAlive() throws SocketException {
        return this.imposter != null ? this.imposter.getKeepAlive() : super.getKeepAlive();
    }

    @Override
    public void setTrafficClass(int i10) throws SocketException {
        if (this.imposter != null) {
            this.imposter.setTrafficClass(i10);
        } else {
            super.setTrafficClass(i10);
        }
    }

    @Override
    public int getTrafficClass() throws SocketException {
        return this.imposter != null ? this.imposter.getTrafficClass() : super.getTrafficClass();
    }

    @Override
    public void setReuseAddress(boolean z10) throws SocketException {
        if (this.imposter != null) {
            this.imposter.setReuseAddress(z10);
        } else {
            super.setReuseAddress(z10);
        }
    }

    @Override
    public boolean getReuseAddress() throws SocketException {
        return this.imposter != null ? this.imposter.getReuseAddress() : super.getReuseAddress();
    }

    @Override
    public synchronized void close() throws IOException {
        if (this.imposter != null) {
            this.imposter.close();
        } else {
            super.close();
        }
    }

    @Override
    public void shutdownInput() throws IOException {
        if (this.imposter != null) {
            this.imposter.shutdownInput();
        } else {
            super.shutdownInput();
        }
    }

    @Override
    public void shutdownOutput() throws IOException {
        if (this.imposter != null) {
            this.imposter.shutdownOutput();
        } else {
            super.shutdownOutput();
        }
    }

    @Override
    public String toString() {
        return this.imposter != null ? this.imposter.toString() : super.toString();
    }

    @Override
    public boolean isConnected() {
        return this.imposter != null ? this.imposter.isConnected() : super.isConnected();
    }

    @Override
    public boolean isBound() {
        return this.imposter != null ? this.imposter.isBound() : super.isBound();
    }

    @Override
    public boolean isClosed() {
        return this.imposter != null ? this.imposter.isClosed() : super.isClosed();
    }

    @Override
    public boolean isInputShutdown() {
        return this.imposter != null ? this.imposter.isInputShutdown() : super.isInputShutdown();
    }

    @Override
    public boolean isOutputShutdown() {
        return this.imposter != null ? this.imposter.isOutputShutdown() : super.isOutputShutdown();
    }

    @Override
    public void setPerformancePreferences(int i10, int i11, int i12) {
        if (this.imposter != null) {
            this.imposter.setPerformancePreferences(i10, i11, i12);
        } else {
            super.setPerformancePreferences(i10, i11, i12);
        }
    }

    public int hashCode() {
        return this.imposter != null ? this.imposter.hashCode() : super.hashCode();
    }

    public boolean equals(Object obj) {
        return this.imposter != null ? this.imposter.equals(obj) : super.equals(obj);
    }

    private static void validateThread() {
    }
}
