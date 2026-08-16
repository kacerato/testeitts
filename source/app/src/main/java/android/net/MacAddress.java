package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;

public final class MacAddress implements Parcelable {
    public static final MacAddress BROADCAST_ADDRESS = null;
    public static final Parcelable.Creator<MacAddress> CREATOR = null;
    public static final int TYPE_BROADCAST = 3;
    public static final int TYPE_MULTICAST = 2;
    public static final int TYPE_UNICAST = 1;

    MacAddress(long addr) {
        throw new RuntimeException("Stub!");
    }

    public int getAddressType() {
        throw new RuntimeException("Stub!");
    }

    public boolean isLocallyAssigned() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public byte[] toByteArray() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public String toOuiString() {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel out, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public static MacAddress fromString(@RecentlyNonNull String addr) {
        throw new RuntimeException("Stub!");
    }

    @RecentlyNonNull
    public static MacAddress fromBytes(@RecentlyNonNull byte[] addr) {
        throw new RuntimeException("Stub!");
    }
}
