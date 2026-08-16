package android.media.tv;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/tv/TvTrackInfo.class
 */
public final class TvTrackInfo implements Parcelable {
    public static final Parcelable.Creator<TvTrackInfo> CREATOR = null;
    public static final int TYPE_AUDIO = 0;
    public static final int TYPE_SUBTITLE = 2;
    public static final int TYPE_VIDEO = 1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/tv/TvTrackInfo$Builder.class
 */
    public static final class Builder {
        public Builder(int type, String id2) {
            throw new RuntimeException("Stub!");
        }

        public final Builder setLanguage(String language) {
            throw new RuntimeException("Stub!");
        }

        public final Builder setDescription(CharSequence description) {
            throw new RuntimeException("Stub!");
        }

        public final Builder setAudioChannelCount(int audioChannelCount) {
            throw new RuntimeException("Stub!");
        }

        public final Builder setAudioSampleRate(int audioSampleRate) {
            throw new RuntimeException("Stub!");
        }

        public final Builder setVideoWidth(int videoWidth) {
            throw new RuntimeException("Stub!");
        }

        public final Builder setVideoHeight(int videoHeight) {
            throw new RuntimeException("Stub!");
        }

        public final Builder setVideoFrameRate(float videoFrameRate) {
            throw new RuntimeException("Stub!");
        }

        public final Builder setVideoPixelAspectRatio(float videoPixelAspectRatio) {
            throw new RuntimeException("Stub!");
        }

        public final Builder setVideoActiveFormatDescription(byte videoActiveFormatDescription) {
            throw new RuntimeException("Stub!");
        }

        public final Builder setExtra(Bundle extra) {
            throw new RuntimeException("Stub!");
        }

        public TvTrackInfo build() {
            throw new RuntimeException("Stub!");
        }
    }

    TvTrackInfo() {
        throw new RuntimeException("Stub!");
    }

    public final int getType() {
        throw new RuntimeException("Stub!");
    }

    public final String getId() {
        throw new RuntimeException("Stub!");
    }

    public final String getLanguage() {
        throw new RuntimeException("Stub!");
    }

    public final CharSequence getDescription() {
        throw new RuntimeException("Stub!");
    }

    public final int getAudioChannelCount() {
        throw new RuntimeException("Stub!");
    }

    public final int getAudioSampleRate() {
        throw new RuntimeException("Stub!");
    }

    public final int getVideoWidth() {
        throw new RuntimeException("Stub!");
    }

    public final int getVideoHeight() {
        throw new RuntimeException("Stub!");
    }

    public final float getVideoFrameRate() {
        throw new RuntimeException("Stub!");
    }

    public final float getVideoPixelAspectRatio() {
        throw new RuntimeException("Stub!");
    }

    public final byte getVideoActiveFormatDescription() {
        throw new RuntimeException("Stub!");
    }

    public final Bundle getExtra() {
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

    public boolean equals(Object o10) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }
}
