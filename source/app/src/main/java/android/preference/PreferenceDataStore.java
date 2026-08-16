package android.preference;

import java.util.Set;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/preference/PreferenceDataStore.class
 */
public interface PreferenceDataStore {
    default void putString(String key, String value) {
        throw new RuntimeException("Stub!");
    }

    default void putStringSet(String key, Set<String> values) {
        throw new RuntimeException("Stub!");
    }

    default void putInt(String key, int value) {
        throw new RuntimeException("Stub!");
    }

    default void putLong(String key, long value) {
        throw new RuntimeException("Stub!");
    }

    default void putFloat(String key, float value) {
        throw new RuntimeException("Stub!");
    }

    default void putBoolean(String key, boolean value) {
        throw new RuntimeException("Stub!");
    }

    default String getString(String key, String defValue) {
        throw new RuntimeException("Stub!");
    }

    default Set<String> getStringSet(String key, Set<String> defValues) {
        throw new RuntimeException("Stub!");
    }

    default int getInt(String key, int defValue) {
        throw new RuntimeException("Stub!");
    }

    default long getLong(String key, long defValue) {
        throw new RuntimeException("Stub!");
    }

    default float getFloat(String key, float defValue) {
        throw new RuntimeException("Stub!");
    }

    default boolean getBoolean(String key, boolean defValue) {
        throw new RuntimeException("Stub!");
    }
}
