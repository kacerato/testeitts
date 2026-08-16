package android.os.storage;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/storage/StorageVolume.class
 */
public final class StorageVolume implements Parcelable {
    public static final Parcelable.Creator<StorageVolume> CREATOR = null;
    public static final String EXTRA_STORAGE_VOLUME = "android.os.storage.extra.STORAGE_VOLUME";

    StorageVolume() {
        throw new RuntimeException("Stub!");
    }

    public String getDescription(Context context) {
        throw new RuntimeException("Stub!");
    }

    public boolean isPrimary() {
        throw new RuntimeException("Stub!");
    }

    public boolean isRemovable() {
        throw new RuntimeException("Stub!");
    }

    public boolean isEmulated() {
        throw new RuntimeException("Stub!");
    }

    public String getUuid() {
        throw new RuntimeException("Stub!");
    }

    public String getState() {
        throw new RuntimeException("Stub!");
    }

    public Intent createAccessIntent(String directoryName) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
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
    public void writeToParcel(Parcel parcel, int flags) {
        throw new RuntimeException("Stub!");
    }
}
