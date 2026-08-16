package android.telecom;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telecom/VideoProfile.class
 */
public class VideoProfile implements Parcelable {
    public static final Parcelable.Creator<VideoProfile> CREATOR = null;
    public static final int QUALITY_DEFAULT = 4;
    public static final int QUALITY_HIGH = 1;
    public static final int QUALITY_LOW = 3;
    public static final int QUALITY_MEDIUM = 2;
    public static final int STATE_AUDIO_ONLY = 0;
    public static final int STATE_BIDIRECTIONAL = 3;
    public static final int STATE_PAUSED = 4;
    public static final int STATE_RX_ENABLED = 2;
    public static final int STATE_TX_ENABLED = 1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telecom/VideoProfile$CameraCapabilities.class
 */
    public static final class CameraCapabilities implements Parcelable {
        public static final Parcelable.Creator<CameraCapabilities> CREATOR = null;

        public CameraCapabilities(int width, int height) {
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

        public int getWidth() {
            throw new RuntimeException("Stub!");
        }

        public int getHeight() {
            throw new RuntimeException("Stub!");
        }
    }

    public VideoProfile(int videoState) {
        throw new RuntimeException("Stub!");
    }

    public VideoProfile(int videoState, int quality) {
        throw new RuntimeException("Stub!");
    }

    public int getVideoState() {
        throw new RuntimeException("Stub!");
    }

    public int getQuality() {
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

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public static String videoStateToString(int videoState) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isAudioOnly(int videoState) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isVideo(int videoState) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isTransmissionEnabled(int videoState) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isReceptionEnabled(int videoState) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isBidirectional(int videoState) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isPaused(int videoState) {
        throw new RuntimeException("Stub!");
    }
}
