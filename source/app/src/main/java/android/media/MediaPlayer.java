package android.media;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaDrm;
import android.media.VolumeShaper;
import android.net.Uri;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PersistableBundle;
import android.view.Surface;
import android.view.SurfaceHolder;
import java.io.FileDescriptor;
import java.io.IOException;
import java.net.HttpCookie;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaPlayer.class
 */
public class MediaPlayer implements VolumeAutomation {
    public static final int MEDIA_ERROR_IO = -1004;
    public static final int MEDIA_ERROR_MALFORMED = -1007;
    public static final int MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK = 200;
    public static final int MEDIA_ERROR_SERVER_DIED = 100;
    public static final int MEDIA_ERROR_TIMED_OUT = -110;
    public static final int MEDIA_ERROR_UNKNOWN = 1;
    public static final int MEDIA_ERROR_UNSUPPORTED = -1010;
    public static final int MEDIA_INFO_AUDIO_NOT_PLAYING = 804;
    public static final int MEDIA_INFO_BAD_INTERLEAVING = 800;
    public static final int MEDIA_INFO_BUFFERING_END = 702;
    public static final int MEDIA_INFO_BUFFERING_START = 701;
    public static final int MEDIA_INFO_METADATA_UPDATE = 802;
    public static final int MEDIA_INFO_NOT_SEEKABLE = 801;
    public static final int MEDIA_INFO_SUBTITLE_TIMED_OUT = 902;
    public static final int MEDIA_INFO_UNKNOWN = 1;
    public static final int MEDIA_INFO_UNSUPPORTED_SUBTITLE = 901;
    public static final int MEDIA_INFO_VIDEO_NOT_PLAYING = 805;
    public static final int MEDIA_INFO_VIDEO_RENDERING_START = 3;
    public static final int MEDIA_INFO_VIDEO_TRACK_LAGGING = 700;
    public static final String MEDIA_MIMETYPE_TEXT_SUBRIP = "application/x-subrip";
    public static final int PREPARE_DRM_STATUS_PREPARATION_ERROR = 3;
    public static final int PREPARE_DRM_STATUS_PROVISIONING_NETWORK_ERROR = 1;
    public static final int PREPARE_DRM_STATUS_PROVISIONING_SERVER_ERROR = 2;
    public static final int PREPARE_DRM_STATUS_SUCCESS = 0;
    public static final int SEEK_CLOSEST = 3;
    public static final int SEEK_CLOSEST_SYNC = 2;
    public static final int SEEK_NEXT_SYNC = 1;
    public static final int SEEK_PREVIOUS_SYNC = 0;
    public static final int VIDEO_SCALING_MODE_SCALE_TO_FIT = 1;
    public static final int VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING = 2;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaPlayer$OnBufferingUpdateListener.class
 */
    public interface OnBufferingUpdateListener {
        void onBufferingUpdate(MediaPlayer mediaPlayer, int i10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaPlayer$OnCompletionListener.class
 */
    public interface OnCompletionListener {
        void onCompletion(MediaPlayer mediaPlayer);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaPlayer$OnDrmConfigHelper.class
 */
    public interface OnDrmConfigHelper {
        void onDrmConfig(MediaPlayer mediaPlayer);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaPlayer$OnDrmInfoListener.class
 */
    public interface OnDrmInfoListener {
        void onDrmInfo(MediaPlayer mediaPlayer, DrmInfo drmInfo);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaPlayer$OnDrmPreparedListener.class
 */
    public interface OnDrmPreparedListener {
        void onDrmPrepared(MediaPlayer mediaPlayer, int i10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaPlayer$OnErrorListener.class
 */
    public interface OnErrorListener {
        boolean onError(MediaPlayer mediaPlayer, int i10, int i11);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaPlayer$OnInfoListener.class
 */
    public interface OnInfoListener {
        boolean onInfo(MediaPlayer mediaPlayer, int i10, int i11);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaPlayer$OnPreparedListener.class
 */
    public interface OnPreparedListener {
        void onPrepared(MediaPlayer mediaPlayer);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaPlayer$OnSeekCompleteListener.class
 */
    public interface OnSeekCompleteListener {
        void onSeekComplete(MediaPlayer mediaPlayer);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaPlayer$OnTimedMetaDataAvailableListener.class
 */
    public interface OnTimedMetaDataAvailableListener {
        void onTimedMetaDataAvailable(MediaPlayer mediaPlayer, TimedMetaData timedMetaData);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaPlayer$OnTimedTextListener.class
 */
    public interface OnTimedTextListener {
        void onTimedText(MediaPlayer mediaPlayer, TimedText timedText);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaPlayer$OnVideoSizeChangedListener.class
 */
    public interface OnVideoSizeChangedListener {
        void onVideoSizeChanged(MediaPlayer mediaPlayer, int i10, int i11);
    }

    public native void prepareAsync() throws IllegalStateException;

    public native int getVideoWidth();

    public native int getVideoHeight();

    public native boolean isPlaying();

    public native void setPlaybackParams(PlaybackParams playbackParams);

    public native PlaybackParams getPlaybackParams();

    public native void setSyncParams(SyncParams syncParams);

    public native SyncParams getSyncParams();

    public native int getCurrentPosition();

    public native int getDuration();

    public native void setNextMediaPlayer(MediaPlayer mediaPlayer);

    public native void setLooping(boolean z10);

    public native boolean isLooping();

    public native void setAudioSessionId(int i10) throws IllegalArgumentException, IllegalStateException;

    public native int getAudioSessionId();

    public native void attachAuxEffect(int i10);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaPlayer$TrackInfo.class
 */
    public static class TrackInfo implements Parcelable {
        public static final int MEDIA_TRACK_TYPE_AUDIO = 2;
        public static final int MEDIA_TRACK_TYPE_METADATA = 5;
        public static final int MEDIA_TRACK_TYPE_SUBTITLE = 4;
        public static final int MEDIA_TRACK_TYPE_TIMEDTEXT = 3;
        public static final int MEDIA_TRACK_TYPE_UNKNOWN = 0;
        public static final int MEDIA_TRACK_TYPE_VIDEO = 1;

        TrackInfo() {
            throw new RuntimeException("Stub!");
        }

        public int getTrackType() {
            throw new RuntimeException("Stub!");
        }

        public String getLanguage() {
            throw new RuntimeException("Stub!");
        }

        public MediaFormat getFormat() {
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
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaPlayer$DrmInfo.class
 */
    public static final class DrmInfo {
        DrmInfo() {
            throw new RuntimeException("Stub!");
        }

        public Map<UUID, byte[]> getPssh() {
            throw new RuntimeException("Stub!");
        }

        public UUID[] getSupportedSchemes() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaPlayer$NoDrmSchemeException.class
 */
    public static final class NoDrmSchemeException extends MediaDrmException {
        public NoDrmSchemeException(String detailMessage) {
            super((String) null);
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaPlayer$ProvisioningNetworkErrorException.class
 */
    public static final class ProvisioningNetworkErrorException extends MediaDrmException {
        public ProvisioningNetworkErrorException(String detailMessage) {
            super((String) null);
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaPlayer$ProvisioningServerErrorException.class
 */
    public static final class ProvisioningServerErrorException extends MediaDrmException {
        public ProvisioningServerErrorException(String detailMessage) {
            super((String) null);
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/MediaPlayer$MetricsConstants.class
 */
    public static final class MetricsConstants {
        public static final String CODEC_AUDIO = "android.media.mediaplayer.audio.codec";
        public static final String CODEC_VIDEO = "android.media.mediaplayer.video.codec";
        public static final String DURATION = "android.media.mediaplayer.durationMs";
        public static final String ERRORS = "android.media.mediaplayer.err";
        public static final String ERROR_CODE = "android.media.mediaplayer.errcode";
        public static final String FRAMES = "android.media.mediaplayer.frames";
        public static final String FRAMES_DROPPED = "android.media.mediaplayer.dropped";
        public static final String HEIGHT = "android.media.mediaplayer.height";
        public static final String MIME_TYPE_AUDIO = "android.media.mediaplayer.audio.mime";
        public static final String MIME_TYPE_VIDEO = "android.media.mediaplayer.video.mime";
        public static final String PLAYING = "android.media.mediaplayer.playingMs";
        public static final String WIDTH = "android.media.mediaplayer.width";

        MetricsConstants() {
            throw new RuntimeException("Stub!");
        }
    }

    public MediaPlayer() {
        throw new RuntimeException("Stub!");
    }

    public void setDisplay(SurfaceHolder sh2) {
        throw new RuntimeException("Stub!");
    }

    public void setSurface(Surface surface) {
        throw new RuntimeException("Stub!");
    }

    public void setVideoScalingMode(int mode) {
        throw new RuntimeException("Stub!");
    }

    public static MediaPlayer create(Context context, Uri uri) {
        throw new RuntimeException("Stub!");
    }

    public static MediaPlayer create(Context context, Uri uri, SurfaceHolder holder) {
        throw new RuntimeException("Stub!");
    }

    public static MediaPlayer create(Context context, Uri uri, SurfaceHolder holder, AudioAttributes audioAttributes, int audioSessionId) {
        throw new RuntimeException("Stub!");
    }

    public static MediaPlayer create(Context context, int resid) {
        throw new RuntimeException("Stub!");
    }

    public static MediaPlayer create(Context context, int resid, AudioAttributes audioAttributes, int audioSessionId) {
        throw new RuntimeException("Stub!");
    }

    public void setDataSource(Context context, Uri uri) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public void setDataSource(Context context, Uri uri, Map<String, String> headers, List<HttpCookie> cookies) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void setDataSource(Context context, Uri uri, Map<String, String> headers) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public void setDataSource(String path) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public void setDataSource(AssetFileDescriptor afd) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public void setDataSource(FileDescriptor fd2) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public void setDataSource(FileDescriptor fd2, long offset, long length) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public void setDataSource(MediaDataSource dataSource) throws IllegalArgumentException, IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public void prepare() throws IOException, IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public void start() throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public void stop() throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public void pause() throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public VolumeShaper createVolumeShaper(VolumeShaper.Configuration configuration) {
        throw new RuntimeException("Stub!");
    }

    public void setWakeMode(Context context, int mode) {
        throw new RuntimeException("Stub!");
    }

    public void setScreenOnWhilePlaying(boolean screenOn) {
        throw new RuntimeException("Stub!");
    }

    public PersistableBundle getMetrics() {
        throw new RuntimeException("Stub!");
    }

    public void seekTo(long msec, int mode) {
        throw new RuntimeException("Stub!");
    }

    public void seekTo(int msec) throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public MediaTimestamp getTimestamp() {
        throw new RuntimeException("Stub!");
    }

    public void release() {
        throw new RuntimeException("Stub!");
    }

    public void reset() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setAudioStreamType(int streamtype) {
        throw new RuntimeException("Stub!");
    }

    public void setAudioAttributes(AudioAttributes attributes) throws IllegalArgumentException {
        throw new RuntimeException("Stub!");
    }

    public void setVolume(float leftVolume, float rightVolume) {
        throw new RuntimeException("Stub!");
    }

    public void setAuxEffectSendLevel(float level) {
        throw new RuntimeException("Stub!");
    }

    public TrackInfo[] getTrackInfo() throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public void addTimedTextSource(String path, String mimeType) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public void addTimedTextSource(Context context, Uri uri, String mimeType) throws IOException, IllegalArgumentException, IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public void addTimedTextSource(FileDescriptor fd2, String mimeType) throws IllegalArgumentException, IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public void addTimedTextSource(FileDescriptor fd2, long offset, long length, String mime) throws IllegalArgumentException, IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public int getSelectedTrack(int trackType) throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public void selectTrack(int index) throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public void deselectTrack(int index) throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() {
        throw new RuntimeException("Stub!");
    }

    public void setOnPreparedListener(OnPreparedListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setOnCompletionListener(OnCompletionListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setOnBufferingUpdateListener(OnBufferingUpdateListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setOnSeekCompleteListener(OnSeekCompleteListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setOnVideoSizeChangedListener(OnVideoSizeChangedListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setOnTimedTextListener(OnTimedTextListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setOnTimedMetaDataAvailableListener(OnTimedMetaDataAvailableListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setOnErrorListener(OnErrorListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setOnInfoListener(OnInfoListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setOnDrmConfigHelper(OnDrmConfigHelper listener) {
        throw new RuntimeException("Stub!");
    }

    public void setOnDrmInfoListener(OnDrmInfoListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setOnDrmInfoListener(OnDrmInfoListener listener, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void setOnDrmPreparedListener(OnDrmPreparedListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setOnDrmPreparedListener(OnDrmPreparedListener listener, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public DrmInfo getDrmInfo() {
        throw new RuntimeException("Stub!");
    }

    public void prepareDrm(UUID uuid) throws UnsupportedSchemeException, ResourceBusyException, ProvisioningNetworkErrorException, ProvisioningServerErrorException {
        throw new RuntimeException("Stub!");
    }

    public void releaseDrm() throws NoDrmSchemeException {
        throw new RuntimeException("Stub!");
    }

    public MediaDrm.KeyRequest getKeyRequest(byte[] keySetId, byte[] initData, String mimeType, int keyType, Map<String, String> optionalParameters) throws NoDrmSchemeException {
        throw new RuntimeException("Stub!");
    }

    public byte[] provideKeyResponse(byte[] keySetId, byte[] response) throws NoDrmSchemeException, DeniedByServerException {
        throw new RuntimeException("Stub!");
    }

    public void restoreKeys(byte[] keySetId) throws NoDrmSchemeException {
        throw new RuntimeException("Stub!");
    }

    public String getDrmPropertyString(String propertyName) throws NoDrmSchemeException {
        throw new RuntimeException("Stub!");
    }

    public void setDrmPropertyString(String propertyName, String value) throws NoDrmSchemeException {
        throw new RuntimeException("Stub!");
    }
}
