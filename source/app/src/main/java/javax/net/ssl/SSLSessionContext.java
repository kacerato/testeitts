package javax.net.ssl;

import java.util.Enumeration;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/ssl/SSLSessionContext.class
 */
public interface SSLSessionContext {
    SSLSession getSession(byte[] bArr);

    Enumeration<byte[]> getIds();

    void setSessionTimeout(int i10) throws IllegalArgumentException;

    int getSessionTimeout();

    void setSessionCacheSize(int i10) throws IllegalArgumentException;

    int getSessionCacheSize();
}
