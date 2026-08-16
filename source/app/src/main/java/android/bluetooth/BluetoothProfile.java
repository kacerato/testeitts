package android.bluetooth;

import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/bluetooth/BluetoothProfile.class
 */
public interface BluetoothProfile {
    public static final int A2DP = 2;
    public static final String EXTRA_PREVIOUS_STATE = "android.bluetooth.profile.extra.PREVIOUS_STATE";
    public static final String EXTRA_STATE = "android.bluetooth.profile.extra.STATE";
    public static final int GATT = 7;
    public static final int GATT_SERVER = 8;
    public static final int HEADSET = 1;
    public static final int HEALTH = 3;
    public static final int SAP = 10;
    public static final int STATE_CONNECTED = 2;
    public static final int STATE_CONNECTING = 1;
    public static final int STATE_DISCONNECTED = 0;
    public static final int STATE_DISCONNECTING = 3;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/bluetooth/BluetoothProfile$ServiceListener.class
 */
    public interface ServiceListener {
        void onServiceConnected(int i10, BluetoothProfile bluetoothProfile);

        void onServiceDisconnected(int i10);
    }

    List<BluetoothDevice> getConnectedDevices();

    List<BluetoothDevice> getDevicesMatchingConnectionStates(int[] iArr);

    int getConnectionState(BluetoothDevice bluetoothDevice);
}
