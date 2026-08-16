package android.accounts;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/accounts/AuthenticatorDescription.class
 */
public class AuthenticatorDescription implements Parcelable {
    public static final Parcelable.Creator<AuthenticatorDescription> CREATOR = null;
    public final int accountPreferencesId;
    public final boolean customTokens;
    public final int iconId;
    public final int labelId;
    public final String packageName;
    public final int smallIconId;
    public final String type;

    public AuthenticatorDescription(String type, String packageName, int labelId, int iconId, int smallIconId, int prefId, boolean customTokens) {
        throw new RuntimeException("Stub!");
    }

    public AuthenticatorDescription(String type, String packageName, int labelId, int iconId, int smallIconId, int prefId) {
        throw new RuntimeException("Stub!");
    }

    public static AuthenticatorDescription newKey(String type) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }
}
