package android.companion;

import android.bluetooth.BluetoothDevice;
import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.Parcelable;
import java.util.regex.Pattern;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/companion/BluetoothDeviceFilter.class
 */
public final class BluetoothDeviceFilter implements DeviceFilter<BluetoothDevice> {
    public static final Parcelable.Creator<BluetoothDeviceFilter> CREATOR = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/companion/BluetoothDeviceFilter$Builder.class
 */
    public static final class Builder {
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder setNamePattern(Pattern regex) {
            throw new RuntimeException("Stub!");
        }

        public Builder setAddress(String address) {
            throw new RuntimeException("Stub!");
        }

        public Builder addServiceUuid(ParcelUuid serviceUuid, ParcelUuid serviceUuidMask) {
            throw new RuntimeException("Stub!");
        }

        public BluetoothDeviceFilter build() {
            throw new RuntimeException("Stub!");
        }
    }

    BluetoothDeviceFilter() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }
}
