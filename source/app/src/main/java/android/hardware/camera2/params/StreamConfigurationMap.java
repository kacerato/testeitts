package android.hardware.camera2.params;

import android.util.Range;
import android.util.Size;
import android.view.Surface;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/camera2/params/StreamConfigurationMap.class
 */
public final class StreamConfigurationMap {
    StreamConfigurationMap() {
        throw new RuntimeException("Stub!");
    }

    public final int[] getOutputFormats() {
        throw new RuntimeException("Stub!");
    }

    public final int[] getValidOutputFormatsForInput(int inputFormat) {
        throw new RuntimeException("Stub!");
    }

    public final int[] getInputFormats() {
        throw new RuntimeException("Stub!");
    }

    public Size[] getInputSizes(int format) {
        throw new RuntimeException("Stub!");
    }

    public boolean isOutputSupportedFor(int format) {
        throw new RuntimeException("Stub!");
    }

    public static <T> boolean isOutputSupportedFor(Class<T> klass) {
        throw new RuntimeException("Stub!");
    }

    public boolean isOutputSupportedFor(Surface surface) {
        throw new RuntimeException("Stub!");
    }

    public <T> Size[] getOutputSizes(Class<T> klass) {
        throw new RuntimeException("Stub!");
    }

    public Size[] getOutputSizes(int format) {
        throw new RuntimeException("Stub!");
    }

    public Size[] getHighSpeedVideoSizes() {
        throw new RuntimeException("Stub!");
    }

    public Range<Integer>[] getHighSpeedVideoFpsRangesFor(Size size) {
        throw new RuntimeException("Stub!");
    }

    public Range<Integer>[] getHighSpeedVideoFpsRanges() {
        throw new RuntimeException("Stub!");
    }

    public Size[] getHighSpeedVideoSizesFor(Range<Integer> fpsRange) {
        throw new RuntimeException("Stub!");
    }

    public Size[] getHighResolutionOutputSizes(int format) {
        throw new RuntimeException("Stub!");
    }

    public long getOutputMinFrameDuration(int format, Size size) {
        throw new RuntimeException("Stub!");
    }

    public <T> long getOutputMinFrameDuration(Class<T> klass, Size size) {
        throw new RuntimeException("Stub!");
    }

    public long getOutputStallDuration(int format, Size size) {
        throw new RuntimeException("Stub!");
    }

    public <T> long getOutputStallDuration(Class<T> klass, Size size) {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
