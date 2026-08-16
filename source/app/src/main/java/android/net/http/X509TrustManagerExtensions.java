package android.net.http;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.X509TrustManager;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/http/X509TrustManagerExtensions.class
 */
public class X509TrustManagerExtensions {
    public X509TrustManagerExtensions(X509TrustManager tm2) throws IllegalArgumentException {
        throw new RuntimeException("Stub!");
    }

    public List<X509Certificate> checkServerTrusted(X509Certificate[] chain, String authType, String host) throws CertificateException {
        throw new RuntimeException("Stub!");
    }

    public boolean isUserAddedCertificate(X509Certificate cert) {
        throw new RuntimeException("Stub!");
    }
}
