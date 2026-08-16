package android.bluetooth;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/bluetooth/BluetoothGattCallback.class
 */
public abstract class BluetoothGattCallback {
    public BluetoothGattCallback() {
        throw new RuntimeException("Stub!");
    }

    public void onPhyUpdate(BluetoothGatt gatt, int txPhy, int rxPhy, int status) {
        throw new RuntimeException("Stub!");
    }

    public void onPhyRead(BluetoothGatt gatt, int txPhy, int rxPhy, int status) {
        throw new RuntimeException("Stub!");
    }

    public void onConnectionStateChange(BluetoothGatt gatt, int status, int newState) {
        throw new RuntimeException("Stub!");
    }

    public void onServicesDiscovered(BluetoothGatt gatt, int status) {
        throw new RuntimeException("Stub!");
    }

    public void onCharacteristicRead(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic, int status) {
        throw new RuntimeException("Stub!");
    }

    public void onCharacteristicWrite(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic, int status) {
        throw new RuntimeException("Stub!");
    }

    public void onCharacteristicChanged(BluetoothGatt gatt, BluetoothGattCharacteristic characteristic) {
        throw new RuntimeException("Stub!");
    }

    public void onDescriptorRead(BluetoothGatt gatt, BluetoothGattDescriptor descriptor, int status) {
        throw new RuntimeException("Stub!");
    }

    public void onDescriptorWrite(BluetoothGatt gatt, BluetoothGattDescriptor descriptor, int status) {
        throw new RuntimeException("Stub!");
    }

    public void onReliableWriteCompleted(BluetoothGatt gatt, int status) {
        throw new RuntimeException("Stub!");
    }

    public void onReadRemoteRssi(BluetoothGatt gatt, int rssi, int status) {
        throw new RuntimeException("Stub!");
    }

    public void onMtuChanged(BluetoothGatt gatt, int mtu, int status) {
        throw new RuntimeException("Stub!");
    }
}
