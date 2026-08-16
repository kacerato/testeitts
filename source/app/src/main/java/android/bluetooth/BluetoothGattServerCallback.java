package android.bluetooth;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/bluetooth/BluetoothGattServerCallback.class
 */
public abstract class BluetoothGattServerCallback {
    public BluetoothGattServerCallback() {
        throw new RuntimeException("Stub!");
    }

    public void onConnectionStateChange(BluetoothDevice device, int status, int newState) {
        throw new RuntimeException("Stub!");
    }

    public void onServiceAdded(int status, BluetoothGattService service) {
        throw new RuntimeException("Stub!");
    }

    public void onCharacteristicReadRequest(BluetoothDevice device, int requestId, int offset, BluetoothGattCharacteristic characteristic) {
        throw new RuntimeException("Stub!");
    }

    public void onCharacteristicWriteRequest(BluetoothDevice device, int requestId, BluetoothGattCharacteristic characteristic, boolean preparedWrite, boolean responseNeeded, int offset, byte[] value) {
        throw new RuntimeException("Stub!");
    }

    public void onDescriptorReadRequest(BluetoothDevice device, int requestId, int offset, BluetoothGattDescriptor descriptor) {
        throw new RuntimeException("Stub!");
    }

    public void onDescriptorWriteRequest(BluetoothDevice device, int requestId, BluetoothGattDescriptor descriptor, boolean preparedWrite, boolean responseNeeded, int offset, byte[] value) {
        throw new RuntimeException("Stub!");
    }

    public void onExecuteWrite(BluetoothDevice device, int requestId, boolean execute) {
        throw new RuntimeException("Stub!");
    }

    public void onNotificationSent(BluetoothDevice device, int status) {
        throw new RuntimeException("Stub!");
    }

    public void onMtuChanged(BluetoothDevice device, int mtu) {
        throw new RuntimeException("Stub!");
    }

    public void onPhyUpdate(BluetoothDevice device, int txPhy, int rxPhy, int status) {
        throw new RuntimeException("Stub!");
    }

    public void onPhyRead(BluetoothDevice device, int txPhy, int rxPhy, int status) {
        throw new RuntimeException("Stub!");
    }
}
