package android.bluetooth.le;

import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/bluetooth/le/ScanFilter.class
 */
public final class ScanFilter implements Parcelable {
    public static final Parcelable.Creator<ScanFilter> CREATOR = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/bluetooth/le/ScanFilter$Builder.class
 */
    public static final class Builder {
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder setDeviceName(String deviceName) {
            throw new RuntimeException("Stub!");
        }

        public Builder setDeviceAddress(String deviceAddress) {
            throw new RuntimeException("Stub!");
        }

        public Builder setServiceUuid(ParcelUuid serviceUuid) {
            throw new RuntimeException("Stub!");
        }

        public Builder setServiceUuid(ParcelUuid serviceUuid, ParcelUuid uuidMask) {
            throw new RuntimeException("Stub!");
        }

        public Builder setServiceData(ParcelUuid serviceDataUuid, byte[] serviceData) {
            throw new RuntimeException("Stub!");
        }

        public Builder setServiceData(ParcelUuid serviceDataUuid, byte[] serviceData, byte[] serviceDataMask) {
            throw new RuntimeException("Stub!");
        }

        public Builder setManufacturerData(int manufacturerId, byte[] manufacturerData) {
            throw new RuntimeException("Stub!");
        }

        public Builder setManufacturerData(int manufacturerId, byte[] manufacturerData, byte[] manufacturerDataMask) {
            throw new RuntimeException("Stub!");
        }

        public ScanFilter build() {
            throw new RuntimeException("Stub!");
        }
    }

    ScanFilter() {
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

    public String getDeviceName() {
        throw new RuntimeException("Stub!");
    }

    public ParcelUuid getServiceUuid() {
        throw new RuntimeException("Stub!");
    }

    public ParcelUuid getServiceUuidMask() {
        throw new RuntimeException("Stub!");
    }

    public String getDeviceAddress() {
        throw new RuntimeException("Stub!");
    }

    public byte[] getServiceData() {
        throw new RuntimeException("Stub!");
    }

    public byte[] getServiceDataMask() {
        throw new RuntimeException("Stub!");
    }

    public ParcelUuid getServiceDataUuid() {
        throw new RuntimeException("Stub!");
    }

    public int getManufacturerId() {
        throw new RuntimeException("Stub!");
    }

    public byte[] getManufacturerData() {
        throw new RuntimeException("Stub!");
    }

    public byte[] getManufacturerDataMask() {
        throw new RuntimeException("Stub!");
    }

    public boolean matches(ScanResult scanResult) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }
}
