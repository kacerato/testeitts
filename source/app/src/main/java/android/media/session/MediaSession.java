package android.media.session;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.media.AudioAttributes;
import android.media.MediaDescription;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.VolumeProvider;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/session/MediaSession.class
 */
public final class MediaSession {

    @Deprecated
    public static final int FLAG_HANDLES_MEDIA_BUTTONS = 1;

    @Deprecated
    public static final int FLAG_HANDLES_TRANSPORT_CONTROLS = 2;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/session/MediaSession$Token.class
 */
    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = null;

        Token() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int describeContents() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void writeToParcel(Parcel dest, int flags) {
            throw new RuntimeException("Stub!");
        }

        public int hashCode() {
            throw new RuntimeException("Stub!");
        }

        public boolean equals(Object obj) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/session/MediaSession$Callback.class
 */
    public static abstract class Callback {
        public Callback() {
            throw new RuntimeException("Stub!");
        }

        public void onCommand(String command, Bundle args, ResultReceiver cb2) {
            throw new RuntimeException("Stub!");
        }

        public boolean onMediaButtonEvent(Intent mediaButtonIntent) {
            throw new RuntimeException("Stub!");
        }

        public void onPrepare() {
            throw new RuntimeException("Stub!");
        }

        public void onPrepareFromMediaId(String mediaId, Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public void onPrepareFromSearch(String query, Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public void onPrepareFromUri(Uri uri, Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public void onPlay() {
            throw new RuntimeException("Stub!");
        }

        public void onPlayFromSearch(String query, Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public void onPlayFromMediaId(String mediaId, Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public void onPlayFromUri(Uri uri, Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public void onSkipToQueueItem(long id2) {
            throw new RuntimeException("Stub!");
        }

        public void onPause() {
            throw new RuntimeException("Stub!");
        }

        public void onSkipToNext() {
            throw new RuntimeException("Stub!");
        }

        public void onSkipToPrevious() {
            throw new RuntimeException("Stub!");
        }

        public void onFastForward() {
            throw new RuntimeException("Stub!");
        }

        public void onRewind() {
            throw new RuntimeException("Stub!");
        }

        public void onStop() {
            throw new RuntimeException("Stub!");
        }

        public void onSeekTo(long pos) {
            throw new RuntimeException("Stub!");
        }

        public void onSetRating(Rating rating) {
            throw new RuntimeException("Stub!");
        }

        public void onCustomAction(String action, Bundle extras) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/session/MediaSession$QueueItem.class
 */
    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = null;
        public static final int UNKNOWN_ID = -1;

        public QueueItem(MediaDescription description, long id2) {
            throw new RuntimeException("Stub!");
        }

        public MediaDescription getDescription() {
            throw new RuntimeException("Stub!");
        }

        public long getQueueId() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void writeToParcel(Parcel dest, int flags) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int describeContents() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }
    }

    public MediaSession(Context context, String tag) {
        throw new RuntimeException("Stub!");
    }

    public void setCallback(Callback callback) {
        throw new RuntimeException("Stub!");
    }

    public void setCallback(Callback callback, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void setSessionActivity(PendingIntent pi2) {
        throw new RuntimeException("Stub!");
    }

    public void setMediaButtonReceiver(PendingIntent mbr) {
        throw new RuntimeException("Stub!");
    }

    public void setFlags(int flags) {
        throw new RuntimeException("Stub!");
    }

    public void setPlaybackToLocal(AudioAttributes attributes) {
        throw new RuntimeException("Stub!");
    }

    public void setPlaybackToRemote(VolumeProvider volumeProvider) {
        throw new RuntimeException("Stub!");
    }

    public void setActive(boolean active) {
        throw new RuntimeException("Stub!");
    }

    public boolean isActive() {
        throw new RuntimeException("Stub!");
    }

    public void sendSessionEvent(String event, Bundle extras) {
        throw new RuntimeException("Stub!");
    }

    public void release() {
        throw new RuntimeException("Stub!");
    }

    public Token getSessionToken() {
        throw new RuntimeException("Stub!");
    }

    public MediaController getController() {
        throw new RuntimeException("Stub!");
    }

    public void setPlaybackState(PlaybackState state) {
        throw new RuntimeException("Stub!");
    }

    public void setMetadata(MediaMetadata metadata) {
        throw new RuntimeException("Stub!");
    }

    public void setQueue(List<QueueItem> queue) {
        throw new RuntimeException("Stub!");
    }

    public void setQueueTitle(CharSequence title) {
        throw new RuntimeException("Stub!");
    }

    public void setRatingType(int type) {
        throw new RuntimeException("Stub!");
    }

    public void setExtras(Bundle extras) {
        throw new RuntimeException("Stub!");
    }
}
