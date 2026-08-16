package java.util.prefs;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/prefs/Preferences.class
 */
public abstract class Preferences {
    public static final int MAX_KEY_LENGTH = 80;
    public static final int MAX_NAME_LENGTH = 80;
    public static final int MAX_VALUE_LENGTH = 8192;

    public abstract void put(String str, String str2);

    public abstract String get(String str, String str2);

    public abstract void remove(String str);

    public abstract void clear() throws BackingStoreException;

    public abstract void putInt(String str, int i10);

    public abstract int getInt(String str, int i10);

    public abstract void putLong(String str, long j10);

    public abstract long getLong(String str, long j10);

    public abstract void putBoolean(String str, boolean z10);

    public abstract boolean getBoolean(String str, boolean z10);

    public abstract void putFloat(String str, float f10);

    public abstract float getFloat(String str, float f10);

    public abstract void putDouble(String str, double d10);

    public abstract double getDouble(String str, double d10);

    public abstract void putByteArray(String str, byte[] bArr);

    public abstract byte[] getByteArray(String str, byte[] bArr);

    public abstract String[] keys() throws BackingStoreException;

    public abstract String[] childrenNames() throws BackingStoreException;

    public abstract Preferences parent();

    public abstract Preferences node(String str);

    public abstract boolean nodeExists(String str) throws BackingStoreException;

    public abstract void removeNode() throws BackingStoreException;

    public abstract String name();

    public abstract String absolutePath();

    public abstract boolean isUserNode();

    public abstract String toString();

    public abstract void flush() throws BackingStoreException;

    public abstract void sync() throws BackingStoreException;

    public abstract void addPreferenceChangeListener(PreferenceChangeListener preferenceChangeListener);

    public abstract void removePreferenceChangeListener(PreferenceChangeListener preferenceChangeListener);

    public abstract void addNodeChangeListener(NodeChangeListener nodeChangeListener);

    public abstract void removeNodeChangeListener(NodeChangeListener nodeChangeListener);

    public abstract void exportNode(OutputStream outputStream) throws IOException, BackingStoreException;

    public abstract void exportSubtree(OutputStream outputStream) throws IOException, BackingStoreException;

    public Preferences() {
        throw new RuntimeException("Stub!");
    }

    public static Preferences userNodeForPackage(Class<?> c10) {
        throw new RuntimeException("Stub!");
    }

    public static Preferences systemNodeForPackage(Class<?> c10) {
        throw new RuntimeException("Stub!");
    }

    public static Preferences userRoot() {
        throw new RuntimeException("Stub!");
    }

    public static Preferences systemRoot() {
        throw new RuntimeException("Stub!");
    }

    public static void importPreferences(InputStream is) throws IOException, InvalidPreferencesFormatException {
        throw new RuntimeException("Stub!");
    }
}
