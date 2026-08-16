package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:NativeFloatBuffer.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:NativeFloatBuffer.class
  classes.dex
 */
@ClassCategory(cat = {"Buffers"})
public class NativeFloatBuffer {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:NativeFloatBuffer$Precision.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:NativeFloatBuffer$Precision.class
  classes.dex
 */
    public enum Precision {
        SIGNED_BYTE_NORMALIZED,
        NORMAL_VECTOR,
        UNSIGNED_BYTE_NORMALIZED,
        COLOR,
        UNSIGNED_BYTE,
        FLOAT16,
        FLOAT32;

        public static Precision[] valuesCustom() {
            Precision[] valuesCustom = values();
            int length = valuesCustom.length;
            Precision[] precisionArr = new Precision[length];
            java.lang.System.arraycopy(valuesCustom, 0, precisionArr, 0, length);
            return precisionArr;
        }
    }

    public NativeFloatBuffer(int i10) {
    }

    public NativeFloatBuffer(int i10, Precision precision) {
    }

    public NativeFloatBuffer(float[] fArr) {
    }

    public NativeFloatBuffer(float[] fArr, Precision precision) {
    }

    public static NativeFloatBuffer readFile(File file) {
        return null;
    }

    public float get(int i10) {
        return 0.0f;
    }

    public void get(float[] fArr) {
    }

    public void get(float[] fArr, int i10) {
    }

    public void get(int i10, float[] fArr) {
    }

    public void get(int i10, float[] fArr, int i11, int i12) {
    }

    public void get(int i10, Vector3 vector3) {
    }

    public void set(int i10, float f10) {
    }

    public void set(int i10, Vector4 vector4) {
    }

    public void set(int i10, Vector3 vector3) {
    }

    public void set(int i10, float f10, float f11, float f12) {
    }

    public void set(int i10, float f10, float f11, float f12, float f13) {
    }

    public void set(int i10, float f10, float f11) {
    }

    public void set(int i10, NativeFloatBuffer nativeFloatBuffer) {
    }

    public void set(int i10, NativeFloatBuffer nativeFloatBuffer, int i11, int i12) {
    }

    public void set(float[] fArr) {
    }

    public void set(float[] fArr, int i10) {
    }

    public void set(int i10, float[] fArr) {
    }

    public void set(int i10, float[] fArr, int i11, int i12) {
    }

    public void fill(float f10) {
    }

    public void fill(int i10, float f10, int i11) {
    }

    public void putFill(float f10, int i10) {
    }

    public void put(float f10) {
    }

    public void put(float[] fArr) {
    }

    public void put(short[] sArr) {
    }

    public void put(NativeFloatBuffer nativeFloatBuffer) {
    }

    public void put(NativeFloatBuffer nativeFloatBuffer, int i10) {
    }

    public void put(Vector3 vector3) {
    }

    public void put(Vector2 vector2) {
    }

    public void put(float f10, float f11, float f12) {
    }

    public void put(float f10, float f11) {
    }

    public void saveToFile(File file) {
    }

    public int capacity() {
        return 0;
    }

    public int getCapacity() {
        return 0;
    }

    public int getPosition() {
        return 0;
    }

    public int position(int i10) {
        return i10;
    }

    public void setPosition(int i10) {
    }

    public NativeFloatBuffer concat(NativeFloatBuffer nativeFloatBuffer) {
        return null;
    }

    public NativeFloatBuffer concatAndDestroyItselfImmediate(NativeFloatBuffer nativeFloatBuffer) {
        return null;
    }

    public boolean equalsNative(NativeFloatBuffer nativeFloatBuffer) {
        return false;
    }

    public float[] toArray() {
        return null;
    }

    public void fillArray(float[] fArr) {
    }

    public boolean validate() {
        return false;
    }

    public NativeFloatBuffer m27clone() {
        return null;
    }

    public boolean hasNext() {
        return false;
    }

    public void destroy() {
    }

    public void destroyImmediate() {
    }

    public Precision getPrecision() {
        return null;
    }
}
