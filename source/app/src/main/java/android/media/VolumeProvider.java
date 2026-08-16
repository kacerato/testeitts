package android.media;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/VolumeProvider.class
 */
public abstract class VolumeProvider {
    public static final int VOLUME_CONTROL_ABSOLUTE = 2;
    public static final int VOLUME_CONTROL_FIXED = 0;
    public static final int VOLUME_CONTROL_RELATIVE = 1;

    public VolumeProvider(int volumeControl, int maxVolume, int currentVolume) {
        throw new RuntimeException("Stub!");
    }

    public final int getVolumeControl() {
        throw new RuntimeException("Stub!");
    }

    public final int getMaxVolume() {
        throw new RuntimeException("Stub!");
    }

    public final int getCurrentVolume() {
        throw new RuntimeException("Stub!");
    }

    public final void setCurrentVolume(int currentVolume) {
        throw new RuntimeException("Stub!");
    }

    public void onSetVolumeTo(int volume) {
        throw new RuntimeException("Stub!");
    }

    public void onAdjustVolume(int direction) {
        throw new RuntimeException("Stub!");
    }
}
