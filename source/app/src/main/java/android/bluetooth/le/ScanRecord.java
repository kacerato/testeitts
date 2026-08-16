package android.bluetooth.le;

import android.os.ParcelUuid;
import android.util.SparseArray;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/bluetooth/le/ScanRecord.class
 */
public final class ScanRecord {
    ScanRecord() {
        throw new RuntimeException("Stub!");
    }

    public int getAdvertiseFlags() {
        throw new RuntimeException("Stub!");
    }

    public List<ParcelUuid> getServiceUuids() {
        throw new RuntimeException("Stub!");
    }

    public SparseArray<byte[]> getManufacturerSpecificData() {
        throw new RuntimeException("Stub!");
    }

    public byte[] getManufacturerSpecificData(int manufacturerId) {
        throw new RuntimeException("Stub!");
    }

    public Map<ParcelUuid, byte[]> getServiceData() {
        throw new RuntimeException("Stub!");
    }

    public byte[] getServiceData(ParcelUuid serviceDataUuid) {
        throw new RuntimeException("Stub!");
    }

    public int getTxPowerLevel() {
        throw new RuntimeException("Stub!");
    }

    public String getDeviceName() {
        throw new RuntimeException("Stub!");
    }

    public byte[] getBytes() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
