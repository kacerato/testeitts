package android.view;

import android.graphics.Canvas;
import android.graphics.Rect;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/SurfaceHolder.class
 */
public interface SurfaceHolder {

    @Deprecated
    public static final int SURFACE_TYPE_GPU = 2;

    @Deprecated
    public static final int SURFACE_TYPE_HARDWARE = 1;

    @Deprecated
    public static final int SURFACE_TYPE_NORMAL = 0;

    @Deprecated
    public static final int SURFACE_TYPE_PUSH_BUFFERS = 3;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/SurfaceHolder$Callback.class
 */
    public interface Callback {
        void surfaceCreated(SurfaceHolder surfaceHolder);

        void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12);

        void surfaceDestroyed(SurfaceHolder surfaceHolder);
    }

    void addCallback(Callback callback);

    void removeCallback(Callback callback);

    boolean isCreating();

    @Deprecated
    void setType(int i10);

    void setFixedSize(int i10, int i11);

    void setSizeFromLayout();

    void setFormat(int i10);

    void setKeepScreenOn(boolean z10);

    Canvas lockCanvas();

    Canvas lockCanvas(Rect rect);

    void unlockCanvasAndPost(Canvas canvas);

    Rect getSurfaceFrame();

    Surface getSurface();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/SurfaceHolder$BadSurfaceTypeException.class
 */
    public static class BadSurfaceTypeException extends RuntimeException {
        public BadSurfaceTypeException() {
            throw new RuntimeException("Stub!");
        }

        public BadSurfaceTypeException(String name) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/SurfaceHolder$Callback2.class
 */
    public interface Callback2 extends Callback {
        void surfaceRedrawNeeded(SurfaceHolder surfaceHolder);

        default void surfaceRedrawNeededAsync(SurfaceHolder holder, Runnable drawingFinished) {
            throw new RuntimeException("Stub!");
        }
    }

    default Canvas lockHardwareCanvas() {
        throw new RuntimeException("Stub!");
    }
}
