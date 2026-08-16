package android.net.wifi;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/wifi/SupplicantState.class
 */
public enum SupplicantState implements Parcelable {
    ASSOCIATED,
    ASSOCIATING,
    AUTHENTICATING,
    COMPLETED,
    DISCONNECTED,
    DORMANT,
    FOUR_WAY_HANDSHAKE,
    GROUP_HANDSHAKE,
    INACTIVE,
    INTERFACE_DISABLED,
    INVALID,
    SCANNING,
    UNINITIALIZED;

    public static boolean isValidState(SupplicantState state) {
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
