package androidx.preference;

import java.util.Set;

public abstract class PreferenceDataStore {
    public boolean getBoolean(String str, boolean z10) {
        return z10;
    }

    public float getFloat(String str, float f10) {
        return f10;
    }

    public int getInt(String str, int i10) {
        return i10;
    }

    public long getLong(String str, long j10) {
        return j10;
    }

    public String getString(String str, String str2) {
        return str2;
    }

    public Set<String> getStringSet(String str, Set<String> set) {
        return set;
    }

    public void putBoolean(String str, boolean z10) {
        throw new UnsupportedOperationException("Not implemented on this data store");
    }

    public void putFloat(String str, float f10) {
        throw new UnsupportedOperationException("Not implemented on this data store");
    }

    public void putInt(String str, int i10) {
        throw new UnsupportedOperationException("Not implemented on this data store");
    }

    public void putLong(String str, long j10) {
        throw new UnsupportedOperationException("Not implemented on this data store");
    }

    public void putString(String str, String str2) {
        throw new UnsupportedOperationException("Not implemented on this data store");
    }

    public void putStringSet(String str, Set<String> set) {
        throw new UnsupportedOperationException("Not implemented on this data store");
    }
}
