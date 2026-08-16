package android.media.session;

import android.app.PendingIntent;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.view.KeyEvent;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/session/MediaController.class
 */
public final class MediaController {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/session/MediaController$Callback.class
 */
    public static abstract class Callback {
        public Callback() {
            throw new RuntimeException("Stub!");
        }

        public void onSessionDestroyed() {
            throw new RuntimeException("Stub!");
        }

        public void onSessionEvent(String event, Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public void onPlaybackStateChanged(PlaybackState state) {
            throw new RuntimeException("Stub!");
        }

        public void onMetadataChanged(MediaMetadata metadata) {
            throw new RuntimeException("Stub!");
        }

        public void onQueueChanged(List<MediaSession.QueueItem> queue) {
            throw new RuntimeException("Stub!");
        }

        public void onQueueTitleChanged(CharSequence title) {
            throw new RuntimeException("Stub!");
        }

        public void onExtrasChanged(Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public void onAudioInfoChanged(PlaybackInfo info) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/session/MediaController$TransportControls.class
 */
    public final class TransportControls {
        TransportControls() {
            throw new RuntimeException("Stub!");
        }

        public void prepare() {
            throw new RuntimeException("Stub!");
        }

        public void prepareFromMediaId(String mediaId, Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public void prepareFromSearch(String query, Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public void prepareFromUri(Uri uri, Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public void play() {
            throw new RuntimeException("Stub!");
        }

        public void playFromMediaId(String mediaId, Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public void playFromSearch(String query, Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public void playFromUri(Uri uri, Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public void skipToQueueItem(long id2) {
            throw new RuntimeException("Stub!");
        }

        public void pause() {
            throw new RuntimeException("Stub!");
        }

        public void stop() {
            throw new RuntimeException("Stub!");
        }

        public void seekTo(long pos) {
            throw new RuntimeException("Stub!");
        }

        public void fastForward() {
            throw new RuntimeException("Stub!");
        }

        public void skipToNext() {
            throw new RuntimeException("Stub!");
        }

        public void rewind() {
            throw new RuntimeException("Stub!");
        }

        public void skipToPrevious() {
            throw new RuntimeException("Stub!");
        }

        public void setRating(Rating rating) {
            throw new RuntimeException("Stub!");
        }

        public void sendCustomAction(PlaybackState.CustomAction customAction, Bundle args) {
            throw new RuntimeException("Stub!");
        }

        public void sendCustomAction(String action, Bundle args) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/session/MediaController$PlaybackInfo.class
 */
    public static final class PlaybackInfo {
        public static final int PLAYBACK_TYPE_LOCAL = 1;
        public static final int PLAYBACK_TYPE_REMOTE = 2;

        PlaybackInfo() {
            throw new RuntimeException("Stub!");
        }

        public int getPlaybackType() {
            throw new RuntimeException("Stub!");
        }

        public AudioAttributes getAudioAttributes() {
            throw new RuntimeException("Stub!");
        }

        public int getVolumeControl() {
            throw new RuntimeException("Stub!");
        }

        public int getMaxVolume() {
            throw new RuntimeException("Stub!");
        }

        public int getCurrentVolume() {
            throw new RuntimeException("Stub!");
        }
    }

    public MediaController(Context context, MediaSession.Token token) {
        throw new RuntimeException("Stub!");
    }

    public TransportControls getTransportControls() {
        throw new RuntimeException("Stub!");
    }

    public boolean dispatchMediaButtonEvent(KeyEvent keyEvent) {
        throw new RuntimeException("Stub!");
    }

    public PlaybackState getPlaybackState() {
        throw new RuntimeException("Stub!");
    }

    public MediaMetadata getMetadata() {
        throw new RuntimeException("Stub!");
    }

    public List<MediaSession.QueueItem> getQueue() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getQueueTitle() {
        throw new RuntimeException("Stub!");
    }

    public Bundle getExtras() {
        throw new RuntimeException("Stub!");
    }

    public int getRatingType() {
        throw new RuntimeException("Stub!");
    }

    public long getFlags() {
        throw new RuntimeException("Stub!");
    }

    public PlaybackInfo getPlaybackInfo() {
        throw new RuntimeException("Stub!");
    }

    public PendingIntent getSessionActivity() {
        throw new RuntimeException("Stub!");
    }

    public MediaSession.Token getSessionToken() {
        throw new RuntimeException("Stub!");
    }

    public void setVolumeTo(int value, int flags) {
        throw new RuntimeException("Stub!");
    }

    public void adjustVolume(int direction, int flags) {
        throw new RuntimeException("Stub!");
    }

    public void registerCallback(Callback callback) {
        throw new RuntimeException("Stub!");
    }

    public void registerCallback(Callback callback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void unregisterCallback(Callback callback) {
        throw new RuntimeException("Stub!");
    }

    public void sendCommand(String command, Bundle args, ResultReceiver cb2) {
        throw new RuntimeException("Stub!");
    }

    public String getPackageName() {
        throw new RuntimeException("Stub!");
    }
}
