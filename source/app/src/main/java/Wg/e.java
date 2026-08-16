package Wg;

@Deprecated
public class e {
    public static float[] a(float[] array, float scale) {
        if (array == null) {
            return null;
        }
        float[] fArr = new float[array.length];
        for (int i10 = 0; i10 < array.length; i10++) {
            fArr[i10] = array[i10] * scale;
        }
        return fArr;
    }
}
