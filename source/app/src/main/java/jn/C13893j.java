package jn;

public class C13893j implements I {

    public final A f94259a;

    public final float[] f94260b;

    public long f94261c;

    public float[] f94262d;

    public boolean f94263e;

    public float f94264f = Float.MAX_VALUE;

    public C13893j(A query, float[] center) {
        this.f94259a = query;
        this.f94260b = center;
        this.f94262d = new float[]{center[0], center[1], center[2]};
    }

    @Override
    public void a(C13901s tile, G poly, long ref) {
        float L10;
        O<C13885b> d10 = this.f94259a.d(ref, this.f94260b);
        boolean b10 = d10.f94204a.b();
        float[] a10 = d10.f94204a.a();
        float[] W10 = C13890g.W(this.f94260b, a10);
        if (b10) {
            float abs = Math.abs(W10[1]) - tile.f94321c.f94282a.f94315r;
            L10 = 0.0f;
            if (abs > 0.0f) {
                L10 = abs * abs;
            }
        } else {
            L10 = C13890g.L(W10);
        }
        if (L10 < this.f94264f) {
            this.f94262d = a10;
            this.f94264f = L10;
            this.f94261c = ref;
            this.f94263e = b10;
        }
    }

    public C13894k b() {
        return new C13894k(this.f94261c, this.f94262d, this.f94263e);
    }
}
