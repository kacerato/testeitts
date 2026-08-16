package android.app;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/AuthenticationRequiredException.class
 */
public final class AuthenticationRequiredException extends SecurityException implements Parcelable {
    public static final Parcelable.Creator<AuthenticationRequiredException> CREATOR = null;

    public AuthenticationRequiredException(Throwable cause, PendingIntent userAction) {
        throw new RuntimeException("Stub!");
    }

    public PendingIntent getUserAction() {
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
