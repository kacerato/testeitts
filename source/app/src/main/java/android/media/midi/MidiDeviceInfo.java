package android.media.midi;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/midi/MidiDeviceInfo.class
 */
public final class MidiDeviceInfo implements Parcelable {
    public static final Parcelable.Creator<MidiDeviceInfo> CREATOR = null;
    public static final String PROPERTY_BLUETOOTH_DEVICE = "bluetooth_device";
    public static final String PROPERTY_MANUFACTURER = "manufacturer";
    public static final String PROPERTY_NAME = "name";
    public static final String PROPERTY_PRODUCT = "product";
    public static final String PROPERTY_SERIAL_NUMBER = "serial_number";
    public static final String PROPERTY_USB_DEVICE = "usb_device";
    public static final String PROPERTY_VERSION = "version";
    public static final int TYPE_BLUETOOTH = 3;
    public static final int TYPE_USB = 1;
    public static final int TYPE_VIRTUAL = 2;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/midi/MidiDeviceInfo$PortInfo.class
 */
    public static final class PortInfo {
        public static final int TYPE_INPUT = 1;
        public static final int TYPE_OUTPUT = 2;

        PortInfo() {
            throw new RuntimeException("Stub!");
        }

        public int getType() {
            throw new RuntimeException("Stub!");
        }

        public int getPortNumber() {
            throw new RuntimeException("Stub!");
        }

        public String getName() {
            throw new RuntimeException("Stub!");
        }
    }

    MidiDeviceInfo() {
        throw new RuntimeException("Stub!");
    }

    public int getType() {
        throw new RuntimeException("Stub!");
    }

    public int getId() {
        throw new RuntimeException("Stub!");
    }

    public int getInputPortCount() {
        throw new RuntimeException("Stub!");
    }

    public int getOutputPortCount() {
        throw new RuntimeException("Stub!");
    }

    public PortInfo[] getPorts() {
        throw new RuntimeException("Stub!");
    }

    public Bundle getProperties() {
        throw new RuntimeException("Stub!");
    }

    public boolean isPrivate() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        throw new RuntimeException("Stub!");
    }
}
