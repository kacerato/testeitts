package xd;

public class C16092l {

    public float f128119a;

    public float f128120b;

    public float f128121c;

    public C16092l() {
        this.f128119a = 0.0f;
        this.f128120b = 0.0f;
        this.f128121c = 1.0f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C16092l)) {
            return false;
        }
        C16092l c16092l = (C16092l) obj;
        return Float.floatToRawIntBits(this.f128119a) == Float.floatToRawIntBits(c16092l.f128119a) && Float.floatToRawIntBits(this.f128120b) == Float.floatToRawIntBits(c16092l.f128120b) && Float.floatToRawIntBits(this.f128121c) == Float.floatToRawIntBits(c16092l.f128121c);
    }

    public int hashCode() {
        return (((Float.floatToRawIntBits(this.f128119a) * 31) + Float.floatToRawIntBits(this.f128120b)) * 31) + Float.floatToRawIntBits(this.f128121c);
    }

    public C16092l(float f10, float f11, float f12) {
        this.f128119a = f10;
        this.f128120b = f11;
        this.f128121c = f12;
    }

    public C16092l(C16092l c16092l) {
        this.f128119a = 0.0f;
        this.f128120b = 0.0f;
        this.f128121c = 1.0f;
        this.f128119a = c16092l.f128119a;
        this.f128120b = c16092l.f128120b;
        this.f128121c = c16092l.f128121c;
    }
}
