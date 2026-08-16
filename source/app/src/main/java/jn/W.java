package jn;

public class W {

    public final float[] f94234a;

    public final int f94235b;

    public W(float[] array) {
        this(array, 0);
    }

    public float a(int offset) {
        return this.f94234a[this.f94235b + offset];
    }

    public W(float[] array, int index) {
        this.f94234a = array;
        this.f94235b = index;
    }
}
