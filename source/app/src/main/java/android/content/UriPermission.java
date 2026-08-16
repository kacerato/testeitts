package android.content;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/UriPermission.class
 */
public final class UriPermission implements Parcelable {
    public static final Parcelable.Creator<UriPermission> CREATOR = null;
    public static final long INVALID_TIME = Long.MIN_VALUE;

    UriPermission() {
        throw new RuntimeException("Stub!");
    }

    public Uri getUri() {
        throw new RuntimeException("Stub!");
    }

    public boolean isReadPermission() {
        throw new RuntimeException("Stub!");
    }

    public boolean isWritePermission() {
        throw new RuntimeException("Stub!");
    }

    public long getPersistedTime() {
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
