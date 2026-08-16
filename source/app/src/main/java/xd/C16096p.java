package xd;

public class C16096p {

    public float f128129a;

    public float f128130b;

    public float f128131c;

    public a f128132d;

    public enum a {
        TYPE_1D,
        TYPE_2D,
        TYPE_3D
    }

    public C16096p() {
        this.f128129a = 0.0f;
        this.f128130b = 0.0f;
        this.f128131c = 0.0f;
        this.f128132d = a.TYPE_2D;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C16096p)) {
            return false;
        }
        C16096p c16096p = (C16096p) obj;
        return Float.floatToRawIntBits(this.f128129a) == Float.floatToRawIntBits(c16096p.f128129a) && Float.floatToRawIntBits(this.f128130b) == Float.floatToRawIntBits(c16096p.f128130b) && Float.floatToRawIntBits(this.f128131c) == Float.floatToRawIntBits(c16096p.f128131c) && this.f128132d == c16096p.f128132d;
    }

    public int hashCode() {
        return (((((Float.floatToRawIntBits(this.f128129a) * 31) + Float.floatToRawIntBits(this.f128130b)) * 31) + Float.floatToRawIntBits(this.f128131c)) * 31) + this.f128132d.hashCode();
    }

    public C16096p(float f10) {
        this.f128129a = 0.0f;
        this.f128130b = 0.0f;
        this.f128131c = 0.0f;
        this.f128132d = a.TYPE_2D;
        this.f128129a = f10;
        this.f128132d = a.TYPE_1D;
    }

    public C16096p(float f10, float f11) {
        this.f128129a = 0.0f;
        this.f128130b = 0.0f;
        this.f128131c = 0.0f;
        a aVar = a.TYPE_2D;
        this.f128129a = f10;
        this.f128130b = f11;
        this.f128132d = aVar;
    }

    public C16096p(float f10, float f11, float f12) {
        this.f128129a = 0.0f;
        this.f128130b = 0.0f;
        this.f128131c = 0.0f;
        this.f128132d = a.TYPE_2D;
        this.f128129a = f10;
        this.f128130b = f11;
        this.f128131c = f12;
        this.f128132d = a.TYPE_3D;
    }

    public C16096p(C16096p c16096p) {
        this.f128129a = 0.0f;
        this.f128130b = 0.0f;
        this.f128131c = 0.0f;
        this.f128132d = a.TYPE_2D;
        this.f128129a = c16096p.f128129a;
        this.f128130b = c16096p.f128130b;
        this.f128131c = c16096p.f128131c;
        this.f128132d = c16096p.f128132d;
    }
}
