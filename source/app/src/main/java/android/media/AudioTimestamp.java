package android.media;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/AudioTimestamp.class
 */
public final class AudioTimestamp {
    public static final int TIMEBASE_BOOTTIME = 1;
    public static final int TIMEBASE_MONOTONIC = 0;
    public long framePosition;
    public long nanoTime;

    public AudioTimestamp() {
        throw new RuntimeException("Stub!");
    }
}
