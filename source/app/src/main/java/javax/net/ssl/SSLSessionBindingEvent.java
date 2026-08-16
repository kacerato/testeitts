package javax.net.ssl;

import java.util.EventObject;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/ssl/SSLSessionBindingEvent.class
 */
public class SSLSessionBindingEvent extends EventObject {
    public SSLSessionBindingEvent(SSLSession session, String name) {
        super(null);
        throw new RuntimeException("Stub!");
    }

    public String getName() {
        throw new RuntimeException("Stub!");
    }

    public SSLSession getSession() {
        throw new RuntimeException("Stub!");
    }
}
