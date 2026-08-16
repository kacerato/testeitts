package javax.net.ssl;

import java.util.EventListener;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/ssl/HandshakeCompletedListener.class
 */
public interface HandshakeCompletedListener extends EventListener {
    void handshakeCompleted(HandshakeCompletedEvent handshakeCompletedEvent);
}
