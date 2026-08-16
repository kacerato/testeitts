package android.hardware;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/HardwareBuffer.class
 */
public final class HardwareBuffer implements Parcelable, AutoCloseable {
    public static final int BLOB = 33;
    public static final Parcelable.Creator<HardwareBuffer> CREATOR = null;
    public static final int RGBA_1010102 = 43;
    public static final int RGBA_8888 = 1;
    public static final int RGBA_FP16 = 22;
    public static final int RGBX_8888 = 2;
    public static final int RGB_565 = 4;
    public static final int RGB_888 = 3;
    public static final long USAGE_CPU_READ_OFTEN = 3;
    public static final long USAGE_CPU_READ_RARELY = 2;
    public static final long USAGE_CPU_WRITE_OFTEN = 48;
    public static final long USAGE_CPU_WRITE_RARELY = 32;
    public static final long USAGE_GPU_COLOR_OUTPUT = 512;
    public static final long USAGE_GPU_DATA_BUFFER = 16777216;
    public static final long USAGE_GPU_SAMPLED_IMAGE = 256;
    public static final long USAGE_PROTECTED_CONTENT = 16384;
    public static final long USAGE_SENSOR_DIRECT_DATA = 8388608;
    public static final long USAGE_VIDEO_ENCODE = 65536;

    HardwareBuffer() {
        throw new RuntimeException("Stub!");
    }

    public static HardwareBuffer create(int width, int height, int format, int layers, long usage) {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }

    public int getWidth() {
        throw new RuntimeException("Stub!");
    }

    public int getHeight() {
        throw new RuntimeException("Stub!");
    }

    public int getFormat() {
        throw new RuntimeException("Stub!");
    }

    public int getLayers() {
        throw new RuntimeException("Stub!");
    }

    public long getUsage() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() {
        throw new RuntimeException("Stub!");
    }

    public boolean isClosed() {
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
}
