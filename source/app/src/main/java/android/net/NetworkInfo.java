package android.net;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/NetworkInfo.class
 */
public class NetworkInfo implements Parcelable {
    public static final Parcelable.Creator<NetworkInfo> CREATOR = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/NetworkInfo$DetailedState.class
 */
    public enum DetailedState {
        AUTHENTICATING,
        BLOCKED,
        CAPTIVE_PORTAL_CHECK,
        CONNECTED,
        CONNECTING,
        DISCONNECTED,
        DISCONNECTING,
        FAILED,
        IDLE,
        OBTAINING_IPADDR,
        SCANNING,
        SUSPENDED,
        VERIFYING_POOR_LINK
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/NetworkInfo$State.class
 */
    public enum State {
        CONNECTED,
        CONNECTING,
        DISCONNECTED,
        DISCONNECTING,
        SUSPENDED,
        UNKNOWN
    }

    NetworkInfo() {
        throw new RuntimeException("Stub!");
    }

    public int getType() {
        throw new RuntimeException("Stub!");
    }

    public int getSubtype() {
        throw new RuntimeException("Stub!");
    }

    public String getTypeName() {
        throw new RuntimeException("Stub!");
    }

    public String getSubtypeName() {
        throw new RuntimeException("Stub!");
    }

    public boolean isConnectedOrConnecting() {
        throw new RuntimeException("Stub!");
    }

    public boolean isConnected() {
        throw new RuntimeException("Stub!");
    }

    public boolean isAvailable() {
        throw new RuntimeException("Stub!");
    }

    public boolean isFailover() {
        throw new RuntimeException("Stub!");
    }

    public boolean isRoaming() {
        throw new RuntimeException("Stub!");
    }

    public State getState() {
        throw new RuntimeException("Stub!");
    }

    public DetailedState getDetailedState() {
        throw new RuntimeException("Stub!");
    }

    public String getReason() {
        throw new RuntimeException("Stub!");
    }

    public String getExtraInfo() {
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
