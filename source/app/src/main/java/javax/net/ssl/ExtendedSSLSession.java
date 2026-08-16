package javax.net.ssl;

import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/ssl/ExtendedSSLSession.class
 */
public abstract class ExtendedSSLSession implements SSLSession {
    public abstract String[] getLocalSupportedSignatureAlgorithms();

    public abstract String[] getPeerSupportedSignatureAlgorithms();

    public ExtendedSSLSession() {
        throw new RuntimeException("Stub!");
    }

    public List<SNIServerName> getRequestedServerNames() {
        throw new RuntimeException("Stub!");
    }
}
