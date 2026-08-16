package android.preference;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/preference/PreferenceManager.class
 */
public class PreferenceManager {
    public static final String KEY_HAS_SET_DEFAULT_VALUES = "_has_set_default_values";
    public static final String METADATA_KEY_PREFERENCES = "android.preference";

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/preference/PreferenceManager$OnActivityDestroyListener.class
 */
    public interface OnActivityDestroyListener {
        void onActivityDestroy();
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/preference/PreferenceManager$OnActivityResultListener.class
 */
    public interface OnActivityResultListener {
        boolean onActivityResult(int i10, int i11, Intent intent);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/preference/PreferenceManager$OnActivityStopListener.class
 */
    public interface OnActivityStopListener {
        void onActivityStop();
    }

    PreferenceManager() {
        throw new RuntimeException("Stub!");
    }

    public void setPreferenceDataStore(PreferenceDataStore dataStore) {
        throw new RuntimeException("Stub!");
    }

    public PreferenceDataStore getPreferenceDataStore() {
        throw new RuntimeException("Stub!");
    }

    public PreferenceScreen createPreferenceScreen(Context context) {
        throw new RuntimeException("Stub!");
    }

    public String getSharedPreferencesName() {
        throw new RuntimeException("Stub!");
    }

    public void setSharedPreferencesName(String sharedPreferencesName) {
        throw new RuntimeException("Stub!");
    }

    public int getSharedPreferencesMode() {
        throw new RuntimeException("Stub!");
    }

    public void setSharedPreferencesMode(int sharedPreferencesMode) {
        throw new RuntimeException("Stub!");
    }

    public void setStorageDefault() {
        throw new RuntimeException("Stub!");
    }

    public void setStorageDeviceProtected() {
        throw new RuntimeException("Stub!");
    }

    public boolean isStorageDefault() {
        throw new RuntimeException("Stub!");
    }

    public boolean isStorageDeviceProtected() {
        throw new RuntimeException("Stub!");
    }

    public SharedPreferences getSharedPreferences() {
        throw new RuntimeException("Stub!");
    }

    public static SharedPreferences getDefaultSharedPreferences(Context context) {
        throw new RuntimeException("Stub!");
    }

    public static String getDefaultSharedPreferencesName(Context context) {
        throw new RuntimeException("Stub!");
    }

    public Preference findPreference(CharSequence key) {
        throw new RuntimeException("Stub!");
    }

    public static void setDefaultValues(Context context, int resId, boolean readAgain) {
        throw new RuntimeException("Stub!");
    }

    public static void setDefaultValues(Context context, String sharedPreferencesName, int sharedPreferencesMode, int resId, boolean readAgain) {
        throw new RuntimeException("Stub!");
    }
}
