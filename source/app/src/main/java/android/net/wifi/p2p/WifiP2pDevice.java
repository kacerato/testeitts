package android.net.wifi.p2p;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/wifi/p2p/WifiP2pDevice.class
 */
public class WifiP2pDevice implements Parcelable {
    public static final int AVAILABLE = 3;
    public static final int CONNECTED = 0;
    public static final Parcelable.Creator<WifiP2pDevice> CREATOR = null;
    public static final int FAILED = 2;
    public static final int INVITED = 1;
    public static final int UNAVAILABLE = 4;
    public String deviceAddress;
    public String deviceName;
    public String primaryDeviceType;
    public String secondaryDeviceType;
    public int status;

    public WifiP2pDevice() {
        throw new RuntimeException("Stub!");
    }

    public WifiP2pDevice(WifiP2pDevice source) {
        throw new RuntimeException("Stub!");
    }

    public boolean wpsPbcSupported() {
        throw new RuntimeException("Stub!");
    }

    public boolean wpsKeypadSupported() {
        throw new RuntimeException("Stub!");
    }

    public boolean wpsDisplaySupported() {
        throw new RuntimeException("Stub!");
    }

    public boolean isServiceDiscoveryCapable() {
        throw new RuntimeException("Stub!");
    }

    public boolean isGroupOwner() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
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
