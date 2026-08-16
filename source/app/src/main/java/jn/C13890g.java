package jn;

import java.util.Optional;

public class C13890g {

    public static float f94246a = 1.0E-4f;

    public static final float f94247b = s(6.1035156E-5f);

    public static float f94248c = 1.0E-4f;

    public static class a {

        public boolean f94249a;

        public float f94250b;

        public float f94251c = 1.0f;

        public int f94252d = -1;

        public int f94253e = -1;
    }

    public static float A(float[] v12, float[] verts, int i10) {
        float f10 = verts[i10] - v12[0];
        float f11 = verts[i10 + 1] - v12[1];
        float f12 = verts[i10 + 2] - v12[2];
        return (float) Math.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12));
    }

    public static float B(float[] v12, float[] v22) {
        float f10 = v22[0] - v12[0];
        float f11 = v22[2] - v12[2];
        return (float) Math.sqrt((f10 * f10) + (f11 * f11));
    }

    public static float C(float[] v12, float[] v22) {
        float f10 = v22[0] - v12[0];
        float f11 = v22[2] - v12[2];
        return (f10 * f10) + (f11 * f11);
    }

    public static float D(float[] p10, float[] verts, int i10) {
        float f10 = verts[i10] - p10[0];
        float f11 = verts[i10 + 2] - p10[2];
        return (f10 * f10) + (f11 * f11);
    }

    public static float E(float[] v12, float[] v22) {
        float f10 = v22[0] - v12[0];
        float f11 = v22[1] - v12[1];
        float f12 = v22[2] - v12[2];
        return (f10 * f10) + (f11 * f11) + (f12 * f12);
    }

    public static float F(float[] u10, float[] v10) {
        return (u10[0] * v10[0]) + (u10[2] * v10[2]);
    }

    public static float G(float[] u10, float[] v10, int vi2) {
        return (u10[0] * v10[vi2]) + (u10[2] * v10[vi2 + 2]);
    }

    public static boolean H(float[] p02, float[] p12) {
        return E(p02, p12) < f94247b;
    }

    public static boolean I(float[] v10) {
        return Float.isFinite(v10[0]) && Float.isFinite(v10[1]) && Float.isFinite(v10[2]);
    }

    public static boolean J(float[] v10) {
        return Float.isFinite(v10[0]) && Float.isFinite(v10[2]);
    }

    public static float K(float[] v10) {
        float f10 = v10[0];
        float f11 = v10[1];
        float f12 = v10[2];
        return (float) Math.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12));
    }

    public static float L(float[] v10) {
        float f10 = v10[0];
        float f11 = v10[1];
        float f12 = v10[2];
        return (f10 * f10) + (f11 * f11) + (f12 * f12);
    }

    public static float[] M(float[] verts, int v12, int v22, float t10) {
        float f10 = verts[v12];
        float f11 = f10 + ((verts[v22] - f10) * t10);
        float f12 = verts[v12 + 1];
        float f13 = f12 + ((verts[v22 + 1] - f12) * t10);
        float f14 = verts[v12 + 2];
        return new float[]{f11, f13, f14 + ((verts[v22 + 2] - f14) * t10)};
    }

    public static float[] N(float[] v12, float[] v22, float t10) {
        float f10 = v12[0];
        float f11 = f10 + ((v22[0] - f10) * t10);
        float f12 = v12[1];
        float f13 = f12 + ((v22[1] - f12) * t10);
        float f14 = v12[2];
        return new float[]{f11, f13, f14 + ((v22[2] - f14) * t10)};
    }

    public static float[] O(float[] v12, float[] v22, float s10) {
        return new float[]{v12[0] + (v22[0] * s10), v12[1] + (v22[1] * s10), v12[2] + (v22[2] * s10)};
    }

    public static void P(float[] out, float[] in2, int i10) {
        out[0] = Math.max(out[0], in2[i10]);
        out[1] = Math.max(out[1], in2[i10 + 1]);
        out[2] = Math.max(out[2], in2[i10 + 2]);
    }

    public static void Q(float[] out, float[] in2, int i10) {
        out[0] = Math.min(out[0], in2[i10]);
        out[1] = Math.min(out[1], in2[i10 + 1]);
        out[2] = Math.min(out[2], in2[i10 + 2]);
    }

    public static void R(float[] v10) {
        float sqrt = (float) (1.0d / Math.sqrt((s(v10[0]) + s(v10[1])) + s(v10[2])));
        if (sqrt != 0.0f) {
            v10[0] = v10[0] * sqrt;
            v10[1] = v10[1] * sqrt;
            v10[2] = v10[2] * sqrt;
        }
    }

    public static float S(float[] u10, float[] v10) {
        return (u10[2] * v10[0]) - (u10[0] * v10[2]);
    }

    public static float[] T(float[] in2, float scale) {
        return new float[]{in2[0] * scale, in2[1] * scale, in2[2] * scale};
    }

    public static void U(float[] out, float a10, float b10, float c10) {
        out[0] = a10;
        out[1] = b10;
        out[2] = c10;
    }

    public static float[] V(W v12, W v22) {
        return new float[]{v12.a(0) - v22.a(0), v12.a(1) - v22.a(1), v12.a(2) - v22.a(2)};
    }

    public static float[] W(float[] v12, float[] v22) {
        return new float[]{v12[0] - v22[0], v12[1] - v22[1], v12[2] - v22[2]};
    }

    public static float X(float[] a10, float[] b10) {
        return (a10[0] * b10[2]) - (a10[2] * b10[0]);
    }

    public static final float a(float v10, float min, float max) {
        return Math.max(Math.min(v10, max), min);
    }

    public static final int b(int v10, int min, int max) {
        return Math.max(Math.min(v10, max), min);
    }

    public static Optional<Float> c(float[] p10, float[] a10, float[] b10, float[] c10) {
        float[] W10 = W(c10, a10);
        float[] W11 = W(b10, a10);
        float[] W12 = W(p10, a10);
        float f10 = (W10[0] * W11[2]) - (W10[2] * W11[0]);
        if (Math.abs(f10) < f94246a) {
            return Optional.empty();
        }
        float f11 = W11[2];
        float f12 = W12[0];
        float f13 = W11[0];
        float f14 = W12[2];
        float f15 = (f11 * f12) - (f13 * f14);
        float f16 = (W10[0] * f14) - (W10[2] * f12);
        if (f10 < 0.0f) {
            f10 = -f10;
            f15 = -f15;
            f16 = -f16;
        }
        return (f15 < 0.0f || f16 < 0.0f || f15 + f16 > f10) ? Optional.empty() : Optional.of(Float.valueOf(a10[1] + (((W10[1] * f15) + (W11[1] * f16)) / f10)));
    }

    public static boolean d(float[] pt, float[] verts, int nverts, float[] ed2, float[] et) {
        int i10 = nverts - 1;
        boolean z10 = false;
        for (int i11 = 0; i11 < nverts; i11++) {
            int i12 = i11 * 3;
            int i13 = i10 * 3;
            float f10 = verts[i12 + 2];
            float f11 = pt[2];
            boolean z11 = f10 > f11;
            float f12 = verts[i13 + 2];
            if (z11 != (f12 > f11)) {
                float f13 = pt[0];
                float f14 = verts[i13];
                float f15 = verts[i12];
                if (f13 < (((f14 - f15) * (f11 - f10)) / (f12 - f10)) + f15) {
                    z10 = !z10;
                }
            }
            U<Float, Float> e10 = e(pt, verts, i13, i12);
            ed2[i10] = e10.f94229a.floatValue();
            et[i10] = e10.f94230b.floatValue();
            i10 = i11;
        }
        return z10;
    }

    public static U<Float, Float> e(float[] pt, float[] verts, int p10, int q10) {
        float f10 = verts[q10];
        float f11 = verts[p10];
        float f12 = f10 - f11;
        float f13 = verts[q10 + 2];
        float f14 = verts[p10 + 2];
        float f15 = f13 - f14;
        float f16 = pt[0];
        float f17 = pt[2];
        float f18 = (f12 * f12) + (f15 * f15);
        float f19 = ((f16 - f11) * f12) + ((f17 - f14) * f15);
        float f20 = 0.0f;
        if (f18 > 0.0f) {
            f19 /= f18;
        }
        if (f19 >= 0.0f) {
            f20 = 1.0f;
            if (f19 <= 1.0f) {
                f20 = f19;
            }
        }
        float f21 = (f11 + (f12 * f20)) - f16;
        float f22 = (f14 + (f15 * f20)) - f17;
        return new U<>(Float.valueOf((f21 * f21) + (f22 * f22)), Float.valueOf(f20));
    }

    public static U<Float, Float> f(float[] pt, float[] p10, float[] q10) {
        float f10 = q10[0];
        float f11 = p10[0];
        float f12 = f10 - f11;
        float f13 = q10[2];
        float f14 = p10[2];
        float f15 = f13 - f14;
        float f16 = pt[0];
        float f17 = pt[2];
        float f18 = (f12 * f12) + (f15 * f15);
        float f19 = ((f16 - f11) * f12) + ((f17 - f14) * f15);
        float f20 = 0.0f;
        if (f18 > 0.0f) {
            f19 /= f18;
        }
        if (f19 >= 0.0f) {
            f20 = 1.0f;
            if (f19 <= 1.0f) {
                f20 = f19;
            }
        }
        float f21 = (f11 + (f12 * f20)) - f16;
        float f22 = (f14 + (f15 * f20)) - f17;
        return new U<>(Float.valueOf((f21 * f21) + (f22 * f22)), Float.valueOf(f20));
    }

    public static int g(int v10) {
        int i10 = (v10 > 65535 ? 1 : 0) << 4;
        int i11 = v10 >> i10;
        int i12 = (i11 > 255 ? 1 : 0) << 3;
        int i13 = i11 >> i12;
        int i14 = i10 | i12;
        int i15 = (i13 > 15 ? 1 : 0) << 2;
        int i16 = i13 >> i15;
        int i17 = i14 | i15;
        int i18 = (i16 > 3 ? 1 : 0) << 1;
        return ((i16 >> i18) >> 1) | i17 | i18;
    }

    public static Optional<U<Float, Float>> h(float[] ap, float[] aq, float[] bp, float[] bq) {
        float[] W10 = W(aq, ap);
        float[] W11 = W(bq, bp);
        float[] W12 = W(ap, bp);
        float X10 = X(W10, W11);
        if (Math.abs(X10) < 1.0E-6f) {
            return Optional.empty();
        }
        return Optional.of(new U(Float.valueOf(X(W11, W12) / X10), Float.valueOf(X(W10, W12) / X10)));
    }

    public static a i(float[] p02, float[] p12, float[] verts, int nverts) {
        a aVar = new a();
        float[] W10 = W(p12, p02);
        W w10 = new W(p02);
        int i10 = nverts - 1;
        int i11 = 0;
        while (true) {
            int i12 = i11;
            int i13 = i10;
            i10 = i12;
            if (i10 >= nverts) {
                aVar.f94249a = true;
                return aVar;
            }
            W w11 = new W(verts, i13 * 3);
            float[] V10 = V(new W(verts, i10 * 3), w11);
            float S10 = S(V10, V(w10, w11));
            float S11 = S(W10, V10);
            if (Math.abs(S11) >= 1.0E-8f) {
                float f10 = S10 / S11;
                if (S11 < 0.0f) {
                    if (f10 > aVar.f94250b) {
                        aVar.f94250b = f10;
                        aVar.f94252d = i13;
                        if (f10 > aVar.f94251c) {
                            return aVar;
                        }
                    } else {
                        continue;
                    }
                } else if (f10 < aVar.f94251c) {
                    aVar.f94251c = f10;
                    aVar.f94253e = i13;
                    if (f10 < aVar.f94250b) {
                        return aVar;
                    }
                } else {
                    continue;
                }
            } else if (S10 < 0.0f) {
                return aVar;
            }
            i11 = i10 + 1;
        }
    }

    public static int j(int v10) {
        int i10 = v10 - 1;
        int i11 = i10 | (i10 >> 1);
        int i12 = i11 | (i11 >> 2);
        int i13 = i12 | (i12 >> 4);
        int i14 = i13 | (i13 >> 8);
        return (i14 | (i14 >> 16)) + 1;
    }

    public static int k(int side) {
        return (side + 4) & 7;
    }

    public static boolean l(float[] amin, float[] amax, float[] bmin, float[] bmax) {
        boolean z10 = amin[0] <= bmax[0] && amax[0] >= bmin[0];
        if (amin[1] > bmax[1] || amax[1] < bmin[1]) {
            z10 = false;
        }
        if (amin[2] > bmax[2] || amax[2] < bmin[2]) {
            return false;
        }
        return z10;
    }

    public static boolean m(float[] polya, int npolya, float[] polyb, int npolyb) {
        int i10 = npolya - 1;
        for (int i11 = 0; i11 < npolya; i11++) {
            int i12 = i10 * 3;
            int i13 = i11 * 3;
            float[] fArr = {polya[i13 + 2] - polya[i12 + 2], 0.0f, -(polya[i13] - polya[i12])};
            float[] q10 = q(fArr, polya, npolya);
            float[] q11 = q(fArr, polyb, npolyb);
            if (!o(q10[0], q10[1], q11[0], q11[1], f94248c)) {
                return false;
            }
            i10 = i11;
        }
        int i14 = npolyb - 1;
        for (int i15 = 0; i15 < npolyb; i15++) {
            int i16 = i14 * 3;
            int i17 = i15 * 3;
            float[] fArr2 = {polyb[i17 + 2] - polyb[i16 + 2], 0.0f, -(polyb[i17] - polyb[i16])};
            float[] q12 = q(fArr2, polya, npolya);
            float[] q13 = q(fArr2, polyb, npolyb);
            if (!o(q12[0], q12[1], q13[0], q13[1], f94248c)) {
                return false;
            }
            i14 = i15;
        }
        return true;
    }

    public static boolean n(int[] amin, int[] amax, int[] bmin, int[] bmax) {
        boolean z10 = amin[0] <= bmax[0] && amax[0] >= bmin[0];
        if (amin[1] > bmax[1] || amax[1] < bmin[1]) {
            z10 = false;
        }
        if (amin[2] > bmax[2] || amax[2] < bmin[2]) {
            return false;
        }
        return z10;
    }

    public static boolean o(float amin, float amax, float bmin, float bmax, float eps) {
        return amin + eps <= bmax && amax - eps >= bmin;
    }

    public static boolean p(float[] pt, float[] verts, int nverts) {
        int i10 = nverts - 1;
        boolean z10 = false;
        for (int i11 = 0; i11 < nverts; i11++) {
            int i12 = i11 * 3;
            int i13 = i10 * 3;
            float f10 = verts[i12 + 2];
            float f11 = pt[2];
            boolean z11 = f10 > f11;
            float f12 = verts[i13 + 2];
            if (z11 != (f12 > f11)) {
                float f13 = pt[0];
                float f14 = verts[i13];
                float f15 = verts[i12];
                if (f13 < (((f14 - f15) * (f11 - f10)) / (f12 - f10)) + f15) {
                    z10 = !z10;
                }
            }
            i10 = i11;
        }
        return z10;
    }

    public static float[] q(float[] axis, float[] poly, int npoly) {
        float G10 = G(axis, poly, 0);
        float f10 = G10;
        for (int i10 = 1; i10 < npoly; i10++) {
            float G11 = G(axis, poly, i10 * 3);
            G10 = Math.min(G10, G11);
            f10 = Math.max(f10, G11);
        }
        return new float[]{G10, f10};
    }

    public static float[] r(float[] pts, int npts, float[] areas, float s10, float t10) {
        float f10;
        float f11 = 0.0f;
        float f12 = 0.0f;
        for (int i10 = 2; i10 < npts; i10++) {
            float t11 = t(pts, 0, (i10 - 1) * 3, i10 * 3);
            areas[i10] = t11;
            f12 += Math.max(0.001f, t11);
        }
        float f13 = s10 * f12;
        int i11 = npts - 1;
        int i12 = 2;
        while (true) {
            if (i12 >= npts) {
                f10 = 1.0f;
                break;
            }
            float f14 = areas[i12];
            if (f13 >= f11 && f13 < f11 + f14) {
                f10 = (f13 - f11) / f14;
                i11 = i12;
                break;
            }
            f11 += f14;
            i12++;
        }
        float sqrt = (float) Math.sqrt(t10);
        float f15 = 1.0f - sqrt;
        float f16 = (1.0f - f10) * sqrt;
        float f17 = f10 * sqrt;
        int i13 = (i11 - 1) * 3;
        int i14 = i11 * 3;
        return new float[]{(pts[0] * f15) + (pts[i13] * f16) + (pts[i14] * f17), (pts[1] * f15) + (pts[i13 + 1] * f16) + (pts[i14 + 1] * f17), (f15 * pts[2]) + (f16 * pts[i13 + 2]) + (f17 * pts[i14 + 2])};
    }

    public static float s(float a10) {
        return a10 * a10;
    }

    public static float t(float[] verts, int a10, int b10, int c10) {
        float f10 = verts[b10];
        float f11 = verts[a10];
        float f12 = verts[b10 + 2];
        float f13 = verts[a10 + 2];
        return ((verts[c10] - f11) * (f12 - f13)) - ((f10 - f11) * (verts[c10 + 2] - f13));
    }

    public static float u(float[] a10, float[] b10, float[] c10) {
        float f10 = b10[0];
        float f11 = a10[0];
        float f12 = b10[2];
        float f13 = a10[2];
        return ((c10[0] - f11) * (f12 - f13)) - ((f10 - f11) * (c10[2] - f13));
    }

    public static float[] v(float[] v12, float[] v22) {
        return new float[]{v12[0] + v22[0], v12[1] + v22[1], v12[2] + v22[2]};
    }

    public static void w(float[] out, float[] in2) {
        out[0] = in2[0];
        out[1] = in2[1];
        out[2] = in2[2];
    }

    public static void x(float[] out, float[] in2, int i10) {
        out[0] = in2[i10];
        out[1] = in2[i10 + 1];
        out[2] = in2[i10 + 2];
    }

    public static float[] y(float[] in2) {
        return new float[]{in2[0], in2[1], in2[2]};
    }

    public static float z(float[] v12, float[] v22) {
        float f10 = v22[0] - v12[0];
        float f11 = v22[1] - v12[1];
        float f12 = v22[2] - v12[2];
        return (float) Math.sqrt((f10 * f10) + (f11 * f11) + (f12 * f12));
    }
}
