package android.hardware.camera2;

import android.graphics.Bitmap;
import android.location.Location;
import android.media.Image;
import android.util.Size;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/hardware/camera2/DngCreator.class
 */
public final class DngCreator implements AutoCloseable {
    public static final int MAX_THUMBNAIL_DIMENSION = 256;

    public DngCreator(CameraCharacteristics characteristics, CaptureResult metadata) {
        throw new RuntimeException("Stub!");
    }

    public DngCreator setOrientation(int orientation) {
        throw new RuntimeException("Stub!");
    }

    public DngCreator setThumbnail(Bitmap pixels) {
        throw new RuntimeException("Stub!");
    }

    public DngCreator setThumbnail(Image pixels) {
        throw new RuntimeException("Stub!");
    }

    public DngCreator setLocation(Location location) {
        throw new RuntimeException("Stub!");
    }

    public DngCreator setDescription(String description) {
        throw new RuntimeException("Stub!");
    }

    public void writeInputStream(OutputStream dngOutput, Size size, InputStream pixels, long offset) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void writeByteBuffer(OutputStream dngOutput, Size size, ByteBuffer pixels, long offset) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void writeImage(OutputStream dngOutput, Image pixels) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }
}
