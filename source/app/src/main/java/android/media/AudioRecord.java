package android.media;

import android.media.AudioRouting;
import android.os.Handler;
import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/AudioRecord.class
 */
public class AudioRecord implements AudioRouting {
    public static final int ERROR = -1;
    public static final int ERROR_BAD_VALUE = -2;
    public static final int ERROR_DEAD_OBJECT = -6;
    public static final int ERROR_INVALID_OPERATION = -3;
    public static final int READ_BLOCKING = 0;
    public static final int READ_NON_BLOCKING = 1;
    public static final int RECORDSTATE_RECORDING = 3;
    public static final int RECORDSTATE_STOPPED = 1;
    public static final int STATE_INITIALIZED = 1;
    public static final int STATE_UNINITIALIZED = 0;
    public static final int SUCCESS = 0;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/AudioRecord$OnRecordPositionUpdateListener.class
 */
    public interface OnRecordPositionUpdateListener {
        void onMarkerReached(AudioRecord audioRecord);

        void onPeriodicNotification(AudioRecord audioRecord);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/AudioRecord$Builder.class
 */
    public static class Builder {
        public Builder() {
            throw new RuntimeException("Stub!");
        }

        public Builder setAudioSource(int source) throws IllegalArgumentException {
            throw new RuntimeException("Stub!");
        }

        public Builder setAudioFormat(AudioFormat format) throws IllegalArgumentException {
            throw new RuntimeException("Stub!");
        }

        public Builder setBufferSizeInBytes(int bufferSizeInBytes) throws IllegalArgumentException {
            throw new RuntimeException("Stub!");
        }

        public AudioRecord build() throws UnsupportedOperationException {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/AudioRecord$OnRoutingChangedListener.class
 */
    @Deprecated
    public interface OnRoutingChangedListener extends AudioRouting.OnRoutingChangedListener {
        void onRoutingChanged(AudioRecord audioRecord);

        @Override
        default void onRoutingChanged(AudioRouting router) {
            throw new RuntimeException("Stub!");
        }
    }

    public AudioRecord(int audioSource, int sampleRateInHz, int channelConfig, int audioFormat, int bufferSizeInBytes) throws IllegalArgumentException {
        throw new RuntimeException("Stub!");
    }

    public void release() {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() {
        throw new RuntimeException("Stub!");
    }

    public int getSampleRate() {
        throw new RuntimeException("Stub!");
    }

    public int getAudioSource() {
        throw new RuntimeException("Stub!");
    }

    public int getAudioFormat() {
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

    public int getRecordingState() {
        throw new RuntimeException("Stub!");
    }

    public int getBufferSizeInFrames() {
        throw new RuntimeException("Stub!");
    }

    public int getNotificationMarkerPosition() {
        throw new RuntimeException("Stub!");
    }

    public int getPositionNotificationPeriod() {
        throw new RuntimeException("Stub!");
    }

    public int getTimestamp(AudioTimestamp outTimestamp, int timebase) {
        throw new RuntimeException("Stub!");
    }

    public static int getMinBufferSize(int sampleRateInHz, int channelConfig, int audioFormat) {
        throw new RuntimeException("Stub!");
    }

    public int getAudioSessionId() {
        throw new RuntimeException("Stub!");
    }

    public void startRecording() throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public void startRecording(MediaSyncEvent syncEvent) throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public void stop() throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public int read(byte[] audioData, int offsetInBytes, int sizeInBytes) {
        throw new RuntimeException("Stub!");
    }

    public int read(byte[] audioData, int offsetInBytes, int sizeInBytes, int readMode) {
        throw new RuntimeException("Stub!");
    }

    public int read(short[] audioData, int offsetInShorts, int sizeInShorts) {
        throw new RuntimeException("Stub!");
    }

    public int read(short[] audioData, int offsetInShorts, int sizeInShorts, int readMode) {
        throw new RuntimeException("Stub!");
    }

    public int read(float[] audioData, int offsetInFloats, int sizeInFloats, int readMode) {
        throw new RuntimeException("Stub!");
    }

    public int read(ByteBuffer audioBuffer, int sizeInBytes) {
        throw new RuntimeException("Stub!");
    }

    public int read(ByteBuffer audioBuffer, int sizeInBytes, int readMode) {
        throw new RuntimeException("Stub!");
    }

    public void setRecordPositionUpdateListener(OnRecordPositionUpdateListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setRecordPositionUpdateListener(OnRecordPositionUpdateListener listener, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public int setNotificationMarkerPosition(int markerInFrames) {
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

    public int setPositionNotificationPeriod(int periodInFrames) {
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
}
