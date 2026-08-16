package android.net.wifi.rtt;

import android.net.MacAddress;
import android.net.wifi.ScanResult;
import android.net.wifi.aware.PeerHandle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import java.util.List;

public final class RangingRequest implements Parcelable {
    public static final Parcelable.Creator<RangingRequest> CREATOR = null;

    RangingRequest() {
        throw new RuntimeException("Stub!");
    }

    public static int getMaxPeers() {
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

    public static final class Builder {
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder addAccessPoint(@RecentlyNonNull ScanResult apInfo) {
            throw new RuntimeException("Stub!");
        }

        public Builder addAccessPoints(@RecentlyNonNull List<ScanResult> apInfos) {
            throw new RuntimeException("Stub!");
        }

        public Builder addWifiAwarePeer(@RecentlyNonNull MacAddress peerMacAddress) {
            throw new RuntimeException("Stub!");
        }

        public Builder addWifiAwarePeer(@RecentlyNonNull PeerHandle peerHandle) {
            throw new RuntimeException("Stub!");
        }

        public RangingRequest build() {
            throw new RuntimeException("Stub!");
        }
    }
}
