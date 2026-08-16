package javax.net.ssl;

import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/ssl/SSLServerSocket.class
 */
public abstract class SSLServerSocket extends ServerSocket {
    public abstract String[] getEnabledCipherSuites();

    public abstract void setEnabledCipherSuites(String[] strArr);

    public abstract String[] getSupportedCipherSuites();

    public abstract String[] getSupportedProtocols();

    public abstract String[] getEnabledProtocols();

    public abstract void setEnabledProtocols(String[] strArr);

    public abstract void setNeedClientAuth(boolean z10);

    public abstract boolean getNeedClientAuth();

    public abstract void setWantClientAuth(boolean z10);

    public abstract boolean getWantClientAuth();

    public abstract void setUseClientMode(boolean z10);

    public abstract boolean getUseClientMode();

    public abstract void setEnableSessionCreation(boolean z10);

    public abstract boolean getEnableSessionCreation();

    protected SSLServerSocket() throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected SSLServerSocket(int port) throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected SSLServerSocket(int port, int backlog) throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected SSLServerSocket(int port, int backlog, InetAddress address) throws IOException {
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
