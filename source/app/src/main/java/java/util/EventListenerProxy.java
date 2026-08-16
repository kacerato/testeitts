package java.util;

import java.util.EventListener;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/EventListenerProxy.class
 */
public abstract class EventListenerProxy<T extends EventListener> implements EventListener {
    public EventListenerProxy(T listener) {
        throw new RuntimeException("Stub!");
    }

    public T getListener() {
        throw new RuntimeException("Stub!");
    }
}
