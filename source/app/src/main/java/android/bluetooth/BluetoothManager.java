package android.bluetooth;

import android.content.Context;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/bluetooth/BluetoothManager.class
 */
public final class BluetoothManager {
    BluetoothManager() {
        throw new RuntimeException("Stub!");
    }

    public BluetoothAdapter getAdapter() {
        throw new RuntimeException("Stub!");
    }

    public int getConnectionState(BluetoothDevice device, int profile) {
        throw new RuntimeException("Stub!");
    }

    public List<BluetoothDevice> getConnectedDevices(int profile) {
        throw new RuntimeException("Stub!");
    }

    public List<BluetoothDevice> getDevicesMatchingConnectionStates(int profile, int[] states) {
        throw new RuntimeException("Stub!");
    }

    public BluetoothGattServer openGattServer(Context context, BluetoothGattServerCallback callback) {
        throw new RuntimeException("Stub!");
    }
}
