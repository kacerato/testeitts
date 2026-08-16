package android.bluetooth;

import android.os.ParcelFileDescriptor;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/bluetooth/BluetoothHealthCallback.class
 */
public abstract class BluetoothHealthCallback {
    public BluetoothHealthCallback() {
        throw new RuntimeException("Stub!");
    }

    public void onHealthAppConfigurationStatusChange(BluetoothHealthAppConfiguration config, int status) {
        throw new RuntimeException("Stub!");
    }

    public void onHealthChannelStateChange(BluetoothHealthAppConfiguration config, BluetoothDevice device, int prevState, int newState, ParcelFileDescriptor fd2, int channelId) {
        throw new RuntimeException("Stub!");
    }
}
