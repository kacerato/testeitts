package android.bluetooth;

import java.util.List;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/bluetooth/BluetoothGattServer.class
 */
public final class BluetoothGattServer implements BluetoothProfile {
    BluetoothGattServer() {
        throw new RuntimeException("Stub!");
    }

    public void close() {
        throw new RuntimeException("Stub!");
    }

    public boolean connect(BluetoothDevice device, boolean autoConnect) {
        throw new RuntimeException("Stub!");
    }

    public void cancelConnection(BluetoothDevice device) {
        throw new RuntimeException("Stub!");
    }

    public void setPreferredPhy(BluetoothDevice device, int txPhy, int rxPhy, int phyOptions) {
        throw new RuntimeException("Stub!");
    }

    public void readPhy(BluetoothDevice device) {
        throw new RuntimeException("Stub!");
    }

    public boolean sendResponse(BluetoothDevice device, int requestId, int status, int offset, byte[] value) {
        throw new RuntimeException("Stub!");
    }

    public boolean notifyCharacteristicChanged(BluetoothDevice device, BluetoothGattCharacteristic characteristic, boolean confirm) {
        throw new RuntimeException("Stub!");
    }

    public boolean addService(BluetoothGattService service) {
        throw new RuntimeException("Stub!");
    }

    public boolean removeService(BluetoothGattService service) {
        throw new RuntimeException("Stub!");
    }

    public void clearServices() {
        throw new RuntimeException("Stub!");
    }

    public List<BluetoothGattService> getServices() {
        throw new RuntimeException("Stub!");
    }

    public BluetoothGattService getService(UUID uuid) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getConnectionState(BluetoothDevice device) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public List<BluetoothDevice> getConnectedDevices() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] states) {
        throw new RuntimeException("Stub!");
    }
}
