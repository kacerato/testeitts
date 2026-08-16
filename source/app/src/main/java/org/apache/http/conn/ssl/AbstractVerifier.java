package org.apache.http.conn.ssl;

import java.io.IOException;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/apache/http/conn/ssl/AbstractVerifier.class
 */
@Deprecated
public abstract class AbstractVerifier implements X509HostnameVerifier {
    public AbstractVerifier() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void verify(String host, SSLSocket ssl) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean verify(String host, SSLSession session) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void verify(String host, X509Certificate cert) throws SSLException {
        throw new RuntimeException("Stub!");
    }

    public final void verify(String host, String[] cns, String[] subjectAlts, boolean strictWithSubDomains) throws SSLException {
        throw new RuntimeException("Stub!");
    }

    public static boolean acceptableCountryWildcard(String cn2) {
        throw new RuntimeException("Stub!");
    }

    public static String[] getCNs(X509Certificate cert) {
        throw new RuntimeException("Stub!");
    }

    public static String[] getDNSSubjectAlts(X509Certificate cert) {
        throw new RuntimeException("Stub!");
    }

    public static int countDots(String s10) {
        throw new RuntimeException("Stub!");
    }
}
