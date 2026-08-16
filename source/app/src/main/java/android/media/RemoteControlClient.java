package android.media;

import android.app.PendingIntent;
import android.graphics.Bitmap;
import android.media.session.MediaSession;
import android.os.Looper;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/RemoteControlClient.class
 */
@Deprecated
public class RemoteControlClient {
    public static final int FLAG_KEY_MEDIA_FAST_FORWARD = 64;
    public static final int FLAG_KEY_MEDIA_NEXT = 128;
    public static final int FLAG_KEY_MEDIA_PAUSE = 16;
    public static final int FLAG_KEY_MEDIA_PLAY = 4;
    public static final int FLAG_KEY_MEDIA_PLAY_PAUSE = 8;
    public static final int FLAG_KEY_MEDIA_POSITION_UPDATE = 256;
    public static final int FLAG_KEY_MEDIA_PREVIOUS = 1;
    public static final int FLAG_KEY_MEDIA_RATING = 512;
    public static final int FLAG_KEY_MEDIA_REWIND = 2;
    public static final int FLAG_KEY_MEDIA_STOP = 32;
    public static final int PLAYSTATE_BUFFERING = 8;
    public static final int PLAYSTATE_ERROR = 9;
    public static final int PLAYSTATE_FAST_FORWARDING = 4;
    public static final int PLAYSTATE_PAUSED = 2;
    public static final int PLAYSTATE_PLAYING = 3;
    public static final int PLAYSTATE_REWINDING = 5;
    public static final int PLAYSTATE_SKIPPING_BACKWARDS = 7;
    public static final int PLAYSTATE_SKIPPING_FORWARDS = 6;
    public static final int PLAYSTATE_STOPPED = 1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/RemoteControlClient$OnGetPlaybackPositionListener.class
 */
    public interface OnGetPlaybackPositionListener {
        long onGetPlaybackPosition();
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/RemoteControlClient$OnMetadataUpdateListener.class
 */
    public interface OnMetadataUpdateListener {
        void onMetadataUpdate(int i10, Object obj);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/RemoteControlClient$OnPlaybackPositionUpdateListener.class
 */
    public interface OnPlaybackPositionUpdateListener {
        void onPlaybackPositionUpdate(long j10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/RemoteControlClient$MetadataEditor.class
 */
    @Deprecated
    public class MetadataEditor extends MediaMetadataEditor {
        public static final int BITMAP_KEY_ARTWORK = 100;

        MetadataEditor() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public synchronized MetadataEditor putString(int key, String value) throws IllegalArgumentException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public synchronized MetadataEditor putLong(int key, long value) throws IllegalArgumentException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public synchronized MetadataEditor putBitmap(int key, Bitmap bitmap) throws IllegalArgumentException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public synchronized MetadataEditor putObject(int key, Object object) throws IllegalArgumentException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public synchronized void clear() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public synchronized void apply() {
            throw new RuntimeException("Stub!");
        }
    }

    public RemoteControlClient(PendingIntent mediaButtonIntent) {
        throw new RuntimeException("Stub!");
    }

    public RemoteControlClient(PendingIntent mediaButtonIntent, Looper looper) {
        throw new RuntimeException("Stub!");
    }

    public MediaSession getMediaSession() {
        throw new RuntimeException("Stub!");
    }

    public MetadataEditor editMetadata(boolean startEmpty) {
        throw new RuntimeException("Stub!");
    }

    public void setPlaybackState(int state) {
        throw new RuntimeException("Stub!");
    }

    public void setPlaybackState(int state, long timeInMs, float playbackSpeed) {
        throw new RuntimeException("Stub!");
    }

    public void setTransportControlFlags(int transportControlFlags) {
        throw new RuntimeException("Stub!");
    }

    public void setMetadataUpdateListener(OnMetadataUpdateListener l10) {
        throw new RuntimeException("Stub!");
    }

    public void setPlaybackPositionUpdateListener(OnPlaybackPositionUpdateListener l10) {
        throw new RuntimeException("Stub!");
    }

    public void setOnGetPlaybackPositionListener(OnGetPlaybackPositionListener l10) {
        throw new RuntimeException("Stub!");
    }
}
