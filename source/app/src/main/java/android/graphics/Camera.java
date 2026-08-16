package android.graphics;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/Camera.class
 */
public class Camera {
    public native void save();

    public native void restore();

    public native void translate(float f10, float f11, float f12);

    public native void rotateX(float f10);

    public native void rotateY(float f10);

    public native void rotateZ(float f10);

    public native void rotate(float f10, float f11, float f12);

    public native float getLocationX();

    public native float getLocationY();

    public native float getLocationZ();

    public native void setLocation(float f10, float f11, float f12);

    public native float dotWithNormal(float f10, float f11, float f12);

    public Camera() {
        throw new RuntimeException("Stub!");
    }

    public void getMatrix(Matrix matrix) {
        throw new RuntimeException("Stub!");
    }

    public void applyToCanvas(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }
}
