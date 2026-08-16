package android.bluetooth;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/bluetooth/BluetoothGattDescriptor.class
 */
public class BluetoothGattDescriptor implements Parcelable {
    public static final int PERMISSION_READ = 1;
    public static final int PERMISSION_READ_ENCRYPTED = 2;
    public static final int PERMISSION_READ_ENCRYPTED_MITM = 4;
    public static final int PERMISSION_WRITE = 16;
    public static final int PERMISSION_WRITE_ENCRYPTED = 32;
    public static final int PERMISSION_WRITE_ENCRYPTED_MITM = 64;
    public static final int PERMISSION_WRITE_SIGNED = 128;
    public static final int PERMISSION_WRITE_SIGNED_MITM = 256;
    public static final byte[] DISABLE_NOTIFICATION_VALUE = null;
    public static final byte[] ENABLE_INDICATION_VALUE = null;
    public static final byte[] ENABLE_NOTIFICATION_VALUE = null;
    public static final Parcelable.Creator<BluetoothGattDescriptor> CREATOR = null;

    public BluetoothGattDescriptor(UUID uuid, int permissions) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel out, int flags) {
        throw new RuntimeException("Stub!");
    }

    public BluetoothGattCharacteristic getCharacteristic() {
        throw new RuntimeException("Stub!");
    }

    public UUID getUuid() {
        throw new RuntimeException("Stub!");
    }

    public int getPermissions() {
        throw new RuntimeException("Stub!");
    }

    public byte[] getValue() {
        throw new RuntimeException("Stub!");
    }

    public boolean setValue(byte[] value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }
}
