package javax.net.ssl;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/ssl/X509TrustManager.class
 */
public interface X509TrustManager extends TrustManager {
    void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException;

    void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException;

    X509Certificate[] getAcceptedIssuers();
}
