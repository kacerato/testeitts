package kn;

import jn.C13890g;
import jn.U;

public class n {

    public static final int f95591k = 32;

    public static final int f95592l = 4;

    public static final float f95593m = 3.1415927f;

    public a f95594a;

    public float f95595b;

    public float f95596c;

    public float f95597d;

    public final int f95598e;

    public final b[] f95599f;

    public int f95600g = 0;

    public final int f95601h;

    public final c[] f95602i;

    public int f95603j;

    public static class b {

        public float f95617d;

        public final float[] f95614a = new float[3];

        public final float[] f95615b = new float[3];

        public final float[] f95616c = new float[3];

        public final float[] f95618e = new float[3];

        public final float[] f95619f = new float[3];
    }

    public static class c {

        public final float[] f95620a = new float[3];

        public final float[] f95621b = new float[3];

        public boolean f95622c;
    }

    public n(int maxCircles, int maxSegments) {
        this.f95598e = maxCircles;
        this.f95599f = new b[maxCircles];
        for (int i10 = 0; i10 < this.f95598e; i10++) {
            this.f95599f[i10] = new b();
        }
        this.f95601h = maxSegments;
        this.f95603j = 0;
        this.f95602i = new c[maxSegments];
        for (int i11 = 0; i11 < this.f95601h; i11++) {
            this.f95602i[i11] = new c();
        }
    }

    public void a(float[] pos, float rad, float[] vel, float[] dvel) {
        int i10 = this.f95600g;
        if (i10 >= this.f95598e) {
            return;
        }
        b[] bVarArr = this.f95599f;
        this.f95600g = i10 + 1;
        b bVar = bVarArr[i10];
        C13890g.w(bVar.f95614a, pos);
        bVar.f95617d = rad;
        C13890g.w(bVar.f95615b, vel);
        C13890g.w(bVar.f95616c, dvel);
    }

    public void b(float[] p10, float[] q10) {
        int i10 = this.f95603j;
        if (i10 >= this.f95601h) {
            return;
        }
        c[] cVarArr = this.f95602i;
        this.f95603j = i10 + 1;
        c cVar = cVarArr[i10];
        C13890g.w(cVar.f95620a, p10);
        C13890g.w(cVar.f95621b, q10);
    }

    public void c(float[] v10) {
        float f10 = v10[0];
        float f11 = v10[2];
        float sqrt = (float) Math.sqrt((f10 * f10) + (f11 * f11));
        if (sqrt == 0.0f) {
            return;
        }
        float f12 = 1.0f / sqrt;
        v10[0] = v10[0] * f12;
        v10[2] = v10[2] * f12;
    }

    public float[] d(float[] v10, float ang) {
        double d10 = ang;
        float cos = (float) Math.cos(d10);
        float sin = (float) Math.sin(d10);
        float f10 = v10[0] * cos;
        float f11 = v10[2];
        return new float[]{f10 - (f11 * sin), v10[1], (v10[0] * sin) + (f11 * cos)};
    }

    public b e(int i10) {
        return this.f95599f[i10];
    }

    public int f() {
        return this.f95600g;
    }

    public c g(int i10) {
        return this.f95602i[i10];
    }

    public int h() {
        return this.f95603j;
    }

    public U<Boolean, Float> i(float[] ap, float[] u10, float[] bp, float[] bq) {
        float[] W10 = C13890g.W(bq, bp);
        float[] W11 = C13890g.W(ap, bp);
        float S10 = C13890g.S(u10, W10);
        float abs = Math.abs(S10);
        Float valueOf = Float.valueOf(0.0f);
        if (abs < 1.0E-6f) {
            return new U<>(Boolean.FALSE, valueOf);
        }
        float f10 = 1.0f / S10;
        float S11 = C13890g.S(W10, W11) * f10;
        if (S11 < 0.0f || S11 > 1.0f) {
            return new U<>(Boolean.FALSE, valueOf);
        }
        float S12 = C13890g.S(u10, W11) * f10;
        return (S12 < 0.0f || S12 > 1.0f) ? new U<>(Boolean.FALSE, valueOf) : new U<>(Boolean.TRUE, Float.valueOf(S11));
    }

    public final void j(float[] pos, float[] dvel) {
        for (int i10 = 0; i10 < this.f95600g; i10++) {
            b bVar = this.f95599f[i10];
            C13890g.w(bVar.f95618e, C13890g.W(bVar.f95614a, pos));
            C13890g.R(bVar.f95618e);
            if (C13890g.u(new float[]{0.0f, 0.0f, 0.0f}, bVar.f95618e, C13890g.W(bVar.f95616c, dvel)) < 0.01f) {
                float[] fArr = bVar.f95619f;
                float[] fArr2 = bVar.f95618e;
                fArr[0] = -fArr2[2];
                fArr[2] = fArr2[0];
            } else {
                float[] fArr3 = bVar.f95619f;
                float[] fArr4 = bVar.f95618e;
                fArr3[0] = fArr4[2];
                fArr3[2] = -fArr4[0];
            }
        }
        for (int i11 = 0; i11 < this.f95603j; i11++) {
            c cVar = this.f95602i[i11];
            cVar.f95622c = C13890g.f(pos, cVar.f95620a, cVar.f95621b).f94229a.floatValue() < C13890g.s(0.01f);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0114 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final float k(float[] vcand, float cs, float[] pos, float rad, float[] vel, float[] dvel, float minPenalty, ln.b debug) {
        float floatValue;
        float f10;
        float B10 = this.f95594a.f95605b * C13890g.B(vcand, dvel) * this.f95597d;
        float B11 = this.f95594a.f95606c * C13890g.B(vcand, vel) * this.f95597d;
        a aVar = this.f95594a;
        float f11 = (aVar.f95608e / ((minPenalty - B10) - B11)) - 0.1f;
        float f12 = aVar.f95609f;
        float f13 = f11 * f12;
        if (f13 - f12 > -1.4E-45f) {
            return minPenalty;
        }
        float f14 = f12;
        float f15 = 0.0f;
        int i10 = 0;
        int i11 = 0;
        while (i11 < this.f95600g) {
            b bVar = this.f95599f[i11];
            float[] W10 = C13890g.W(C13890g.W(C13890g.T(vcand, 2.0f), vel), bVar.f95615b);
            float a10 = f15 + C13890g.a(Math.min((C13890g.F(bVar.f95618e, W10) * 0.5f) + 0.5f, C13890g.F(bVar.f95619f, W10) * 2.0f), 0.0f, 1.0f);
            int i12 = i10 + 1;
            int i13 = i11;
            v o10 = o(pos, rad, W10, bVar.f95614a, bVar.f95617d);
            if (o10.f95643a) {
                float f16 = o10.f95644b;
                float f17 = o10.f95645c;
                if (f16 < 0.0f && f17 > 0.0f) {
                    f16 = (-f16) * 0.5f;
                }
                if (f16 >= 0.0f && f16 < f14) {
                    if (f16 < f13) {
                        return minPenalty;
                    }
                    f14 = f16;
                }
            }
            i11 = i13 + 1;
            f15 = a10;
            i10 = i12;
        }
        for (int i14 = 0; i14 < this.f95603j; i14++) {
            c cVar = this.f95602i[i14];
            if (cVar.f95622c) {
                float[] W11 = C13890g.W(cVar.f95621b, cVar.f95620a);
                if (C13890g.F(new float[]{-W11[2], 0.0f, W11[0]}, vcand) >= 0.0f) {
                    floatValue = 0.0f;
                    f10 = floatValue * 2.0f;
                    if (f10 >= f14) {
                        continue;
                    } else {
                        if (f10 < f13) {
                            return minPenalty;
                        }
                        f14 = f10;
                    }
                }
            } else {
                U<Boolean, Float> i15 = i(pos, vcand, cVar.f95620a, cVar.f95621b);
                if (i15.f94229a.booleanValue()) {
                    floatValue = i15.f94230b.floatValue();
                    f10 = floatValue * 2.0f;
                    if (f10 >= f14) {
                    }
                } else {
                    continue;
                }
            }
        }
        if (i10 != 0) {
            f15 /= i10;
        }
        a aVar2 = this.f95594a;
        float f18 = aVar2.f95607d * f15;
        float f19 = aVar2.f95608e * (1.0f / ((f14 * this.f95595b) + 0.1f));
        float f20 = B10 + B11 + f18 + f19;
        if (debug != null) {
            debug.a(vcand, cs, f20, B10, B11, f18, f19);
        }
        return f20;
    }

    public void l() {
        this.f95600g = 0;
        this.f95603j = 0;
    }

    public U<Integer, float[]> m(float[] pos, float rad, float vmax, float[] vel, float[] dvel, a params, ln.b debug) {
        int i10;
        float[] fArr;
        int i11;
        float[] fArr2;
        float[] fArr3;
        int i12;
        float[] fArr4;
        float f10 = vmax;
        j(pos, dvel);
        this.f95594a = params;
        this.f95595b = 1.0f / params.f95609f;
        this.f95596c = f10;
        this.f95597d = f10 > 0.0f ? 1.0f / f10 : Float.MAX_VALUE;
        float[] fArr5 = new float[3];
        C13890g.U(fArr5, 0.0f, 0.0f, 0.0f);
        if (debug != null) {
            debug.l();
        }
        float[] fArr6 = new float[258];
        a aVar = this.f95594a;
        int i13 = aVar.f95611h;
        int i14 = aVar.f95612i;
        int i15 = aVar.f95613j;
        int b10 = C13890g.b(i13, 1, 32);
        int b11 = C13890g.b(i14, 1, 4);
        float f11 = (1.0f / b10) * 3.1415927f * 2.0f;
        double d10 = f11;
        float cos = (float) Math.cos(d10);
        float sin = (float) Math.sin(d10);
        C13890g.w(r13, dvel);
        c(r13);
        float[] d11 = d(r13, f11 * 0.5f);
        float[] fArr7 = {0.0f, 0.0f, 0.0f, d11[0], d11[1], d11[2]};
        fArr6[0] = 0.0f;
        fArr6[1] = 0.0f;
        int i16 = 1;
        int i17 = 0;
        while (i17 < b11) {
            float f12 = (b11 - i17) / b11;
            int i18 = i16 * 2;
            int i19 = (i17 % 2) * 3;
            fArr6[i18] = fArr7[i19] * f12;
            fArr6[i18 + 1] = fArr7[i19 + 2] * f12;
            i16++;
            int i20 = b11;
            int i21 = i18;
            int i22 = 1;
            while (true) {
                fArr4 = fArr5;
                if (i22 >= b10 - 1) {
                    break;
                }
                int i23 = i16 * 2;
                int i24 = i18 + 1;
                fArr6[i23] = (fArr6[i18] * cos) + (fArr6[i24] * sin);
                fArr6[i23 + 1] = ((-fArr6[i18]) * sin) + (fArr6[i24] * cos);
                int i25 = i23 + 2;
                int i26 = i21 + 1;
                fArr6[i25] = (fArr6[i21] * cos) - (fArr6[i26] * sin);
                fArr6[i23 + 3] = (fArr6[i21] * sin) + (fArr6[i26] * cos);
                i16 += 2;
                i22 += 2;
                i21 = i25;
                i18 = i23;
                fArr5 = fArr4;
            }
            if ((b10 & 1) == 0) {
                int i27 = i16 * 2;
                int i28 = i21 + 1;
                fArr6[i27 + 2] = (fArr6[i21] * cos) - (fArr6[i28] * sin);
                fArr6[i27 + 3] = (fArr6[i21] * sin) + (fArr6[i28] * cos);
                i16++;
            }
            i17++;
            b11 = i20;
            fArr5 = fArr4;
        }
        float[] fArr8 = fArr5;
        float f13 = this.f95594a.f95604a;
        float f14 = (1.0f - f13) * f10;
        int i29 = 3;
        float[] fArr9 = new float[3];
        float f15 = dvel[0] * f13;
        float f16 = dvel[2] * f13;
        float f17 = 0.0f;
        C13890g.U(fArr9, f15, 0.0f, f16);
        float f18 = f14;
        int i30 = 0;
        int i31 = 0;
        while (i31 < i15) {
            float[] fArr10 = new float[i29];
            C13890g.U(fArr10, f17, f17, f17);
            int i32 = i30;
            int i33 = 0;
            float f19 = Float.MAX_VALUE;
            while (i33 < i16) {
                float[] fArr11 = new float[i29];
                int i34 = i33 * 2;
                C13890g.U(fArr11, fArr9[0] + (fArr6[i34] * f18), 0.0f, fArr9[2] + (fArr6[i34 + 1] * f18));
                if (C13890g.s(fArr11[0]) + C13890g.s(fArr11[2]) > C13890g.s(0.001f + f10)) {
                    i10 = i33;
                    fArr = fArr10;
                    i11 = i15;
                    fArr2 = fArr6;
                    fArr3 = fArr8;
                    i12 = i31;
                } else {
                    i10 = i33;
                    fArr = fArr10;
                    i11 = i15;
                    fArr2 = fArr6;
                    fArr3 = fArr8;
                    i12 = i31;
                    float k10 = k(fArr11, f18 / 10.0f, pos, rad, vel, dvel, f19, debug);
                    i32++;
                    if (k10 < f19) {
                        C13890g.w(fArr, fArr11);
                        f19 = k10;
                    }
                }
                i33 = i10 + 1;
                fArr10 = fArr;
                i31 = i12;
                i15 = i11;
                fArr6 = fArr2;
                i29 = 3;
                fArr8 = fArr3;
                f10 = vmax;
            }
            C13890g.w(fArr9, fArr10);
            f18 *= 0.5f;
            i31++;
            fArr8 = fArr8;
            i30 = i32;
            f17 = 0.0f;
            i29 = 3;
            f10 = vmax;
        }
        float[] fArr12 = fArr8;
        C13890g.w(fArr12, fArr9);
        return new U<>(Integer.valueOf(i30), fArr12);
    }

    public U<Integer, float[]> n(float[] pos, float rad, float vmax, float[] vel, float[] dvel, a params, ln.b debug) {
        int i10;
        int i11;
        j(pos, dvel);
        this.f95594a = params;
        this.f95595b = 1.0f / params.f95609f;
        this.f95596c = vmax;
        float f10 = 0.0f;
        float f11 = Float.MAX_VALUE;
        this.f95597d = vmax > 0.0f ? 1.0f / vmax : Float.MAX_VALUE;
        float[] fArr = new float[3];
        C13890g.U(fArr, 0.0f, 0.0f, 0.0f);
        if (debug != null) {
            debug.l();
        }
        float f12 = dvel[0];
        a aVar = this.f95594a;
        float f13 = aVar.f95604a;
        float f14 = f12 * f13;
        float f15 = dvel[2] * f13;
        int i12 = aVar.f95610g;
        float f16 = ((vmax * 2.0f) * (1.0f - f13)) / (i12 - 1);
        float f17 = (i12 - 1) * f16 * 0.5f;
        int i13 = 0;
        int i14 = 0;
        while (i14 < this.f95594a.f95610g) {
            int i15 = i13;
            float f18 = f11;
            int i16 = 0;
            while (i16 < this.f95594a.f95610g) {
                float[] fArr2 = new float[3];
                C13890g.U(fArr2, (f14 + (i16 * f16)) - f17, f10, (f15 + (i14 * f16)) - f17);
                if (C13890g.s(fArr2[0]) + C13890g.s(fArr2[2]) > C13890g.s((f16 / 2.0f) + vmax)) {
                    i10 = i16;
                    i11 = i14;
                } else {
                    i10 = i16;
                    i11 = i14;
                    float k10 = k(fArr2, f16, pos, rad, vel, dvel, f18, debug);
                    i15++;
                    if (k10 < f18) {
                        C13890g.w(fArr, fArr2);
                        f18 = k10;
                    }
                }
                i16 = i10 + 1;
                i14 = i11;
                f10 = 0.0f;
            }
            i14++;
            i13 = i15;
            f11 = f18;
            f10 = 0.0f;
        }
        return new U<>(Integer.valueOf(i13), fArr);
    }

    public v o(float[] c02, float r02, float[] v10, float[] c12, float r12) {
        float[] W10 = C13890g.W(c12, c02);
        float f10 = r02 + r12;
        float F10 = C13890g.F(W10, W10) - (f10 * f10);
        float F11 = C13890g.F(v10, v10);
        if (F11 < 1.0E-4f) {
            return new v(false, 0.0f, 0.0f);
        }
        float F12 = C13890g.F(v10, W10);
        float f11 = (F12 * F12) - (F10 * F11);
        if (f11 < 0.0f) {
            return new v(false, 0.0f, 0.0f);
        }
        float f12 = 1.0f / F11;
        float sqrt = (float) Math.sqrt(f11);
        return new v(true, (F12 - sqrt) * f12, (F12 + sqrt) * f12);
    }

    public static class a {

        public float f95604a;

        public float f95605b;

        public float f95606c;

        public float f95607d;

        public float f95608e;

        public float f95609f;

        public int f95610g;

        public int f95611h;

        public int f95612i;

        public int f95613j;

        public a() {
            this.f95604a = 0.4f;
            this.f95605b = 2.0f;
            this.f95606c = 0.75f;
            this.f95607d = 0.75f;
            this.f95608e = 2.5f;
            this.f95609f = 2.5f;
            this.f95610g = 33;
            this.f95611h = 7;
            this.f95612i = 2;
            this.f95613j = 5;
        }

        public a(a params) {
            this.f95604a = params.f95604a;
            this.f95605b = params.f95605b;
            this.f95606c = params.f95606c;
            this.f95607d = params.f95607d;
            this.f95608e = params.f95608e;
            this.f95609f = params.f95609f;
            this.f95610g = params.f95610g;
            this.f95611h = params.f95611h;
            this.f95612i = params.f95612i;
            this.f95613j = params.f95613j;
        }
    }
}
