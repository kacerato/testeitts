package org.apache.http.conn.ssl;

import javax.net.ssl.SSLException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:org/apache/http/conn/ssl/StrictHostnameVerifier.class
 */
@Deprecated
public class StrictHostnameVerifier extends AbstractVerifier {
    public StrictHostnameVerifier() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void verify(String host, String[] cns, String[] subjectAlts) throws SSLException {
        throw new RuntimeException("Stub!");
    }

    public final String toString() {
        throw new RuntimeException("Stub!");
    }
}
