package android.accounts;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/accounts/AccountAuthenticatorResponse.class
 */
public class AccountAuthenticatorResponse implements Parcelable {
    public static final Parcelable.Creator<AccountAuthenticatorResponse> CREATOR = null;

    public AccountAuthenticatorResponse(Parcel parcel) {
        throw new RuntimeException("Stub!");
    }

    public void onResult(Bundle result) {
        throw new RuntimeException("Stub!");
    }

    public void onRequestContinued() {
        throw new RuntimeException("Stub!");
    }

    public void onError(int errorCode, String errorMessage) {
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
