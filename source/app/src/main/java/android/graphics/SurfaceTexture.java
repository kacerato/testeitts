package android.graphics;

import android.os.Handler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/SurfaceTexture.class
 */
public class SurfaceTexture {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/SurfaceTexture$OnFrameAvailableListener.class
 */
    public interface OnFrameAvailableListener {
        void onFrameAvailable(SurfaceTexture surfaceTexture);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/SurfaceTexture$OutOfResourcesException.class
 */
    @Deprecated
    public static class OutOfResourcesException extends Exception {
        public OutOfResourcesException() {
            throw new RuntimeException("Stub!");
        }

        public OutOfResourcesException(String name) {
            throw new RuntimeException("Stub!");
        }
    }

    public SurfaceTexture(int texName) {
        throw new RuntimeException("Stub!");
    }

    public SurfaceTexture(int texName, boolean singleBufferMode) {
        throw new RuntimeException("Stub!");
    }

    public SurfaceTexture(boolean singleBufferMode) {
        throw new RuntimeException("Stub!");
    }

    public void setOnFrameAvailableListener(OnFrameAvailableListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setOnFrameAvailableListener(OnFrameAvailableListener listener, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public void setDefaultBufferSize(int width, int height) {
        throw new RuntimeException("Stub!");
    }

    public void updateTexImage() {
        throw new RuntimeException("Stub!");
    }

    public void releaseTexImage() {
        throw new RuntimeException("Stub!");
    }

    public void detachFromGLContext() {
        throw new RuntimeException("Stub!");
    }

    public void attachToGLContext(int texName) {
        throw new RuntimeException("Stub!");
    }

    public void getTransformMatrix(float[] mtx) {
        throw new RuntimeException("Stub!");
    }

    public long getTimestamp() {
        throw new RuntimeException("Stub!");
    }

    public void release() {
        throw new RuntimeException("Stub!");
    }

    public boolean isReleased() {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }
}
