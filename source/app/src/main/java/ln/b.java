package ln;

import jn.C13890g;

public class b {

    public int f96632a;

    public int f96633b;

    public float[] f96634c;

    public float[] f96635d;

    public float[] f96636e;

    public float[] f96637f;

    public float[] f96638g;

    public float[] f96639h;

    public float[] f96640i;

    public b(int maxSamples) {
        this.f96633b = maxSamples;
        this.f96634c = new float[maxSamples * 3];
        this.f96636e = new float[maxSamples];
        this.f96635d = new float[maxSamples];
        this.f96637f = new float[maxSamples];
        this.f96638g = new float[maxSamples];
        this.f96639h = new float[maxSamples];
        this.f96640i = new float[maxSamples];
    }

    public void a(float[] vel, float ssize, float pen, float vpen, float vcpen, float spen, float tpen) {
        int i10 = this.f96632a;
        if (i10 >= this.f96633b) {
            return;
        }
        float[] fArr = this.f96634c;
        fArr[i10 * 3] = vel[0];
        fArr[(i10 * 3) + 1] = vel[1];
        fArr[(i10 * 3) + 2] = vel[2];
        this.f96635d[i10] = ssize;
        this.f96636e[i10] = pen;
        this.f96637f[i10] = vpen;
        this.f96638g[i10] = vcpen;
        this.f96639h[i10] = spen;
        this.f96640i[i10] = tpen;
        this.f96632a = i10 + 1;
    }

    public float b(int i10) {
        return this.f96640i[i10];
    }

    public int c() {
        return this.f96632a;
    }

    public float d(int i10) {
        return this.f96638g[i10];
    }

    public float e(int i10) {
        return this.f96637f[i10];
    }

    public float f(int i10) {
        return this.f96636e[i10];
    }

    public float g(int i10) {
        return this.f96639h[i10];
    }

    public float h(int i10) {
        return this.f96635d[i10];
    }

    public float[] i(int i10) {
        float[] fArr = this.f96634c;
        int i11 = i10 * 3;
        return new float[]{fArr[i11], fArr[i11 + 1], fArr[i11 + 2]};
    }

    public void j(float[] arr, int n10) {
        float f10 = Float.MAX_VALUE;
        float f11 = -3.4028235E38f;
        for (int i10 = 0; i10 < n10; i10++) {
            f10 = Math.min(f10, arr[i10]);
            f11 = Math.max(f11, arr[i10]);
        }
        float f12 = f11 - f10;
        float f13 = f12 > 0.001f ? 1.0f / f12 : 1.0f;
        for (int i11 = 0; i11 < n10; i11++) {
            arr[i11] = C13890g.a((arr[i11] - f10) * f13, 0.0f, 1.0f);
        }
    }

    public void k() {
        j(this.f96636e, this.f96632a);
        j(this.f96637f, this.f96632a);
        j(this.f96638g, this.f96632a);
        j(this.f96639h, this.f96632a);
        j(this.f96640i, this.f96632a);
    }

    public void l() {
        this.f96632a = 0;
    }
}
