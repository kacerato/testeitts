package android.view;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/Surface.class
 */
public class Surface implements Parcelable {
    public static final Parcelable.Creator<Surface> CREATOR = null;
    public static final int ROTATION_0 = 0;
    public static final int ROTATION_180 = 2;
    public static final int ROTATION_270 = 3;
    public static final int ROTATION_90 = 1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/Surface$OutOfResourcesException.class
 */
    public static class OutOfResourcesException extends RuntimeException {
        public OutOfResourcesException() {
            throw new RuntimeException("Stub!");
        }

        public OutOfResourcesException(String name) {
            throw new RuntimeException("Stub!");
        }
    }

    public Surface(SurfaceTexture surfaceTexture) {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }

    public void release() {
        throw new RuntimeException("Stub!");
    }

    public boolean isValid() {
        throw new RuntimeException("Stub!");
    }

    public Canvas lockCanvas(Rect inOutDirty) throws OutOfResourcesException, IllegalArgumentException {
        throw new RuntimeException("Stub!");
    }

    public void unlockCanvasAndPost(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    public Canvas lockHardwareCanvas() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void unlockCanvas(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int describeContents() {
        throw new RuntimeException("Stub!");
    }

    public void readFromParcel(Parcel source) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
