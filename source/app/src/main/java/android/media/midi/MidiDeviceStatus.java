package android.media.midi;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/midi/MidiDeviceStatus.class
 */
public final class MidiDeviceStatus implements Parcelable {
    public static final Parcelable.Creator<MidiDeviceStatus> CREATOR = null;

    MidiDeviceStatus() {
        throw new RuntimeException("Stub!");
    }

    public MidiDeviceInfo getDeviceInfo() {
        throw new RuntimeException("Stub!");
    }

    public boolean isInputPortOpen(int portNumber) {
        throw new RuntimeException("Stub!");
    }

    public int getOutputPortOpenCount(int portNumber) {
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
