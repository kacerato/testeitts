package android.bluetooth.le;

import android.bluetooth.BluetoothDevice;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/bluetooth/le/ScanResult.class
 */
public final class ScanResult implements Parcelable {
    public static final Parcelable.Creator<ScanResult> CREATOR = null;
    public static final int DATA_COMPLETE = 0;
    public static final int DATA_TRUNCATED = 2;
    public static final int PERIODIC_INTERVAL_NOT_PRESENT = 0;
    public static final int PHY_UNUSED = 0;
    public static final int SID_NOT_PRESENT = 255;
    public static final int TX_POWER_NOT_PRESENT = 127;

    @Deprecated
    public ScanResult(BluetoothDevice device, ScanRecord scanRecord, int rssi, long timestampNanos) {
        throw new RuntimeException("Stub!");
    }

    public ScanResult(BluetoothDevice device, int eventType, int primaryPhy, int secondaryPhy, int advertisingSid, int txPower, int rssi, int periodicAdvertisingInterval, ScanRecord scanRecord, long timestampNanos) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    public BluetoothDevice getDevice() {
        throw new RuntimeException("Stub!");
    }

    public ScanRecord getScanRecord() {
        throw new RuntimeException("Stub!");
    }

    public int getRssi() {
        throw new RuntimeException("Stub!");
    }

    public long getTimestampNanos() {
        throw new RuntimeException("Stub!");
    }

    public boolean isLegacy() {
        throw new RuntimeException("Stub!");
    }

    public boolean isConnectable() {
        throw new RuntimeException("Stub!");
    }

    public int getDataStatus() {
        throw new RuntimeException("Stub!");
    }

    public int getPrimaryPhy() {
        throw new RuntimeException("Stub!");
    }

    public int getSecondaryPhy() {
        throw new RuntimeException("Stub!");
    }

    public int getAdvertisingSid() {
        throw new RuntimeException("Stub!");
    }

    public int getTxPower() {
        throw new RuntimeException("Stub!");
    }

    public int getPeriodicAdvertisingInterval() {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
