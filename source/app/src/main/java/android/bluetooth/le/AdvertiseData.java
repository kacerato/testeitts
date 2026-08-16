package android.bluetooth.le;

import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.Parcelable;
import android.util.SparseArray;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/bluetooth/le/AdvertiseData.class
 */
public final class AdvertiseData implements Parcelable {
    public static final Parcelable.Creator<AdvertiseData> CREATOR = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/bluetooth/le/AdvertiseData$Builder.class
 */
    public static final class Builder {
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder addServiceUuid(ParcelUuid serviceUuid) {
            throw new RuntimeException("Stub!");
        }

        public Builder addServiceData(ParcelUuid serviceDataUuid, byte[] serviceData) {
            throw new RuntimeException("Stub!");
        }

        public Builder addManufacturerData(int manufacturerId, byte[] manufacturerSpecificData) {
            throw new RuntimeException("Stub!");
        }

        public Builder setIncludeTxPowerLevel(boolean includeTxPowerLevel) {
            throw new RuntimeException("Stub!");
        }

        public Builder setIncludeDeviceName(boolean includeDeviceName) {
            throw new RuntimeException("Stub!");
        }

        public AdvertiseData build() {
            throw new RuntimeException("Stub!");
        }
    }

    AdvertiseData() {
        throw new RuntimeException("Stub!");
    }

    public List<ParcelUuid> getServiceUuids() {
        throw new RuntimeException("Stub!");
    }

    public SparseArray<byte[]> getManufacturerSpecificData() {
        throw new RuntimeException("Stub!");
    }

    public Map<ParcelUuid, byte[]> getServiceData() {
        throw new RuntimeException("Stub!");
    }

    public boolean getIncludeTxPowerLevel() {
        throw new RuntimeException("Stub!");
    }

    public boolean getIncludeDeviceName() {
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
