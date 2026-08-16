package S8;

public class c {

    public boolean f22999a;

    public float f23000b;

    public float f23001c;

    public float f23002d;

    public float f23003e;

    public float f23004f;

    public float f23005g;

    public float a() {
        if (this.f22999a) {
            return (this.f23000b + this.f23003e) * 0.5f;
        }
        return 0.0f;
    }

    public float b() {
        if (this.f22999a) {
            return (this.f23001c + this.f23004f) * 0.5f;
        }
        return 0.0f;
    }

    public float c() {
        if (this.f22999a) {
            return (this.f23002d + this.f23005g) * 0.5f;
        }
        return 0.0f;
    }

    public float d() {
        if (this.f22999a) {
            return 0.5f * (this.f23003e - this.f23000b);
        }
        return 0.5f;
    }

    public float e() {
        if (this.f22999a) {
            return 0.5f * (this.f23004f - this.f23001c);
        }
        return 0.5f;
    }

    public float f() {
        if (this.f22999a) {
            return 0.5f * (this.f23005g - this.f23002d);
        }
        return 0.5f;
    }

    public void g(float[] columnMajorMatrix, float radius) {
        h(columnMajorMatrix, 0, radius);
    }

    public void h(float[] columnMajorMatrix, int matrixOffset, float radius) {
        float f10 = columnMajorMatrix[matrixOffset + 12];
        float f11 = columnMajorMatrix[matrixOffset + 13];
        float f12 = columnMajorMatrix[matrixOffset + 14];
        if (radius <= 0.0f) {
            radius = 0.5f;
        }
        if (this.f22999a) {
            this.f23000b = Math.min(this.f23000b, f10 - radius);
            this.f23001c = Math.min(this.f23001c, f11 - radius);
            this.f23002d = Math.min(this.f23002d, f12 - radius);
            this.f23003e = Math.max(this.f23003e, f10 + radius);
            this.f23004f = Math.max(this.f23004f, f11 + radius);
            this.f23005g = Math.max(this.f23005g, f12 + radius);
            return;
        }
        this.f23000b = f10 - radius;
        this.f23001c = f11 - radius;
        this.f23002d = f12 - radius;
        this.f23003e = f10 + radius;
        this.f23004f = f11 + radius;
        this.f23005g = f12 + radius;
        this.f22999a = true;
    }

    public void i(float[] out) {
        if (!this.f22999a) {
            out[0] = 0.0f;
            out[1] = 0.0f;
            out[2] = 0.0f;
            out[3] = 0.5f;
            out[4] = 0.5f;
            out[5] = 0.5f;
            return;
        }
        float f10 = this.f23000b;
        float f11 = this.f23003e;
        out[0] = (f10 + f11) * 0.5f;
        float f12 = this.f23001c;
        float f13 = this.f23004f;
        out[1] = (f12 + f13) * 0.5f;
        float f14 = this.f23002d;
        float f15 = this.f23005g;
        out[2] = (f14 + f15) * 0.5f;
        out[3] = (f11 - f10) * 0.5f;
        out[4] = (f13 - f12) * 0.5f;
        out[5] = (f15 - f14) * 0.5f;
    }
}
