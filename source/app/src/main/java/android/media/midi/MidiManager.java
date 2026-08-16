package android.media.midi;

import android.bluetooth.BluetoothDevice;
import android.os.Handler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/midi/MidiManager.class
 */
public final class MidiManager {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/midi/MidiManager$OnDeviceOpenedListener.class
 */
    public interface OnDeviceOpenedListener {
        void onDeviceOpened(MidiDevice midiDevice);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/midi/MidiManager$DeviceCallback.class
 */
    public static class DeviceCallback {
        public DeviceCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onDeviceAdded(MidiDeviceInfo device) {
            throw new RuntimeException("Stub!");
        }

        public void onDeviceRemoved(MidiDeviceInfo device) {
            throw new RuntimeException("Stub!");
        }

        public void onDeviceStatusChanged(MidiDeviceStatus status) {
            throw new RuntimeException("Stub!");
        }
    }

    MidiManager() {
        throw new RuntimeException("Stub!");
    }

    public void registerDeviceCallback(DeviceCallback callback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void unregisterDeviceCallback(DeviceCallback callback) {
        throw new RuntimeException("Stub!");
    }

    public MidiDeviceInfo[] getDevices() {
        throw new RuntimeException("Stub!");
    }

    public void openDevice(MidiDeviceInfo deviceInfo, OnDeviceOpenedListener listener, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void openBluetoothDevice(BluetoothDevice bluetoothDevice, OnDeviceOpenedListener listener, Handler handler) {
        throw new RuntimeException("Stub!");
    }
}
