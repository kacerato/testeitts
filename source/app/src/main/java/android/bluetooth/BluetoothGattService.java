package android.bluetooth;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/bluetooth/BluetoothGattService.class
 */
public class BluetoothGattService implements Parcelable {
    public static final Parcelable.Creator<BluetoothGattService> CREATOR = null;
    public static final int SERVICE_TYPE_PRIMARY = 0;
    public static final int SERVICE_TYPE_SECONDARY = 1;
    protected List<BluetoothGattCharacteristic> mCharacteristics;
    protected List<BluetoothGattService> mIncludedServices;

    public BluetoothGattService(UUID uuid, int serviceType) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel out, int flags) {
        throw new RuntimeException("Stub!");
    }

    public boolean addService(BluetoothGattService service) {
        throw new RuntimeException("Stub!");
    }

    public boolean addCharacteristic(BluetoothGattCharacteristic characteristic) {
        throw new RuntimeException("Stub!");
    }

    public UUID getUuid() {
        throw new RuntimeException("Stub!");
    }

    public int getInstanceId() {
        throw new RuntimeException("Stub!");
    }

    public int getType() {
        throw new RuntimeException("Stub!");
    }

    public List<BluetoothGattService> getIncludedServices() {
        throw new RuntimeException("Stub!");
    }

    public List<BluetoothGattCharacteristic> getCharacteristics() {
        throw new RuntimeException("Stub!");
    }

    public BluetoothGattCharacteristic getCharacteristic(UUID uuid) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }
}
