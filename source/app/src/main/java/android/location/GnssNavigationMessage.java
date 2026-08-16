package android.location;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/location/GnssNavigationMessage.class
 */
public final class GnssNavigationMessage implements Parcelable {
    public static final Parcelable.Creator<GnssNavigationMessage> CREATOR = null;
    public static final int STATUS_PARITY_PASSED = 1;
    public static final int STATUS_PARITY_REBUILT = 2;
    public static final int STATUS_UNKNOWN = 0;
    public static final int TYPE_BDS_D1 = 1281;
    public static final int TYPE_BDS_D2 = 1282;
    public static final int TYPE_GAL_F = 1538;
    public static final int TYPE_GAL_I = 1537;
    public static final int TYPE_GLO_L1CA = 769;
    public static final int TYPE_GPS_CNAV2 = 260;
    public static final int TYPE_GPS_L1CA = 257;
    public static final int TYPE_GPS_L2CNAV = 258;
    public static final int TYPE_GPS_L5CNAV = 259;
    public static final int TYPE_UNKNOWN = 0;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/location/GnssNavigationMessage$Callback.class
 */
    public static abstract class Callback {
        public static final int STATUS_LOCATION_DISABLED = 2;
        public static final int STATUS_NOT_SUPPORTED = 0;
        public static final int STATUS_READY = 1;

        public Callback() {
            throw new RuntimeException("Stub!");
        }

        public void onGnssNavigationMessageReceived(GnssNavigationMessage event) {
            throw new RuntimeException("Stub!");
        }

        public void onStatusChanged(int status) {
            throw new RuntimeException("Stub!");
        }
    }

    GnssNavigationMessage() {
        throw new RuntimeException("Stub!");
    }

    public int getType() {
        throw new RuntimeException("Stub!");
    }

    public int getSvid() {
        throw new RuntimeException("Stub!");
    }

    public int getMessageId() {
        throw new RuntimeException("Stub!");
    }

    public int getSubmessageId() {
        throw new RuntimeException("Stub!");
    }

    public byte[] getData() {
        throw new RuntimeException("Stub!");
    }

    public int getStatus() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
