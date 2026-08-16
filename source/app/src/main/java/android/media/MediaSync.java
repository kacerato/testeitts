package android.media;

import android.os.Handler;
import android.view.Surface;
import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaSync.class
 */
public final class MediaSync {
    public static final int MEDIASYNC_ERROR_AUDIOTRACK_FAIL = 1;
    public static final int MEDIASYNC_ERROR_SURFACE_FAIL = 2;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaSync$OnErrorListener.class
 */
    public interface OnErrorListener {
        void onError(MediaSync mediaSync, int i10, int i11);
    }

    public final native Surface createInputSurface();

    public native PlaybackParams getPlaybackParams();

    public native SyncParams getSyncParams();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaSync$Callback.class
 */
    public static abstract class Callback {
        public abstract void onAudioBufferConsumed(MediaSync mediaSync, ByteBuffer byteBuffer, int i10);

        public Callback() {
            throw new RuntimeException("Stub!");
        }
    }

    public MediaSync() {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() {
        throw new RuntimeException("Stub!");
    }

    public final void release() {
        throw new RuntimeException("Stub!");
    }

    public void setCallback(Callback cb2, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void setOnErrorListener(OnErrorListener listener, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void setSurface(Surface surface) {
        throw new RuntimeException("Stub!");
    }

    public void setAudioTrack(AudioTrack audioTrack) {
        throw new RuntimeException("Stub!");
    }

    public void setPlaybackParams(PlaybackParams params) {
        throw new RuntimeException("Stub!");
    }

    public void setSyncParams(SyncParams params) {
        throw new RuntimeException("Stub!");
    }

    public void flush() {
        throw new RuntimeException("Stub!");
    }

    public MediaTimestamp getTimestamp() {
        throw new RuntimeException("Stub!");
    }

    public void queueAudio(ByteBuffer audioData, int bufferId, long presentationTimeUs) {
        throw new RuntimeException("Stub!");
    }
}
