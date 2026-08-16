package android.media;

import android.media.AudioRouting;
import android.media.VolumeShaper;
import android.os.Handler;
import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/AudioTrack.class
 */
public class AudioTrack implements AudioRouting, VolumeAutomation {
    public static final int ERROR = -1;
    public static final int ERROR_BAD_VALUE = -2;
    public static final int ERROR_DEAD_OBJECT = -6;
    public static final int ERROR_INVALID_OPERATION = -3;
    public static final int MODE_STATIC = 0;
    public static final int MODE_STREAM = 1;
    public static final int PERFORMANCE_MODE_LOW_LATENCY = 1;
    public static final int PERFORMANCE_MODE_NONE = 0;
    public static final int PERFORMANCE_MODE_POWER_SAVING = 2;
    public static final int PLAYSTATE_PAUSED = 2;
    public static final int PLAYSTATE_PLAYING = 3;
    public static final int PLAYSTATE_STOPPED = 1;
    public static final int STATE_INITIALIZED = 1;
    public static final int STATE_NO_STATIC_DATA = 2;
    public static final int STATE_UNINITIALIZED = 0;
    public static final int SUCCESS = 0;
    public static final int WRITE_BLOCKING = 0;
    public static final int WRITE_NON_BLOCKING = 1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/AudioTrack$OnPlaybackPositionUpdateListener.class
 */
    public interface OnPlaybackPositionUpdateListener {
        void onMarkerReached(AudioTrack audioTrack);

        void onPeriodicNotification(AudioTrack audioTrack);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/AudioTrack$Builder.class
 */
    public static class Builder {
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder setAudioAttributes(AudioAttributes attributes) throws IllegalArgumentException {
            throw new RuntimeException("Stub!");
        }

        public Builder setAudioFormat(AudioFormat format) throws IllegalArgumentException {
            throw new RuntimeException("Stub!");
        }

        public Builder setBufferSizeInBytes(int bufferSizeInBytes) throws IllegalArgumentException {
            throw new RuntimeException("Stub!");
        }

        public Builder setTransferMode(int mode) throws IllegalArgumentException {
            throw new RuntimeException("Stub!");
        }

        public Builder setSessionId(int sessionId) throws IllegalArgumentException {
            throw new RuntimeException("Stub!");
        }

        public Builder setPerformanceMode(int performanceMode) {
            throw new RuntimeException("Stub!");
        }

        public AudioTrack build() throws UnsupportedOperationException {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/AudioTrack$OnRoutingChangedListener.class
 */
    @Deprecated
    public interface OnRoutingChangedListener extends AudioRouting.OnRoutingChangedListener {
        void onRoutingChanged(AudioTrack audioTrack);

        @Override
        default void onRoutingChanged(AudioRouting router) {
            throw new RuntimeException("Stub!");
        }
    }

    @Deprecated
    public AudioTrack(int streamType, int sampleRateInHz, int channelConfig, int audioFormat, int bufferSizeInBytes, int mode) throws IllegalArgumentException {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public AudioTrack(int streamType, int sampleRateInHz, int channelConfig, int audioFormat, int bufferSizeInBytes, int mode, int sessionId) throws IllegalArgumentException {
        throw new RuntimeException("Stub!");
    }

    public AudioTrack(AudioAttributes attributes, AudioFormat format, int bufferSizeInBytes, int mode, int sessionId) throws IllegalArgumentException {
        throw new RuntimeException("Stub!");
    }

    public void release() {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() {
        throw new RuntimeException("Stub!");
    }

    public static float getMinVolume() {
        throw new RuntimeException("Stub!");
    }

    public static float getMaxVolume() {
        throw new RuntimeException("Stub!");
    }

    public int getSampleRate() {
        throw new RuntimeException("Stub!");
    }

    public int getPlaybackRate() {
        throw new RuntimeException("Stub!");
    }

    public PlaybackParams getPlaybackParams() {
        throw new RuntimeException("Stub!");
    }

    public int getAudioFormat() {
        throw new RuntimeException("Stub!");
    }

    public int getStreamType() {
        throw new RuntimeException("Stub!");
    }

    public int getChannelConfiguration() {
        throw new RuntimeException("Stub!");
    }

    public AudioFormat getFormat() {
        throw new RuntimeException("Stub!");
    }

    public int getChannelCount() {
        throw new RuntimeException("Stub!");
    }

    public int getState() {
        throw new RuntimeException("Stub!");
    }

    public int getPlayState() {
        throw new RuntimeException("Stub!");
    }

    public int getBufferSizeInFrames() {
        throw new RuntimeException("Stub!");
    }

    public int setBufferSizeInFrames(int bufferSizeInFrames) {
        throw new RuntimeException("Stub!");
    }

    public int getBufferCapacityInFrames() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    protected int getNativeFrameCount() {
        throw new RuntimeException("Stub!");
    }

    public int getNotificationMarkerPosition() {
        throw new RuntimeException("Stub!");
    }

    public int getPositionNotificationPeriod() {
        throw new RuntimeException("Stub!");
    }

    public int getPlaybackHeadPosition() {
        throw new RuntimeException("Stub!");
    }

    public int getUnderrunCount() {
        throw new RuntimeException("Stub!");
    }

    public int getPerformanceMode() {
        throw new RuntimeException("Stub!");
    }

    public static int getNativeOutputSampleRate(int streamType) {
        throw new RuntimeException("Stub!");
    }

    public static int getMinBufferSize(int sampleRateInHz, int channelConfig, int audioFormat) {
        throw new RuntimeException("Stub!");
    }

    public int getAudioSessionId() {
        throw new RuntimeException("Stub!");
    }

    public boolean getTimestamp(AudioTimestamp timestamp) {
        throw new RuntimeException("Stub!");
    }

    public void setPlaybackPositionUpdateListener(OnPlaybackPositionUpdateListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setPlaybackPositionUpdateListener(OnPlaybackPositionUpdateListener listener, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public int setStereoVolume(float leftGain, float rightGain) {
        throw new RuntimeException("Stub!");
    }

    public int setVolume(float gain) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public VolumeShaper createVolumeShaper(VolumeShaper.Configuration configuration) {
        throw new RuntimeException("Stub!");
    }

    public int setPlaybackRate(int sampleRateInHz) {
        throw new RuntimeException("Stub!");
    }

    public void setPlaybackParams(PlaybackParams params) {
        throw new RuntimeException("Stub!");
    }

    public int setNotificationMarkerPosition(int markerInFrames) {
        throw new RuntimeException("Stub!");
    }

    public int setPositionNotificationPeriod(int periodInFrames) {
        throw new RuntimeException("Stub!");
    }

    public int setPlaybackHeadPosition(int positionInFrames) {
        throw new RuntimeException("Stub!");
    }

    public int setLoopPoints(int startInFrames, int endInFrames, int loopCount) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    protected void setState(int state) {
        throw new RuntimeException("Stub!");
    }

    public void play() throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public void stop() throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public void pause() throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public void flush() {
        throw new RuntimeException("Stub!");
    }

    public int write(byte[] audioData, int offsetInBytes, int sizeInBytes) {
        throw new RuntimeException("Stub!");
    }

    public int write(byte[] audioData, int offsetInBytes, int sizeInBytes, int writeMode) {
        throw new RuntimeException("Stub!");
    }

    public int write(short[] audioData, int offsetInShorts, int sizeInShorts) {
        throw new RuntimeException("Stub!");
    }

    public int write(short[] audioData, int offsetInShorts, int sizeInShorts, int writeMode) {
        throw new RuntimeException("Stub!");
    }

    public int write(float[] audioData, int offsetInFloats, int sizeInFloats, int writeMode) {
        throw new RuntimeException("Stub!");
    }

    public int write(ByteBuffer audioData, int sizeInBytes, int writeMode) {
        throw new RuntimeException("Stub!");
    }

    public int write(ByteBuffer audioData, int sizeInBytes, int writeMode, long timestamp) {
        throw new RuntimeException("Stub!");
    }

    public int reloadStaticData() {
        throw new RuntimeException("Stub!");
    }

    public int attachAuxEffect(int effectId) {
        throw new RuntimeException("Stub!");
    }

    public int setAuxEffectSendLevel(float level) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean setPreferredDevice(AudioDeviceInfo deviceInfo) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public AudioDeviceInfo getPreferredDevice() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public AudioDeviceInfo getRoutedDevice() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void addOnRoutingChangedListener(AudioRouting.OnRoutingChangedListener listener, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void removeOnRoutingChangedListener(AudioRouting.OnRoutingChangedListener listener) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void addOnRoutingChangedListener(OnRoutingChangedListener listener, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void removeOnRoutingChangedListener(OnRoutingChangedListener listener) {
        throw new RuntimeException("Stub!");
    }
}
