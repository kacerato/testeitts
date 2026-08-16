package android.content;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/ContentProviderResult.class
 */
public class ContentProviderResult implements Parcelable {
    public static final Parcelable.Creator<ContentProviderResult> CREATOR = null;
    public final Integer count;
    public final Uri uri;

    public ContentProviderResult(Uri uri) {
        throw new RuntimeException("Stub!");
    }

    public ContentProviderResult(int count) {
        throw new RuntimeException("Stub!");
    }

    public ContentProviderResult(Parcel source) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
