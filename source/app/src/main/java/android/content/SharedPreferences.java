package android.content;

import java.util.Map;
import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/SharedPreferences.class
 */
public interface SharedPreferences {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/SharedPreferences$Editor.class
 */
    public interface Editor {
        Editor putString(String str, String str2);

        Editor putStringSet(String str, Set<String> set);

        Editor putInt(String str, int i10);

        Editor putLong(String str, long j10);

        Editor putFloat(String str, float f10);

        Editor putBoolean(String str, boolean z10);

        Editor remove(String str);

        Editor clear();

        boolean commit();

        void apply();
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/SharedPreferences$OnSharedPreferenceChangeListener.class
 */
    public interface OnSharedPreferenceChangeListener {
        void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str);
    }

    Map<String, ?> getAll();

    String getString(String str, String str2);

    Set<String> getStringSet(String str, Set<String> set);

    int getInt(String str, int i10);

    long getLong(String str, long j10);

    float getFloat(String str, float f10);

    boolean getBoolean(String str, boolean z10);

    boolean contains(String str);

    Editor edit();

    void registerOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener onSharedPreferenceChangeListener);

    void unregisterOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener onSharedPreferenceChangeListener);
}
