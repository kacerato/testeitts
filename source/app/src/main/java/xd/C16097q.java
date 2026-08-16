package xd;

public class C16097q {

    public float f128133a;

    public float f128134b;

    public float f128135c;

    public C16097q() {
        this.f128133a = 0.0f;
        this.f128134b = 0.0f;
        this.f128135c = 0.0f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C16097q)) {
            return false;
        }
        C16097q c16097q = (C16097q) obj;
        return Float.floatToRawIntBits(this.f128133a) == Float.floatToRawIntBits(c16097q.f128133a) && Float.floatToRawIntBits(this.f128134b) == Float.floatToRawIntBits(c16097q.f128134b) && Float.floatToRawIntBits(this.f128135c) == Float.floatToRawIntBits(c16097q.f128135c);
    }

    public int hashCode() {
        return (((Float.floatToRawIntBits(this.f128133a) * 31) + Float.floatToRawIntBits(this.f128134b)) * 31) + Float.floatToRawIntBits(this.f128135c);
    }

    public C16097q(float f10, float f11, float f12) {
        this.f128133a = f10;
        this.f128134b = f11;
        this.f128135c = f12;
    }

    public C16097q(C16097q c16097q) {
        this.f128133a = 0.0f;
        this.f128134b = 0.0f;
        this.f128135c = 0.0f;
        this.f128133a = c16097q.f128133a;
        this.f128134b = c16097q.f128134b;
        this.f128135c = c16097q.f128135c;
    }
}
