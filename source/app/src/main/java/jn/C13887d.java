package jn;

public class C13887d implements L {

    public int f94242a;

    public int f94243b;

    public final float[] f94244c;

    public C13887d() {
        this.f94244c = new float[64];
        this.f94243b = 65535;
        this.f94242a = 0;
        for (int i10 = 0; i10 < 64; i10++) {
            this.f94244c[i10] = 1.0f;
        }
    }

    @Override
    public float a(float[] pa2, float[] pb2, long prevRef, C13901s prevTile, G prevPoly, long curRef, C13901s curTile, G curPoly, long nextRef, C13901s nextTile, G nextPoly) {
        return C13890g.z(pa2, pb2) * this.f94244c[curPoly.a()];
    }

    @Override
    public boolean b(long ref, C13901s tile, G poly) {
        int i10 = poly.f94179d;
        return (this.f94243b & i10) != 0 && (i10 & this.f94242a) == 0;
    }

    public int c() {
        return this.f94242a;
    }

    public int d() {
        return this.f94243b;
    }

    public void e(int flags) {
        this.f94242a = flags;
    }

    public void f(int flags) {
        this.f94243b = flags;
    }

    public C13887d(int includeFlags, int excludeFlags, float[] areaCost) {
        this.f94244c = new float[64];
        this.f94243b = includeFlags;
        this.f94242a = excludeFlags;
        for (int i10 = 0; i10 < Math.min(64, areaCost.length); i10++) {
            this.f94244c[i10] = areaCost[i10];
        }
        for (int length = areaCost.length; length < 64; length++) {
            this.f94244c[length] = 1.0f;
        }
    }
}
