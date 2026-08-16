package android.bluetooth.le;

import android.app.PendingIntent;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/bluetooth/le/BluetoothLeScanner.class
 */
public final class BluetoothLeScanner {
    public static final String EXTRA_CALLBACK_TYPE = "android.bluetooth.le.extra.CALLBACK_TYPE";
    public static final String EXTRA_ERROR_CODE = "android.bluetooth.le.extra.ERROR_CODE";
    public static final String EXTRA_LIST_SCAN_RESULT = "android.bluetooth.le.extra.LIST_SCAN_RESULT";

    BluetoothLeScanner() {
        throw new RuntimeException("Stub!");
    }

    public void startScan(ScanCallback callback) {
        throw new RuntimeException("Stub!");
    }

    public void startScan(List<ScanFilter> filters, ScanSettings settings, ScanCallback callback) {
        throw new RuntimeException("Stub!");
    }

    public int startScan(List<ScanFilter> filters, ScanSettings settings, PendingIntent callbackIntent) {
        throw new RuntimeException("Stub!");
    }

    public void stopScan(ScanCallback callback) {
        throw new RuntimeException("Stub!");
    }

    public void stopScan(PendingIntent callbackIntent) {
        throw new RuntimeException("Stub!");
    }

    public void flushPendingScanResults(ScanCallback callback) {
        throw new RuntimeException("Stub!");
    }
}
