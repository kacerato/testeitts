package Kc;

public class b {

    public final short[] f11111a;

    public b(int size) {
        this.f11111a = new short[size];
    }

    public b a(b other) {
        b(other);
        b bVar = new b(i());
        for (int i10 = 0; i10 < this.f11111a.length; i10++) {
            bVar.g(i10, c(i10) + other.c(i10));
        }
        return bVar;
    }

    public final void b(b other) {
        if (i() != other.i()) {
            throw new IllegalArgumentException("Arrays must be of the same size");
        }
    }

    public float c(int index) {
        return a.f(this.f11111a[index]);
    }

    public short d(int index) {
        return this.f11111a[index];
    }

    public short[] e() {
        return this.f11111a;
    }

    public b f(b other) {
        b(other);
        b bVar = new b(i());
        for (int i10 = 0; i10 < this.f11111a.length; i10++) {
            bVar.g(i10, c(i10) * other.c(i10));
        }
        return bVar;
    }

    public void g(int index, float value) {
        this.f11111a[index] = a.c(value);
    }

    public void h(int index, short bits) {
        this.f11111a[index] = bits;
    }

    public int i() {
        return this.f11111a.length;
    }

    public b(float[] floatArray) {
        this.f11111a = new short[floatArray.length];
        for (int i10 = 0; i10 < floatArray.length; i10++) {
            this.f11111a[i10] = a.c(floatArray[i10]);
        }
    }
}
