package jn;

public class C13888e implements M {

    public final float f94245a;

    public C13888e() {
        this(0.999f);
    }

    @Override
    public float a(float[] neighbourPos, float[] endPos) {
        return C13890g.z(neighbourPos, endPos) * this.f94245a;
    }

    public C13888e(float scale) {
        this.f94245a = scale;
    }
}
