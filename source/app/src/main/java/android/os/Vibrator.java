package android.os;

import android.media.AudioAttributes;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/os/Vibrator.class
 */
public abstract class Vibrator {
    public abstract boolean hasVibrator();

    public abstract boolean hasAmplitudeControl();

    public abstract void cancel();

    Vibrator() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void vibrate(long milliseconds) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void vibrate(long milliseconds, AudioAttributes attributes) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void vibrate(long[] pattern, int repeat) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void vibrate(long[] pattern, int repeat, AudioAttributes attributes) {
        throw new RuntimeException("Stub!");
    }

    public void vibrate(VibrationEffect vibe) {
        throw new RuntimeException("Stub!");
    }

    public void vibrate(VibrationEffect vibe, AudioAttributes attributes) {
        throw new RuntimeException("Stub!");
    }
}
