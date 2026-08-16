package java.beans;

import java.util.EventListenerProxy;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/beans/PropertyChangeListenerProxy.class
 */
public class PropertyChangeListenerProxy extends EventListenerProxy<PropertyChangeListener> implements PropertyChangeListener {
    public PropertyChangeListenerProxy(String propertyName, PropertyChangeListener listener) {
        super(null);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void propertyChange(PropertyChangeEvent event) {
        throw new RuntimeException("Stub!");
    }

    public String getPropertyName() {
        throw new RuntimeException("Stub!");
    }
}
