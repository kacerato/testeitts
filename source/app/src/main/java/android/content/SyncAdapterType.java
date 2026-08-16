package android.content;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/SyncAdapterType.class
 */
public class SyncAdapterType implements Parcelable {
    public static final Parcelable.Creator<SyncAdapterType> CREATOR = null;
    public final String accountType;
    public final String authority;
    public final boolean isKey;

    public SyncAdapterType(String authority, String accountType, boolean userVisible, boolean supportsUploading) {
        throw new RuntimeException("Stub!");
    }

    public SyncAdapterType(Parcel source) {
        throw new RuntimeException("Stub!");
    }

    public boolean supportsUploading() {
        throw new RuntimeException("Stub!");
    }

    public boolean isUserVisible() {
        throw new RuntimeException("Stub!");
    }

    public boolean allowParallelSyncs() {
        throw new RuntimeException("Stub!");
    }

    public boolean isAlwaysSyncable() {
        throw new RuntimeException("Stub!");
    }

    public String getSettingsActivity() {
        throw new RuntimeException("Stub!");
    }

    public static SyncAdapterType newKey(String authority, String accountType) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }
}
