package android.bluetooth;

import android.os.Parcel;
import android.os.Parcelable;

public final class BluetoothHidDeviceAppQosSettings implements Parcelable {
    public static final Parcelable.Creator<BluetoothHidDeviceAppQosSettings> CREATOR = null;
    public static final int MAX = -1;
    public static final int SERVICE_BEST_EFFORT = 1;
    public static final int SERVICE_GUARANTEED = 2;
    public static final int SERVICE_NO_TRAFFIC = 0;

    public BluetoothHidDeviceAppQosSettings(int serviceType, int tokenRate, int tokenBucketSize, int peakBandwidth, int latency, int delayVariation) {
        throw new RuntimeException("Stub!");
    }

    public int getServiceType() {
        throw new RuntimeException("Stub!");
    }

    public int getTokenRate() {
        throw new RuntimeException("Stub!");
    }

    public int getTokenBucketSize() {
        throw new RuntimeException("Stub!");
    }

    public int getPeakBandwidth() {
        throw new RuntimeException("Stub!");
    }

    public int getLatency() {
        throw new RuntimeException("Stub!");
    }

    public int getDelayVariation() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel out, int flags) {
        throw new RuntimeException("Stub!");
    }
}
