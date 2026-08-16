package android.os;

import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/VibrationEffect.class
 */
public abstract class VibrationEffect implements Parcelable {
    public static final Parcelable.Creator<VibrationEffect> CREATOR = null;
    public static final int DEFAULT_AMPLITUDE = -1;

    VibrationEffect() {
        throw new RuntimeException("Stub!");
    }

    public static VibrationEffect createOneShot(long milliseconds, int amplitude) {
        throw new RuntimeException("Stub!");
    }

    public static VibrationEffect createWaveform(long[] timings, int repeat) {
        throw new RuntimeException("Stub!");
    }

    public static VibrationEffect createWaveform(long[] timings, int[] amplitudes, int repeat) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }
}
