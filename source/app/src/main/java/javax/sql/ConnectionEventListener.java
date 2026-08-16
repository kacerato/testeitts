package javax.sql;

import java.util.EventListener;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/sql/ConnectionEventListener.class
 */
public interface ConnectionEventListener extends EventListener {
    void connectionClosed(ConnectionEvent connectionEvent);

    void connectionErrorOccurred(ConnectionEvent connectionEvent);
}
