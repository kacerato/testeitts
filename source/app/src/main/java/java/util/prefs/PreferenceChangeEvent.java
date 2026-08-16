package java.util.prefs;

import java.util.EventObject;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/prefs/PreferenceChangeEvent.class
 */
public class PreferenceChangeEvent extends EventObject {
    public PreferenceChangeEvent(Preferences node, String key, String newValue) {
        super(null);
        throw new RuntimeException("Stub!");
    }

    public Preferences getNode() {
        throw new RuntimeException("Stub!");
    }

    public String getKey() {
        throw new RuntimeException("Stub!");
    }

    public String getNewValue() {
        throw new RuntimeException("Stub!");
    }
}
