package android.media;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import java.io.FileDescriptor;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/SoundPool.class
 */
public class SoundPool {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/SoundPool$OnLoadCompleteListener.class
 */
    public interface OnLoadCompleteListener {
        void onLoadComplete(SoundPool soundPool, int i10, int i11);
    }

    public final native boolean unload(int i10);

    public final native void pause(int i10);

    public final native void resume(int i10);

    public final native void autoPause();

    public final native void autoResume();

    public final native void stop(int i10);

    public final native void setPriority(int i10, int i11);

    public final native void setLoop(int i10, int i11);

    public final native void setRate(int i10, float f10);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/SoundPool$Builder.class
 */
    public static class Builder {
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder setMaxStreams(int maxStreams) throws IllegalArgumentException {
            throw new RuntimeException("Stub!");
        }

        public Builder setAudioAttributes(AudioAttributes attributes) throws IllegalArgumentException {
            throw new RuntimeException("Stub!");
        }

        public SoundPool build() {
            throw new RuntimeException("Stub!");
        }
    }

    @Deprecated
    public SoundPool(int maxStreams, int streamType, int srcQuality) {
        throw new RuntimeException("Stub!");
    }

    public final void release() {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() {
        throw new RuntimeException("Stub!");
    }

    public int load(String path, int priority) {
        throw new RuntimeException("Stub!");
    }

    public int load(Context context, int resId, int priority) {
        throw new RuntimeException("Stub!");
    }

    public int load(AssetFileDescriptor afd, int priority) {
        throw new RuntimeException("Stub!");
    }

    public int load(FileDescriptor fd2, long offset, long length, int priority) {
        throw new RuntimeException("Stub!");
    }

    public final int play(int soundID, float leftVolume, float rightVolume, int priority, int loop, float rate) {
        throw new RuntimeException("Stub!");
    }

    public final void setVolume(int streamID, float leftVolume, float rightVolume) {
        throw new RuntimeException("Stub!");
    }

    public void setOnLoadCompleteListener(OnLoadCompleteListener listener) {
        throw new RuntimeException("Stub!");
    }
}
