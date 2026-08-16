package android.media;

import android.graphics.Rect;
import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/Image.class
 */
public abstract class Image implements AutoCloseable {
    public abstract int getFormat();

    public abstract int getWidth();

    public abstract int getHeight();

    public abstract long getTimestamp();

    public abstract Plane[] getPlanes();

    @Override
    public abstract void close();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/media/Image$Plane.class
 */
    public static abstract class Plane {
        public abstract int getRowStride();

        public abstract int getPixelStride();

        public abstract ByteBuffer getBuffer();

        Plane() {
            throw new RuntimeException("Stub!");
        }
    }

    Image() {
        throw new RuntimeException("Stub!");
    }

    public void setTimestamp(long timestamp) {
        throw new RuntimeException("Stub!");
    }

    public Rect getCropRect() {
        throw new RuntimeException("Stub!");
    }

    public void setCropRect(Rect cropRect) {
        throw new RuntimeException("Stub!");
    }
}
