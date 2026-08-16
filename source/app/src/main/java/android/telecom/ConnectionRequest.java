package android.telecom;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telecom/ConnectionRequest.class
 */
public final class ConnectionRequest implements Parcelable {
    public static final Parcelable.Creator<ConnectionRequest> CREATOR = null;

    public ConnectionRequest(PhoneAccountHandle accountHandle, Uri handle, Bundle extras) {
        throw new RuntimeException("Stub!");
    }

    public ConnectionRequest(PhoneAccountHandle accountHandle, Uri handle, Bundle extras, int videoState) {
        throw new RuntimeException("Stub!");
    }

    public PhoneAccountHandle getAccountHandle() {
        throw new RuntimeException("Stub!");
    }

    public Uri getAddress() {
        throw new RuntimeException("Stub!");
    }

    public Bundle getExtras() {
        throw new RuntimeException("Stub!");
    }

    public int getVideoState() {
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
    public void writeToParcel(Parcel destination, int flags) {
        throw new RuntimeException("Stub!");
    }
}
