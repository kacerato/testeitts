package android.media;

import android.os.Handler;
import android.view.Surface;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/ImageReader.class
 */
public class ImageReader implements AutoCloseable {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/ImageReader$OnImageAvailableListener.class
 */
    public interface OnImageAvailableListener {
        void onImageAvailable(ImageReader imageReader);
    }

    ImageReader() {
        throw new RuntimeException("Stub!");
    }

    public static ImageReader newInstance(int width, int height, int format, int maxImages) {
        throw new RuntimeException("Stub!");
    }

    public int getWidth() {
        throw new RuntimeException("Stub!");
    }

    public int getHeight() {
        throw new RuntimeException("Stub!");
    }

    public int getImageFormat() {
        throw new RuntimeException("Stub!");
    }

    public int getMaxImages() {
        throw new RuntimeException("Stub!");
    }

    public Surface getSurface() {
        throw new RuntimeException("Stub!");
    }

    public Image acquireLatestImage() {
        throw new RuntimeException("Stub!");
    }

    public Image acquireNextImage() {
        throw new RuntimeException("Stub!");
    }

    public void setOnImageAvailableListener(OnImageAvailableListener listener, Handler handler) {
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
