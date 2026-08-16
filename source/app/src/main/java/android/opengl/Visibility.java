package android.opengl;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/opengl/Visibility.class
 */
public class Visibility {
    public static native int visibilityTest(float[] fArr, int i10, float[] fArr2, int i11, char[] cArr, int i12, int i13);

    public static native int frustumCullSpheres(float[] fArr, int i10, float[] fArr2, int i11, int i12, int[] iArr, int i13, int i14);

    public static native void computeBoundingSphere(float[] fArr, int i10, int i11, float[] fArr2, int i12);

    public Visibility() {
        throw new RuntimeException("Stub!");
    }
}
