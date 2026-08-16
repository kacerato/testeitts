package android.companion;

import android.bluetooth.le.ScanFilter;
import android.bluetooth.le.ScanResult;
import android.os.Parcel;
import android.os.Parcelable;
import java.nio.ByteOrder;
import java.util.regex.Pattern;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/companion/BluetoothLeDeviceFilter.class
 */
public final class BluetoothLeDeviceFilter implements DeviceFilter<ScanResult> {
    public static final Parcelable.Creator<BluetoothLeDeviceFilter> CREATOR = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/companion/BluetoothLeDeviceFilter$Builder.class
 */
    public static final class Builder {
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder setNamePattern(Pattern regex) {
            throw new RuntimeException("Stub!");
        }

        public Builder setScanFilter(ScanFilter scanFilter) {
            throw new RuntimeException("Stub!");
        }

        public Builder setRawDataFilter(byte[] rawDataFilter, byte[] rawDataFilterMask) {
            throw new RuntimeException("Stub!");
        }

        public Builder setRenameFromBytes(String prefix, String suffix, int bytesFrom, int bytesLength, ByteOrder byteOrder) {
            throw new RuntimeException("Stub!");
        }

        public Builder setRenameFromName(String prefix, String suffix, int nameFrom, int nameLength) {
            throw new RuntimeException("Stub!");
        }

        public BluetoothLeDeviceFilter build() {
            throw new RuntimeException("Stub!");
        }
    }

    BluetoothLeDeviceFilter() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public static int getRenamePrefixLengthLimit() {
        throw new RuntimeException("Stub!");
    }
}
