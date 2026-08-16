package android.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/inputmethod/InputContentInfo.class
 */
public final class InputContentInfo implements Parcelable {
    public static final Parcelable.Creator<InputContentInfo> CREATOR = null;

    public InputContentInfo(Uri contentUri, ClipDescription description) {
        throw new RuntimeException("Stub!");
    }

    public InputContentInfo(Uri contentUri, ClipDescription description, Uri linkUri) {
        throw new RuntimeException("Stub!");
    }

    public Uri getContentUri() {
        throw new RuntimeException("Stub!");
    }

    public ClipDescription getDescription() {
        throw new RuntimeException("Stub!");
    }

    public Uri getLinkUri() {
        throw new RuntimeException("Stub!");
    }

    public void requestPermission() {
        throw new RuntimeException("Stub!");
    }

    public void releasePermission() {
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
}
