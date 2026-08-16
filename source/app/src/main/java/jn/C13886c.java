package jn;

import java.util.Optional;

public class C13886c {

    public static final float f94241a = 1.0E-4f;

    public enum a {
        Pin,
        Qin,
        Unknown
    }

    public enum b {
        None,
        Single,
        Overlap
    }

    public static int a(float[] inters, int ii2, float[] p10) {
        if (ii2 > 0) {
            float f10 = inters[ii2 - 3];
            float f11 = p10[0];
            if (f10 == f11 && inters[ii2 - 2] == p10[1] && inters[ii2 - 1] == p10[2]) {
                return ii2;
            }
            if (inters[0] == f11 && inters[1] == p10[1] && inters[2] == p10[2]) {
                return ii2;
            }
        }
        inters[ii2] = p10[0];
        inters[ii2 + 1] = p10[1];
        inters[ii2 + 2] = p10[2];
        return ii2 + 3;
    }

    public static boolean b(float[] a10, float[] b10, float[] c10) {
        if (Math.abs(a10[0] - b10[0]) > Math.abs(a10[2] - b10[2])) {
            float f10 = a10[0];
            float f11 = c10[0];
            return (f10 <= f11 && f11 <= b10[0]) || (f10 >= f11 && f11 >= b10[0]);
        }
        float f12 = a10[2];
        float f13 = c10[2];
        return (f12 <= f13 && f13 <= b10[2]) || (f12 >= f13 && f13 >= b10[2]);
    }

    public static a c(a inflag, float aHB, float bHA) {
        return aHB > 0.0f ? a.Pin : bHA > 0.0f ? a.Qin : inflag;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0174, code lost:
    
        if (r9 != jn.C13886c.a.Unknown) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0176, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x017b, code lost:
    
        return java.util.Arrays.copyOf(r5, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0113, code lost:
    
        if (r9 == jn.C13886c.a.Pin) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static float[] d(float[] p10, float[] q10) {
        int i10;
        int i11;
        float[] fArr;
        float[] fArr2;
        int i12;
        a aVar;
        float[] fArr3;
        float[] fArr4;
        b f10;
        float[] fArr5;
        float[] fArr6 = p10;
        float[] fArr7 = q10;
        int i13 = 3;
        int length = fArr6.length / 3;
        int length2 = fArr7.length / 3;
        float[] fArr8 = new float[Math.max(length2, length) * 9];
        float[] fArr9 = new float[3];
        float[] fArr10 = new float[3];
        float[] fArr11 = new float[3];
        float[] fArr12 = new float[3];
        float[] fArr13 = new float[3];
        float[] fArr14 = new float[3];
        a aVar2 = a.Unknown;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        boolean z10 = true;
        while (true) {
            C13890g.x(fArr9, fArr6, (i15 % length) * i13);
            C13890g.x(fArr10, fArr7, (i16 % length2) * i13);
            C13890g.x(fArr11, fArr6, (((i15 + length) - 1) % length) * i13);
            C13890g.x(fArr12, fArr7, (((i16 + length2) - 1) % length2) * i13);
            float[] W10 = C13890g.W(fArr9, fArr11);
            float[] W11 = C13890g.W(fArr10, fArr12);
            float f11 = (W11[0] * W10[2]) - (W10[0] * W11[2]);
            float u10 = C13890g.u(fArr12, fArr10, fArr9);
            float u11 = C13890g.u(fArr11, fArr9, fArr10);
            if (Math.abs(f11) < 1.0E-4f) {
                f11 = 0.0f;
            }
            boolean z11 = f11 == 0.0f;
            if (z11) {
                i11 = length2;
                fArr2 = W10;
                i10 = length;
                i12 = i14;
                fArr = W11;
                aVar = aVar2;
                fArr3 = fArr14;
                fArr4 = fArr13;
                f10 = e(fArr11, fArr9, fArr12, fArr10, fArr13, fArr3);
            } else {
                i10 = length;
                i11 = length2;
                fArr = W11;
                fArr2 = W10;
                i12 = i14;
                aVar = aVar2;
                fArr3 = fArr14;
                fArr4 = fArr13;
                f10 = f(fArr11, fArr9, fArr12, fArr10, fArr4, fArr3);
            }
            if (f10 == b.Single) {
                if (z10) {
                    z10 = false;
                    i17 = 0;
                    i18 = 0;
                }
                fArr5 = fArr4;
                i14 = a(fArr8, i12, fArr5);
                aVar2 = c(aVar, u10, u11);
            } else {
                fArr5 = fArr4;
                aVar2 = aVar;
                i14 = i12;
            }
            if (f10 == b.Overlap && C13890g.F(fArr2, fArr) < 0.0f) {
                int i19 = a(fArr8, a(fArr8, i14, fArr5), fArr3);
                break;
            }
            float[] fArr15 = fArr3;
            if (z11 && u10 < 0.0f && u11 < 0.0f) {
                return null;
            }
            if (!z11 || Math.abs(u10) >= 1.0E-4f || Math.abs(u11) >= 1.0E-4f) {
                if (f11 >= 0.0f) {
                    if (u11 > 0.0f) {
                        if (aVar2 == a.Pin) {
                            i14 = a(fArr8, i14, fArr9);
                        }
                        i17++;
                        i15++;
                    } else {
                        if (aVar2 == a.Qin) {
                            i14 = a(fArr8, i14, fArr10);
                        }
                        i18++;
                        i16++;
                    }
                } else if (u10 > 0.0f) {
                    if (aVar2 == a.Qin) {
                        i14 = a(fArr8, i14, fArr10);
                    }
                    i18++;
                    i16++;
                } else {
                    if (aVar2 == a.Pin) {
                        i14 = a(fArr8, i14, fArr9);
                    }
                    i17++;
                    i15++;
                }
            }
            int i20 = i17;
            int i21 = i18;
            int i22 = i10;
            int i23 = i11;
            if ((i20 < i22 || i21 < i23) && i20 < i22 * 2 && i21 < i23 * 2) {
                i17 = i20;
                fArr14 = fArr15;
                i18 = i21;
                length = i22;
                length2 = i23;
                fArr13 = fArr5;
                i13 = 3;
                fArr6 = p10;
                fArr7 = q10;
            }
        }
    }

    public static b e(float[] a10, float[] b10, float[] c10, float[] d10, float[] p10, float[] q10) {
        if (b(a10, b10, c10) && b(a10, b10, d10)) {
            C13890g.w(p10, c10);
            C13890g.w(q10, d10);
            return b.Overlap;
        }
        if (b(c10, d10, a10) && b(c10, d10, b10)) {
            C13890g.w(p10, a10);
            C13890g.w(q10, b10);
            return b.Overlap;
        }
        if (b(a10, b10, c10) && b(c10, d10, b10)) {
            C13890g.w(p10, c10);
            C13890g.w(q10, b10);
            return b.Overlap;
        }
        if (b(a10, b10, c10) && b(c10, d10, a10)) {
            C13890g.w(p10, c10);
            C13890g.w(q10, a10);
            return b.Overlap;
        }
        if (b(a10, b10, d10) && b(c10, d10, b10)) {
            C13890g.w(p10, d10);
            C13890g.w(q10, b10);
            return b.Overlap;
        }
        if (!b(a10, b10, d10) || !b(c10, d10, a10)) {
            return b.None;
        }
        C13890g.w(p10, d10);
        C13890g.w(q10, a10);
        return b.Overlap;
    }

    public static b f(float[] a10, float[] b10, float[] c10, float[] d10, float[] p10, float[] q10) {
        Optional<U<Float, Float>> h10 = C13890g.h(a10, b10, c10, d10);
        if (h10.isPresent()) {
            float floatValue = h10.get().f94229a.floatValue();
            float floatValue2 = h10.get().f94230b.floatValue();
            if (floatValue >= 0.0f && floatValue <= 1.0f && floatValue2 >= 0.0f && floatValue2 <= 1.0f) {
                float f10 = a10[0];
                p10[0] = f10 + ((b10[0] - f10) * floatValue);
                float f11 = a10[1];
                p10[1] = f11 + ((b10[1] - f11) * floatValue);
                float f12 = a10[2];
                p10[2] = f12 + ((b10[2] - f12) * floatValue);
                return b.Single;
            }
        }
        return b.None;
    }
}
