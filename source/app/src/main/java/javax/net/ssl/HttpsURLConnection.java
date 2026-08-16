package javax.net.ssl;

import java.net.HttpURLConnection;
import java.net.URL;
import java.security.Principal;
import java.security.cert.Certificate;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/ssl/HttpsURLConnection.class
 */
public abstract class HttpsURLConnection extends HttpURLConnection {
    protected HostnameVerifier hostnameVerifier;

    public abstract String getCipherSuite();

    public abstract Certificate[] getLocalCertificates();

    public abstract Certificate[] getServerCertificates() throws SSLPeerUnverifiedException;

    protected HttpsURLConnection(URL url) {
        super((URL) null);
        throw new RuntimeException("Stub!");
    }

    public Principal getPeerPrincipal() throws SSLPeerUnverifiedException {
        throw new RuntimeException("Stub!");
    }

    public Principal getLocalPrincipal() {
        throw new RuntimeException("Stub!");
    }

    public static void setDefaultHostnameVerifier(HostnameVerifier v10) {
        throw new RuntimeException("Stub!");
    }

    public static HostnameVerifier getDefaultHostnameVerifier() {
        throw new RuntimeException("Stub!");
    }

    public void setHostnameVerifier(HostnameVerifier v10) {
        throw new RuntimeException("Stub!");
    }

    public HostnameVerifier getHostnameVerifier() {
        throw new RuntimeException("Stub!");
    }

    public static void setDefaultSSLSocketFactory(SSLSocketFactory sf2) {
        throw new RuntimeException("Stub!");
    }

    public static SSLSocketFactory getDefaultSSLSocketFactory() {
        throw new RuntimeException("Stub!");
    }

    public void setSSLSocketFactory(SSLSocketFactory sf2) {
        throw new RuntimeException("Stub!");
    }

    public SSLSocketFactory getSSLSocketFactory() {
        throw new RuntimeException("Stub!");
    }
}
