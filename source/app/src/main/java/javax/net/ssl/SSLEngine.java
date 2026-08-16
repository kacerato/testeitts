package javax.net.ssl;

import java.nio.ByteBuffer;
import javax.net.ssl.SSLEngineResult;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/ssl/SSLEngine.class
 */
public abstract class SSLEngine {
    public abstract SSLEngineResult wrap(ByteBuffer[] byteBufferArr, int i10, int i11, ByteBuffer byteBuffer) throws SSLException;

    public abstract SSLEngineResult unwrap(ByteBuffer byteBuffer, ByteBuffer[] byteBufferArr, int i10, int i11) throws SSLException;

    public abstract Runnable getDelegatedTask();

    public abstract void closeInbound() throws SSLException;

    public abstract boolean isInboundDone();

    public abstract void closeOutbound();

    public abstract boolean isOutboundDone();

    public abstract String[] getSupportedCipherSuites();

    public abstract String[] getEnabledCipherSuites();

    public abstract void setEnabledCipherSuites(String[] strArr);

    public abstract String[] getSupportedProtocols();

    public abstract String[] getEnabledProtocols();

    public abstract void setEnabledProtocols(String[] strArr);

    public abstract SSLSession getSession();

    public abstract void beginHandshake() throws SSLException;

    public abstract SSLEngineResult.HandshakeStatus getHandshakeStatus();

    public abstract void setUseClientMode(boolean z10);

    public abstract boolean getUseClientMode();

    public abstract void setNeedClientAuth(boolean z10);

    public abstract boolean getNeedClientAuth();

    public abstract void setWantClientAuth(boolean z10);

    public abstract boolean getWantClientAuth();

    public abstract void setEnableSessionCreation(boolean z10);

    public abstract boolean getEnableSessionCreation();

    protected SSLEngine() {
        throw new RuntimeException("Stub!");
    }

    protected SSLEngine(String peerHost, int peerPort) {
        throw new RuntimeException("Stub!");
    }

    public String getPeerHost() {
        throw new RuntimeException("Stub!");
    }

    public int getPeerPort() {
        throw new RuntimeException("Stub!");
    }

    public SSLEngineResult wrap(ByteBuffer src, ByteBuffer dst) throws SSLException {
        throw new RuntimeException("Stub!");
    }

    public SSLEngineResult wrap(ByteBuffer[] srcs, ByteBuffer dst) throws SSLException {
        throw new RuntimeException("Stub!");
    }

    public SSLEngineResult unwrap(ByteBuffer src, ByteBuffer dst) throws SSLException {
        throw new RuntimeException("Stub!");
    }

    public SSLEngineResult unwrap(ByteBuffer src, ByteBuffer[] dsts) throws SSLException {
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
}
