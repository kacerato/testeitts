package android.net.wifi.rtt;

import android.net.MacAddress;
import android.net.wifi.aware.PeerHandle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;

public final class RangingResult implements Parcelable {
    public static final Parcelable.Creator<RangingResult> CREATOR = null;
    public static final int STATUS_FAIL = 1;
    public static final int STATUS_RESPONDER_DOES_NOT_SUPPORT_IEEE80211MC = 2;
    public static final int STATUS_SUCCESS = 0;

    RangingResult(int status, @RecentlyNonNull MacAddress mac, int distanceMm, int distanceStdDevMm, int rssi, int numAttemptedMeasurements, int numSuccessfulMeasurements, byte[] lci, byte[] lcr, long timestamp) {
        throw new RuntimeException("Stub!");
    }

    public int getStatus() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNullable
    public MacAddress getMacAddress() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNullable
    public PeerHandle getPeerHandle() {
        throw new RuntimeException("Stub!");
    }

    public int getDistanceMm() {
        throw new RuntimeException("Stub!");
    }

    public int getDistanceStdDevMm() {
        throw new RuntimeException("Stub!");
    }

    public int getRssi() {
        throw new RuntimeException("Stub!");
    }

    public int getNumAttemptedMeasurements() {
        throw new RuntimeException("Stub!");
    }

    public int getNumSuccessfulMeasurements() {
        throw new RuntimeException("Stub!");
    }

    public long getRangingTimestampMillis() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }
}
