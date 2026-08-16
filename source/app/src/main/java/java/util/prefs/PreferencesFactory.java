package java.util.prefs;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/prefs/PreferencesFactory.class
 */
public interface PreferencesFactory {
    Preferences systemRoot();

    Preferences userRoot();
}
