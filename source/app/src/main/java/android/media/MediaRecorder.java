package android.media;

import android.hardware.Camera;
import android.os.PersistableBundle;
import android.view.Surface;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaRecorder.class
 */
public class MediaRecorder {
    public static final int MEDIA_ERROR_SERVER_DIED = 100;
    public static final int MEDIA_RECORDER_ERROR_UNKNOWN = 1;
    public static final int MEDIA_RECORDER_INFO_MAX_DURATION_REACHED = 800;
    public static final int MEDIA_RECORDER_INFO_MAX_FILESIZE_APPROACHING = 802;
    public static final int MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED = 801;
    public static final int MEDIA_RECORDER_INFO_NEXT_OUTPUT_FILE_STARTED = 803;
    public static final int MEDIA_RECORDER_INFO_UNKNOWN = 1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaRecorder$OnErrorListener.class
 */
    public interface OnErrorListener {
        void onError(MediaRecorder mediaRecorder, int i10, int i11);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaRecorder$OnInfoListener.class
 */
    public interface OnInfoListener {
        void onInfo(MediaRecorder mediaRecorder, int i10, int i11);
    }

    @Deprecated
    public native void setCamera(Camera camera);

    public native Surface getSurface();

    public native void setAudioSource(int i10) throws IllegalStateException;

    public native void setVideoSource(int i10) throws IllegalStateException;

    public native void setOutputFormat(int i10) throws IllegalStateException;

    public native void setVideoSize(int i10, int i11) throws IllegalStateException;

    public native void setVideoFrameRate(int i10) throws IllegalStateException;

    public native void setMaxDuration(int i10) throws IllegalArgumentException;

    public native void setMaxFileSize(long j10) throws IllegalArgumentException;

    public native void setAudioEncoder(int i10) throws IllegalStateException;

    public native void setVideoEncoder(int i10) throws IllegalStateException;

    public native void start() throws IllegalStateException;

    public native void stop() throws IllegalStateException;

    public native void pause() throws IllegalStateException;

    public native void resume() throws IllegalStateException;

    public native int getMaxAmplitude() throws IllegalStateException;

    public native void release();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaRecorder$AudioSource.class
 */
    public final class AudioSource {
        public static final int CAMCORDER = 5;
        public static final int DEFAULT = 0;
        public static final int MIC = 1;
        public static final int REMOTE_SUBMIX = 8;
        public static final int UNPROCESSED = 9;
        public static final int VOICE_CALL = 4;
        public static final int VOICE_COMMUNICATION = 7;
        public static final int VOICE_DOWNLINK = 3;
        public static final int VOICE_RECOGNITION = 6;
        public static final int VOICE_UPLINK = 2;

        AudioSource() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaRecorder$VideoSource.class
 */
    public final class VideoSource {
        public static final int CAMERA = 1;
        public static final int DEFAULT = 0;
        public static final int SURFACE = 2;

        VideoSource() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaRecorder$OutputFormat.class
 */
    public final class OutputFormat {
        public static final int AAC_ADTS = 6;
        public static final int AMR_NB = 3;
        public static final int AMR_WB = 4;
        public static final int DEFAULT = 0;
        public static final int MPEG_2_TS = 8;
        public static final int MPEG_4 = 2;

        @Deprecated
        public static final int RAW_AMR = 3;
        public static final int THREE_GPP = 1;
        public static final int WEBM = 9;

        OutputFormat() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaRecorder$AudioEncoder.class
 */
    public final class AudioEncoder {
        public static final int AAC = 3;
        public static final int AAC_ELD = 5;
        public static final int AMR_NB = 1;
        public static final int AMR_WB = 2;
        public static final int DEFAULT = 0;
        public static final int HE_AAC = 4;
        public static final int VORBIS = 6;

        AudioEncoder() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaRecorder$VideoEncoder.class
 */
    public final class VideoEncoder {
        public static final int DEFAULT = 0;
        public static final int H263 = 1;
        public static final int H264 = 2;
        public static final int HEVC = 5;
        public static final int MPEG_4_SP = 3;
        public static final int VP8 = 4;

        VideoEncoder() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaRecorder$MetricsConstants.class
 */
    public static final class MetricsConstants {
        public static final String AUDIO_BITRATE = "android.media.mediarecorder.audio-bitrate";
        public static final String AUDIO_CHANNELS = "android.media.mediarecorder.audio-channels";
        public static final String AUDIO_SAMPLERATE = "android.media.mediarecorder.audio-samplerate";
        public static final String AUDIO_TIMESCALE = "android.media.mediarecorder.audio-timescale";
        public static final String CAPTURE_FPS = "android.media.mediarecorder.capture-fps";
        public static final String CAPTURE_FPS_ENABLE = "android.media.mediarecorder.capture-fpsenable";
        public static final String FRAMERATE = "android.media.mediarecorder.frame-rate";
        public static final String HEIGHT = "android.media.mediarecorder.height";
        public static final String MOVIE_TIMESCALE = "android.media.mediarecorder.movie-timescale";
        public static final String ROTATION = "android.media.mediarecorder.rotation";
        public static final String VIDEO_BITRATE = "android.media.mediarecorder.video-bitrate";
        public static final String VIDEO_IFRAME_INTERVAL = "android.media.mediarecorder.video-iframe-interval";
        public static final String VIDEO_LEVEL = "android.media.mediarecorder.video-encoder-level";
        public static final String VIDEO_PROFILE = "android.media.mediarecorder.video-encoder-profile";
        public static final String VIDEO_TIMESCALE = "android.media.mediarecorder.video-timescale";
        public static final String WIDTH = "android.media.mediarecorder.width";

        MetricsConstants() {
            throw new RuntimeException("Stub!");
        }
    }

    public MediaRecorder() {
        throw new RuntimeException("Stub!");
    }

    public void setInputSurface(Surface surface) {
        throw new RuntimeException("Stub!");
    }

    public void setPreviewDisplay(Surface sv) {
        throw new RuntimeException("Stub!");
    }

    public static final int getAudioSourceMax() {
        throw new RuntimeException("Stub!");
    }

    public void setProfile(CamcorderProfile profile) {
        throw new RuntimeException("Stub!");
    }

    public void setCaptureRate(double fps) {
        throw new RuntimeException("Stub!");
    }

    public void setOrientationHint(int degrees) {
        throw new RuntimeException("Stub!");
    }

    public void setLocation(float latitude, float longitude) {
        throw new RuntimeException("Stub!");
    }

    public void setAudioSamplingRate(int samplingRate) {
        throw new RuntimeException("Stub!");
    }

    public void setAudioChannels(int numChannels) {
        throw new RuntimeException("Stub!");
    }

    public void setAudioEncodingBitRate(int bitRate) {
        throw new RuntimeException("Stub!");
    }

    public void setVideoEncodingBitRate(int bitRate) {
        throw new RuntimeException("Stub!");
    }

    public void setVideoEncodingProfileLevel(int profile, int level) {
        throw new RuntimeException("Stub!");
    }

    public void setOutputFile(FileDescriptor fd2) throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public void setOutputFile(File file) {
        throw new RuntimeException("Stub!");
    }

    public void setNextOutputFile(FileDescriptor fd2) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void setOutputFile(String path) throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public void setNextOutputFile(File file) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void prepare() throws IllegalStateException, IOException {
        throw new RuntimeException("Stub!");
    }

    public void reset() {
        throw new RuntimeException("Stub!");
    }

    public void setOnErrorListener(OnErrorListener l10) {
        throw new RuntimeException("Stub!");
    }

    public void setOnInfoListener(OnInfoListener listener) {
        throw new RuntimeException("Stub!");
    }

    public PersistableBundle getMetrics() {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() {
        throw new RuntimeException("Stub!");
    }
}
