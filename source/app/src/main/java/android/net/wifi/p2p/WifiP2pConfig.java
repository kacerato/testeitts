package android.net.wifi.p2p;

import android.net.wifi.WpsInfo;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/wifi/p2p/WifiP2pConfig.class
 */
public class WifiP2pConfig implements Parcelable {
    public static final Parcelable.Creator<WifiP2pConfig> CREATOR = null;
    public String deviceAddress;
    public int groupOwnerIntent;
    public WpsInfo wps;

    public WifiP2pConfig() {
        throw new RuntimeException("Stub!");
    }

    public WifiP2pConfig(WifiP2pConfig source) {
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
