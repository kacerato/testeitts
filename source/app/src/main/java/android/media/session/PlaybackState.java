package android.media.session;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/session/PlaybackState.class
 */
public final class PlaybackState implements Parcelable {
    public static final long ACTION_FAST_FORWARD = 64;
    public static final long ACTION_PAUSE = 2;
    public static final long ACTION_PLAY = 4;
    public static final long ACTION_PLAY_FROM_MEDIA_ID = 1024;
    public static final long ACTION_PLAY_FROM_SEARCH = 2048;
    public static final long ACTION_PLAY_FROM_URI = 8192;
    public static final long ACTION_PLAY_PAUSE = 512;
    public static final long ACTION_PREPARE = 16384;
    public static final long ACTION_PREPARE_FROM_MEDIA_ID = 32768;
    public static final long ACTION_PREPARE_FROM_SEARCH = 65536;
    public static final long ACTION_PREPARE_FROM_URI = 131072;
    public static final long ACTION_REWIND = 8;
    public static final long ACTION_SEEK_TO = 256;
    public static final long ACTION_SET_RATING = 128;
    public static final long ACTION_SKIP_TO_NEXT = 32;
    public static final long ACTION_SKIP_TO_PREVIOUS = 16;
    public static final long ACTION_SKIP_TO_QUEUE_ITEM = 4096;
    public static final long ACTION_STOP = 1;
    public static final Parcelable.Creator<PlaybackState> CREATOR = null;
    public static final long PLAYBACK_POSITION_UNKNOWN = -1;
    public static final int STATE_BUFFERING = 6;
    public static final int STATE_CONNECTING = 8;
    public static final int STATE_ERROR = 7;
    public static final int STATE_FAST_FORWARDING = 4;
    public static final int STATE_NONE = 0;
    public static final int STATE_PAUSED = 2;
    public static final int STATE_PLAYING = 3;
    public static final int STATE_REWINDING = 5;
    public static final int STATE_SKIPPING_TO_NEXT = 10;
    public static final int STATE_SKIPPING_TO_PREVIOUS = 9;
    public static final int STATE_SKIPPING_TO_QUEUE_ITEM = 11;
    public static final int STATE_STOPPED = 1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/session/PlaybackState$CustomAction.class
 */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = null;

        /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/session/PlaybackState$CustomAction$Builder.class
 */
        public static final class Builder {
            public Builder(String action, CharSequence name, int icon) {
                throw new RuntimeException("Stub!");
            }

            public Builder setExtras(Bundle extras) {
                throw new RuntimeException("Stub!");
            }

            public CustomAction build() {
                throw new RuntimeException("Stub!");
            }
        }

        CustomAction() {
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

        public String getAction() {
            throw new RuntimeException("Stub!");
        }

        public CharSequence getName() {
            throw new RuntimeException("Stub!");
        }

        public int getIcon() {
            throw new RuntimeException("Stub!");
        }

        public Bundle getExtras() {
            throw new RuntimeException("Stub!");
        }

        public String toString() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/session/PlaybackState$Builder.class
 */
    public static final class Builder {
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder(PlaybackState from) {
            throw new RuntimeException("Stub!");
        }

        public Builder setState(int state, long position, float playbackSpeed, long updateTime) {
            throw new RuntimeException("Stub!");
        }

        public Builder setState(int state, long position, float playbackSpeed) {
            throw new RuntimeException("Stub!");
        }

        public Builder setActions(long actions) {
            throw new RuntimeException("Stub!");
        }

        public Builder addCustomAction(String action, String name, int icon) {
            throw new RuntimeException("Stub!");
        }

        public Builder addCustomAction(CustomAction customAction) {
            throw new RuntimeException("Stub!");
        }

        public Builder setBufferedPosition(long bufferedPosition) {
            throw new RuntimeException("Stub!");
        }

        public Builder setActiveQueueItemId(long id2) {
            throw new RuntimeException("Stub!");
        }

        public Builder setErrorMessage(CharSequence error) {
            throw new RuntimeException("Stub!");
        }

        public Builder setExtras(Bundle extras) {
            throw new RuntimeException("Stub!");
        }

        public PlaybackState build() {
            throw new RuntimeException("Stub!");
        }
    }

    PlaybackState() {
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
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }

    public int getState() {
        throw new RuntimeException("Stub!");
    }

    public long getPosition() {
        throw new RuntimeException("Stub!");
    }

    public long getBufferedPosition() {
        throw new RuntimeException("Stub!");
    }

    public float getPlaybackSpeed() {
        throw new RuntimeException("Stub!");
    }

    public long getActions() {
        throw new RuntimeException("Stub!");
    }

    public List<CustomAction> getCustomActions() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getErrorMessage() {
        throw new RuntimeException("Stub!");
    }

    public long getLastPositionUpdateTime() {
        throw new RuntimeException("Stub!");
    }

    public long getActiveQueueItemId() {
        throw new RuntimeException("Stub!");
    }

    public Bundle getExtras() {
        throw new RuntimeException("Stub!");
    }
}
