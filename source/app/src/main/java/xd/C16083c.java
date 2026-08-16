package xd;

public class C16083c {

    public float f128088a;

    public float f128089b;

    public float f128090c;

    public C16083c() {
        this.f128088a = 0.0f;
        this.f128089b = 0.0f;
        this.f128090c = 0.0f;
    }

    public void a(float f10, float f11, float f12) {
        this.f128088a = f10;
        this.f128089b = f11;
        this.f128090c = f12;
    }

    public void b(C16083c c16083c) {
        this.f128088a = c16083c.f128088a;
        this.f128089b = c16083c.f128089b;
        this.f128090c = c16083c.f128090c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C16083c)) {
            return false;
        }
        C16083c c16083c = (C16083c) obj;
        return Float.floatToRawIntBits(this.f128088a) == Float.floatToRawIntBits(c16083c.f128088a) && Float.floatToRawIntBits(this.f128089b) == Float.floatToRawIntBits(c16083c.f128089b) && Float.floatToRawIntBits(this.f128090c) == Float.floatToRawIntBits(c16083c.f128090c);
    }

    public int hashCode() {
        return (((Float.floatToRawIntBits(this.f128088a) * 31) + Float.floatToRawIntBits(this.f128089b)) * 31) + Float.floatToRawIntBits(this.f128090c);
    }

    public C16083c(float f10, float f11, float f12) {
        this.f128088a = f10;
        this.f128089b = f11;
        this.f128090c = f12;
    }

    public C16083c(C16083c c16083c) {
        this.f128088a = 0.0f;
        this.f128089b = 0.0f;
        this.f128090c = 0.0f;
        this.f128088a = c16083c.f128088a;
        this.f128089b = c16083c.f128089b;
        this.f128090c = c16083c.f128090c;
    }
}
