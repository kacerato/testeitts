package android.opengl;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/opengl/Matrix.class
 */
public class Matrix {
    public static native void multiplyMM(float[] fArr, int i10, float[] fArr2, int i11, float[] fArr3, int i12);

    public static native void multiplyMV(float[] fArr, int i10, float[] fArr2, int i11, float[] fArr3, int i12);

    @Deprecated
    public Matrix() {
        throw new RuntimeException("Stub!");
    }

    public static void transposeM(float[] mTrans, int mTransOffset, float[] m10, int mOffset) {
        throw new RuntimeException("Stub!");
    }

    public static boolean invertM(float[] mInv, int mInvOffset, float[] m10, int mOffset) {
        throw new RuntimeException("Stub!");
    }

    public static void orthoM(float[] m10, int mOffset, float left, float right, float bottom, float top, float near, float far) {
        throw new RuntimeException("Stub!");
    }

    public static void frustumM(float[] m10, int offset, float left, float right, float bottom, float top, float near, float far) {
        throw new RuntimeException("Stub!");
    }

    public static void perspectiveM(float[] m10, int offset, float fovy, float aspect, float zNear, float zFar) {
        throw new RuntimeException("Stub!");
    }

    public static float length(float x10, float y10, float z10) {
        throw new RuntimeException("Stub!");
    }

    public static void setIdentityM(float[] sm2, int smOffset) {
        throw new RuntimeException("Stub!");
    }

    public static void scaleM(float[] sm2, int smOffset, float[] m10, int mOffset, float x10, float y10, float z10) {
        throw new RuntimeException("Stub!");
    }

    public static void scaleM(float[] m10, int mOffset, float x10, float y10, float z10) {
        throw new RuntimeException("Stub!");
    }

    public static void translateM(float[] tm2, int tmOffset, float[] m10, int mOffset, float x10, float y10, float z10) {
        throw new RuntimeException("Stub!");
    }

    public static void translateM(float[] m10, int mOffset, float x10, float y10, float z10) {
        throw new RuntimeException("Stub!");
    }

    public static void rotateM(float[] rm2, int rmOffset, float[] m10, int mOffset, float a10, float x10, float y10, float z10) {
        throw new RuntimeException("Stub!");
    }

    public static void rotateM(float[] m10, int mOffset, float a10, float x10, float y10, float z10) {
        throw new RuntimeException("Stub!");
    }

    public static void setRotateM(float[] rm2, int rmOffset, float a10, float x10, float y10, float z10) {
        throw new RuntimeException("Stub!");
    }

    public static void setRotateEulerM(float[] rm2, int rmOffset, float x10, float y10, float z10) {
        throw new RuntimeException("Stub!");
    }

    public static void setLookAtM(float[] rm2, int rmOffset, float eyeX, float eyeY, float eyeZ, float centerX, float centerY, float centerZ, float upX, float upY, float upZ) {
        throw new RuntimeException("Stub!");
    }
}
