package android.view;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Handler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/PixelCopy.class
 */
public final class PixelCopy {
    public static final int ERROR_DESTINATION_INVALID = 5;
    public static final int ERROR_SOURCE_INVALID = 4;
    public static final int ERROR_SOURCE_NO_DATA = 3;
    public static final int ERROR_TIMEOUT = 2;
    public static final int ERROR_UNKNOWN = 1;
    public static final int SUCCESS = 0;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/PixelCopy$OnPixelCopyFinishedListener.class
 */
    public interface OnPixelCopyFinishedListener {
        void onPixelCopyFinished(int i10);
    }

    PixelCopy() {
        throw new RuntimeException("Stub!");
    }

    public static void request(SurfaceView source, Bitmap dest, OnPixelCopyFinishedListener listener, Handler listenerThread) {
        throw new RuntimeException("Stub!");
    }

    public static void request(SurfaceView source, Rect srcRect, Bitmap dest, OnPixelCopyFinishedListener listener, Handler listenerThread) {
        throw new RuntimeException("Stub!");
    }

    public static void request(Surface source, Bitmap dest, OnPixelCopyFinishedListener listener, Handler listenerThread) {
        throw new RuntimeException("Stub!");
    }

    public static void request(Surface source, Rect srcRect, Bitmap dest, OnPixelCopyFinishedListener listener, Handler listenerThread) {
        throw new RuntimeException("Stub!");
    }

    public static void request(Window source, Bitmap dest, OnPixelCopyFinishedListener listener, Handler listenerThread) {
        throw new RuntimeException("Stub!");
    }

    public static void request(Window source, Rect srcRect, Bitmap dest, OnPixelCopyFinishedListener listener, Handler listenerThread) {
        throw new RuntimeException("Stub!");
    }
}
