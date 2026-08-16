package android.net.wifi;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/wifi/WpsInfo.class
 */
public class WpsInfo implements Parcelable {
    public String BSSID;
    public static final Parcelable.Creator<WpsInfo> CREATOR = null;
    public static final int DISPLAY = 1;
    public static final int INVALID = 4;
    public static final int KEYPAD = 2;
    public static final int LABEL = 3;
    public static final int PBC = 0;
    public String pin;
    public int setup;

    public WpsInfo() {
        throw new RuntimeException("Stub!");
    }

    public WpsInfo(WpsInfo source) {
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
