package android.media.audiofx;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/audiofx/Visualizer.class
 */
public class Visualizer {
    public static final int ALREADY_EXISTS = -2;
    public static final int ERROR = -1;
    public static final int ERROR_BAD_VALUE = -4;
    public static final int ERROR_DEAD_OBJECT = -7;
    public static final int ERROR_INVALID_OPERATION = -5;
    public static final int ERROR_NO_INIT = -3;
    public static final int ERROR_NO_MEMORY = -6;
    public static final int MEASUREMENT_MODE_NONE = 0;
    public static final int MEASUREMENT_MODE_PEAK_RMS = 1;
    public static final int SCALING_MODE_AS_PLAYED = 1;
    public static final int SCALING_MODE_NORMALIZED = 0;
    public static final int STATE_ENABLED = 2;
    public static final int STATE_INITIALIZED = 1;
    public static final int STATE_UNINITIALIZED = 0;
    public static final int SUCCESS = 0;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/audiofx/Visualizer$OnDataCaptureListener.class
 */
    public interface OnDataCaptureListener {
        void onWaveFormDataCapture(Visualizer visualizer, byte[] bArr, int i10);

        void onFftDataCapture(Visualizer visualizer, byte[] bArr, int i10);
    }

    public static native int[] getCaptureSizeRange();

    public static native int getMaxCaptureRate();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/audiofx/Visualizer$MeasurementPeakRms.class
 */
    public static final class MeasurementPeakRms {
        public int mPeak;
        public int mRms;

        public MeasurementPeakRms() {
            throw new RuntimeException("Stub!");
        }
    }

    public Visualizer(int audioSession) throws UnsupportedOperationException, RuntimeException {
        throw new RuntimeException("Stub!");
    }

    public void release() {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() {
        throw new RuntimeException("Stub!");
    }

    public int setEnabled(boolean enabled) throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public boolean getEnabled() {
        throw new RuntimeException("Stub!");
    }

    public int setCaptureSize(int size) throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public int getCaptureSize() throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public int setScalingMode(int mode) throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public int getScalingMode() throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public int setMeasurementMode(int mode) throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public int getMeasurementMode() throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public int getSamplingRate() throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public int getWaveForm(byte[] waveform) throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public int getFft(byte[] fft) throws IllegalStateException {
        throw new RuntimeException("Stub!");
    }

    public int getMeasurementPeakRms(MeasurementPeakRms measurement) {
        throw new RuntimeException("Stub!");
    }

    public int setDataCaptureListener(OnDataCaptureListener listener, int rate, boolean waveform, boolean fft) {
        throw new RuntimeException("Stub!");
    }
}
