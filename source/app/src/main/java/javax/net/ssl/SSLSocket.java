package javax.net.ssl;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/ssl/SSLSocket.class
 */
public abstract class SSLSocket extends Socket {
    public abstract String[] getSupportedCipherSuites();

    public abstract String[] getEnabledCipherSuites();

    public abstract void setEnabledCipherSuites(String[] strArr);

    public abstract String[] getSupportedProtocols();

    public abstract String[] getEnabledProtocols();

    public abstract void setEnabledProtocols(String[] strArr);

    public abstract SSLSession getSession();

    public abstract void addHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener);

    public abstract void removeHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener);

    public abstract void startHandshake() throws IOException;

    public abstract void setUseClientMode(boolean z10);

    public abstract boolean getUseClientMode();

    public abstract void setNeedClientAuth(boolean z10);

    public abstract boolean getNeedClientAuth();

    public abstract void setWantClientAuth(boolean z10);

    public abstract boolean getWantClientAuth();

    public abstract void setEnableSessionCreation(boolean z10);

    public abstract boolean getEnableSessionCreation();

    protected SSLSocket() {
        throw new RuntimeException("Stub!");
    }

    protected SSLSocket(String host, int port) throws IOException, UnknownHostException {
        throw new RuntimeException("Stub!");
    }

    protected SSLSocket(InetAddress address, int port) throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected SSLSocket(String host, int port, InetAddress clientAddress, int clientPort) throws IOException, UnknownHostException {
        throw new RuntimeException("Stub!");
    }

    protected SSLSocket(InetAddress address, int port, InetAddress clientAddress, int clientPort) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public SSLSession getHandshakeSession() {
        throw new RuntimeException("Stub!");
    }

    public SSLParameters getSSLParameters() {
        throw new RuntimeException("Stub!");
    }

    public void setSSLParameters(SSLParameters params) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
