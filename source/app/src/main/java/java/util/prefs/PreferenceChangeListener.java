package java.util.prefs;

import java.util.EventListener;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/prefs/PreferenceChangeListener.class
 */
@FunctionalInterface
public interface PreferenceChangeListener extends EventListener {
    void preferenceChange(PreferenceChangeEvent preferenceChangeEvent);
}
