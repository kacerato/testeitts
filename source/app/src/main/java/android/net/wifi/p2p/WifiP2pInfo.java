package android.net.wifi.p2p;

import android.os.Parcel;
import android.os.Parcelable;
import java.net.InetAddress;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/wifi/p2p/WifiP2pInfo.class
 */
public class WifiP2pInfo implements Parcelable {
    public static final Parcelable.Creator<WifiP2pInfo> CREATOR = null;
    public boolean groupFormed;
    public InetAddress groupOwnerAddress;
    public boolean isGroupOwner;

    public WifiP2pInfo() {
        throw new RuntimeException("Stub!");
    }

    public WifiP2pInfo(WifiP2pInfo source) {
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
