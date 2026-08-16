package android.bluetooth;

import android.os.Parcel;
import android.os.Parcelable;

public final class BluetoothHidDeviceAppSdpSettings implements Parcelable {
    public static final Parcelable.Creator<BluetoothHidDeviceAppSdpSettings> CREATOR = null;

    public BluetoothHidDeviceAppSdpSettings(String name, String description, String provider, byte subclass, byte[] descriptors) {
        throw new RuntimeException("Stub!");
    }

    public String getName() {
        throw new RuntimeException("Stub!");
    }

    public String getDescription() {
        throw new RuntimeException("Stub!");
    }

    public String getProvider() {
        throw new RuntimeException("Stub!");
    }

    public byte getSubclass() {
        throw new RuntimeException("Stub!");
    }

    public byte[] getDescriptors() {
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
