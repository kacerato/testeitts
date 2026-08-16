package javax.net.ssl;

import java.security.Principal;
import java.security.cert.Certificate;
import java.util.EventObject;
import javax.security.cert.X509Certificate;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/ssl/HandshakeCompletedEvent.class
 */
public class HandshakeCompletedEvent extends EventObject {
    public HandshakeCompletedEvent(SSLSocket sock, SSLSession s10) {
        super(null);
        throw new RuntimeException("Stub!");
    }

    public SSLSession getSession() {
        throw new RuntimeException("Stub!");
    }

    public String getCipherSuite() {
        throw new RuntimeException("Stub!");
    }

    public Certificate[] getLocalCertificates() {
        throw new RuntimeException("Stub!");
    }

    public Certificate[] getPeerCertificates() throws SSLPeerUnverifiedException {
        throw new RuntimeException("Stub!");
    }

    public X509Certificate[] getPeerCertificateChain() throws SSLPeerUnverifiedException {
        throw new RuntimeException("Stub!");
    }

    public Principal getPeerPrincipal() throws SSLPeerUnverifiedException {
        throw new RuntimeException("Stub!");
    }

    public Principal getLocalPrincipal() {
        throw new RuntimeException("Stub!");
    }

    public SSLSocket getSocket() {
        throw new RuntimeException("Stub!");
    }
}
