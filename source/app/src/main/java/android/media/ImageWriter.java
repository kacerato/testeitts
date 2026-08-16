package android.media;

import android.os.Handler;
import android.view.Surface;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/ImageWriter.class
 */
public class ImageWriter implements AutoCloseable {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/ImageWriter$OnImageReleasedListener.class
 */
    public interface OnImageReleasedListener {
        void onImageReleased(ImageWriter imageWriter);
    }

    ImageWriter() {
        throw new RuntimeException("Stub!");
    }

    public static ImageWriter newInstance(Surface surface, int maxImages) {
        throw new RuntimeException("Stub!");
    }

    public int getMaxImages() {
        throw new RuntimeException("Stub!");
    }

    public Image dequeueInputImage() {
        throw new RuntimeException("Stub!");
    }

    public void queueInputImage(Image image) {
        throw new RuntimeException("Stub!");
    }

    public int getFormat() {
        throw new RuntimeException("Stub!");
    }

    public void setOnImageReleasedListener(OnImageReleasedListener listener, Handler handler) {
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
