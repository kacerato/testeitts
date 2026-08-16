package jn;

import java.util.ArrayList;
import java.util.List;

public class C13898o extends A {

    public static float f94275n = 0.999f;

    public C13898o(C13904v nav) {
        super(nav);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02c7  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public O<Integer> Q(int maxIter) {
        B b10;
        long j10;
        long j11;
        C13901s c13901s;
        G g10;
        long j12;
        B b11;
        G g11;
        int i10;
        long j13;
        C13901s c13901s2;
        G g12;
        C13901s c13901s3;
        C13901s c13901s4;
        long j14;
        long j15;
        B b12;
        int i11;
        float f10;
        boolean z10;
        K k10;
        long j16;
        long j17;
        float f11;
        float f12;
        int i12;
        int i13;
        int i14;
        K k11;
        if (!this.f94143d.f94188a.c()) {
            return O.g(this.f94143d.f94188a, 0);
        }
        if (!this.f94140a.S(this.f94143d.f94191d) || !this.f94140a.S(this.f94143d.f94192e)) {
            K k12 = this.f94143d;
            Q q10 = Q.FAILURE;
            k12.f94188a = q10;
            return O.g(q10, 0);
        }
        int i15 = maxIter;
        int i16 = 0;
        while (i16 < i15 && !this.f94142c.c()) {
            int i17 = i16 + 1;
            B f13 = this.f94142c.f();
            int i18 = f13.f94162g & (~B.f94153j);
            f13.f94162g = i18;
            f13.f94162g = i18 | B.f94154k;
            long j18 = f13.f94163h;
            K k13 = this.f94143d;
            if (j18 == k13.f94192e) {
                k13.f94189b = f13;
                Q q11 = Q.SUCCSESS;
                k13.f94188a = q11;
                return O.g(q11, Integer.valueOf(i17));
            }
            O<U<C13901s, G>> J10 = this.f94140a.J(j18);
            if (J10.a()) {
                K k14 = this.f94143d;
                Q q12 = Q.FAILURE;
                k14.f94188a = q12;
                return O.g(q12, Integer.valueOf(i17));
            }
            U<C13901s, G> u10 = J10.f94204a;
            C13901s c13901s5 = u10.f94229a;
            G g13 = u10.f94230b;
            int i19 = f13.f94160e;
            if (i19 != 0) {
                B g14 = this.f94141b.g(i19);
                long j19 = g14.f94163h;
                int i20 = g14.f94160e;
                if (i20 != 0) {
                    j11 = this.f94141b.g(i20).f94163h;
                    b10 = g14;
                    j10 = j19;
                } else {
                    b10 = g14;
                    j10 = j19;
                    j11 = 0;
                }
            } else {
                b10 = null;
                j10 = 0;
                j11 = 0;
            }
            if (j10 != 0) {
                O<U<C13901s, G>> J11 = this.f94140a.J(j10);
                if (J11.a() || !(j11 == 0 || this.f94140a.S(j11))) {
                    K k15 = this.f94143d;
                    Q q13 = Q.FAILURE;
                    k15.f94188a = q13;
                    return O.g(q13, Integer.valueOf(i17));
                }
                U<C13901s, G> u11 = J11.f94204a;
                C13901s c13901s6 = u11.f94229a;
                g10 = u11.f94230b;
                c13901s = c13901s6;
            } else {
                c13901s = null;
                g10 = null;
            }
            boolean z11 = ((this.f94143d.f94196i & 2) == 0 || j10 == 0 || C13890g.E(b10.f94157b, f13.f94157b) >= this.f94143d.f94197j) ? false : true;
            int i21 = c13901s5.f94322d[g13.f94176a];
            while (i21 != -1) {
                long j20 = c13901s5.f94323e.get(i21).f94276a;
                if (j20 == 0) {
                    j12 = j10;
                    b11 = b10;
                    g11 = g13;
                    i10 = i17;
                    j13 = j18;
                    c13901s2 = c13901s5;
                } else if (j20 == j10) {
                    j12 = j10;
                    b11 = b10;
                    g11 = g13;
                    c13901s2 = c13901s5;
                    i10 = i17;
                    j13 = j18;
                } else {
                    U<C13901s, G> K10 = this.f94140a.K(j20);
                    long j21 = j10;
                    C13901s c13901s7 = K10.f94229a;
                    G g15 = K10.f94230b;
                    if (this.f94143d.f94195h.b(j20, c13901s7, g15)) {
                        i10 = i17;
                        B f14 = this.f94141b.f(j20, 0);
                        int i22 = f14.f94160e;
                        if (i22 == 0 || i22 != f13.f94160e) {
                            if (f14.f94162g == 0) {
                                j14 = j20;
                                g12 = g15;
                                j12 = j21;
                                c13901s3 = c13901s7;
                                j15 = j18;
                                b12 = b10;
                                i11 = i21;
                                g11 = g13;
                                c13901s4 = c13901s5;
                                O<float[]> w10 = w(j18, g13, c13901s5, j14, g12, c13901s3);
                                if (!w10.a()) {
                                    f14.f94157b = w10.f94204a;
                                }
                            } else {
                                g12 = g15;
                                c13901s3 = c13901s7;
                                g11 = g13;
                                c13901s4 = c13901s5;
                                j12 = j21;
                                j14 = j20;
                                j15 = j18;
                                b12 = b10;
                                i11 = i21;
                            }
                            float f15 = 0.0f;
                            if (z11) {
                                O<N> P10 = P(j12, b12.f94157b, f14.f94157b, this.f94143d.f94195h, 1, j11);
                                if (P10.j()) {
                                    N n10 = P10.f94204a;
                                    z10 = n10.f94199a >= 1.0f;
                                    f10 = z10 ? b12.f94158c + n10.f94202d : 0.0f;
                                    if (z10) {
                                        L l10 = this.f94143d.f94195h;
                                        float[] fArr = f13.f94157b;
                                        float[] fArr2 = f14.f94157b;
                                        i21 = i11;
                                        j13 = j15;
                                        b11 = b12;
                                        f10 = l10.a(fArr, fArr2, j12, c13901s, g10, j13, c13901s4, g11, j14, c13901s3, g12) + f13.f94158c;
                                    } else {
                                        i21 = i11;
                                        b11 = b12;
                                        j13 = j15;
                                    }
                                    k10 = this.f94143d;
                                    j16 = j14;
                                    if (j16 != k10.f94192e) {
                                        j17 = j16;
                                        f10 += k10.f94195h.a(f14.f94157b, k10.f94194g, j13, c13901s4, g11, j17, c13901s3, g12, 0L, null, null);
                                    } else {
                                        j17 = j16;
                                        f15 = C13890g.z(f14.f94157b, k10.f94194g) * f94275n;
                                    }
                                    f11 = f15;
                                    f12 = f10 + f11;
                                    i12 = f14.f94162g;
                                    if (((B.f94153j & i12) != 0 || f12 < f14.f94159d) && ((i12 & B.f94154k) == 0 || f12 < f14.f94159d)) {
                                        f14.f94160e = !z10 ? f13.f94160e : this.f94141b.h(f13);
                                        f14.f94163h = j17;
                                        int i23 = f14.f94162g;
                                        int i24 = B.f94154k;
                                        int i25 = B.f94155l;
                                        int i26 = i23 & (~(i24 | i25));
                                        f14.f94162g = i26;
                                        f14.f94158c = f10;
                                        f14.f94159d = f12;
                                        if (z10) {
                                            f14.f94162g = i26 | i25;
                                        }
                                        i13 = f14.f94162g;
                                        i14 = B.f94153j;
                                        if ((i13 & i14) == 0) {
                                            this.f94142c.e(f14);
                                        } else {
                                            f14.f94162g = i13 | i14;
                                            this.f94142c.g(f14);
                                        }
                                        k11 = this.f94143d;
                                        if (f11 < k11.f94190c) {
                                            k11.f94190c = f11;
                                            k11.f94189b = f14;
                                        }
                                    }
                                    c13901s2 = c13901s4;
                                }
                            }
                            f10 = 0.0f;
                            z10 = false;
                            if (z10) {
                            }
                            k10 = this.f94143d;
                            j16 = j14;
                            if (j16 != k10.f94192e) {
                            }
                            f11 = f15;
                            f12 = f10 + f11;
                            i12 = f14.f94162g;
                            if ((B.f94153j & i12) != 0) {
                            }
                            f14.f94160e = !z10 ? f13.f94160e : this.f94141b.h(f13);
                            f14.f94163h = j17;
                            int i232 = f14.f94162g;
                            int i242 = B.f94154k;
                            int i252 = B.f94155l;
                            int i262 = i232 & (~(i242 | i252));
                            f14.f94162g = i262;
                            f14.f94158c = f10;
                            f14.f94159d = f12;
                            if (z10) {
                            }
                            i13 = f14.f94162g;
                            i14 = B.f94153j;
                            if ((i13 & i14) == 0) {
                            }
                            k11 = this.f94143d;
                            if (f11 < k11.f94190c) {
                            }
                            c13901s2 = c13901s4;
                        } else {
                            b11 = b10;
                            g11 = g13;
                            c13901s2 = c13901s5;
                        }
                    } else {
                        b11 = b10;
                        g11 = g13;
                        c13901s2 = c13901s5;
                        i10 = i17;
                    }
                    j13 = j18;
                    j12 = j21;
                }
                i21 = c13901s2.f94323e.get(i21).f94277b;
                c13901s5 = c13901s2;
                j18 = j13;
                i17 = i10;
                j10 = j12;
                g13 = g11;
                b10 = b11;
            }
            i15 = maxIter;
            i16 = i17;
        }
        if (this.f94142c.c()) {
            this.f94143d.f94188a = Q.PARTIAL_RESULT;
        }
        return O.g(this.f94143d.f94188a, Integer.valueOf(i16));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public O<List<Long>> f() {
        ArrayList arrayList = new ArrayList(64);
        if (this.f94143d.f94188a.b()) {
            this.f94143d = new K();
            return O.c(arrayList);
        }
        K k10 = this.f94143d;
        long j10 = k10.f94191d;
        long j11 = k10.f94192e;
        if (j10 == j11) {
            arrayList.add(Long.valueOf(j10));
        } else {
            B b10 = k10.f94189b;
            if (b10.f94163h != j11) {
                k10.f94188a = Q.PARTIAL_RESULT;
            }
            B b11 = null;
            int i10 = 0;
            while (true) {
                B g10 = this.f94141b.g(b10.f94160e);
                b10.f94160e = this.f94141b.h(b11);
                int i11 = b10.f94162g;
                int i12 = B.f94155l;
                int i13 = i11 & i12;
                b10.f94162g = (i11 & (~i12)) | i10;
                if (g10 == null) {
                    break;
                }
                b11 = b10;
                b10 = g10;
                i10 = i13;
            }
            while (true) {
                B g11 = this.f94141b.g(b10.f94160e);
                if ((b10.f94162g & B.f94155l) != 0) {
                    O<N> P10 = P(b10.f94163h, b10.f94157b, g11.f94157b, this.f94143d.f94195h, 0, 0L);
                    if (P10.j()) {
                        arrayList.addAll(P10.f94204a.f94201c);
                    }
                    if (((Long) arrayList.get(arrayList.size() - 1)).longValue() == g11.f94163h) {
                        arrayList.remove(arrayList.size() - 1);
                    }
                } else {
                    arrayList.add(Long.valueOf(b10.f94163h));
                }
                if (g11 == null) {
                    break;
                }
                b10 = g11;
            }
        }
        Q q10 = this.f94143d.f94188a;
        this.f94143d = new K();
        return O.g(q10, arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public O<List<Long>> g(List<Long> existing) {
        ArrayList arrayList = new ArrayList(64);
        if (existing == null || existing.size() <= 0) {
            return O.c(arrayList);
        }
        if (this.f94143d.f94188a.b()) {
            this.f94143d = new K();
            return O.c(arrayList);
        }
        K k10 = this.f94143d;
        long j10 = k10.f94191d;
        if (j10 == k10.f94192e) {
            arrayList.add(Long.valueOf(j10));
        } else {
            B b10 = null;
            for (int size = existing.size() - 1; size >= 0; size--) {
                b10 = this.f94141b.c(existing.get(size).longValue());
                if (b10 != null) {
                    break;
                }
            }
            if (b10 == null) {
                K k11 = this.f94143d;
                k11.f94188a = Q.PARTIAL_RESULT;
                b10 = k11.f94189b;
            }
            int i10 = 0;
            B b11 = null;
            B b12 = b10;
            while (true) {
                B g10 = this.f94141b.g(b12.f94160e);
                b12.f94160e = this.f94141b.h(b11);
                int i11 = b12.f94162g;
                int i12 = B.f94155l;
                int i13 = i11 & i12;
                b12.f94162g = i10 | (i11 & (~i12));
                if (g10 == null) {
                    break;
                }
                b11 = b12;
                b12 = g10;
                i10 = i13;
            }
            while (true) {
                B g11 = this.f94141b.g(b12.f94160e);
                if ((b12.f94162g & B.f94155l) != 0) {
                    O<N> P10 = P(b12.f94163h, b12.f94157b, g11.f94157b, this.f94143d.f94195h, 0, 0L);
                    if (P10.j()) {
                        arrayList.addAll(P10.f94204a.f94201c);
                    }
                    if (((Long) arrayList.get(arrayList.size() - 1)).longValue() == g11.f94163h) {
                        arrayList.remove(arrayList.size() - 1);
                    }
                } else {
                    arrayList.add(Long.valueOf(b12.f94163h));
                }
                if (g11 == null) {
                    break;
                }
                b12 = g11;
            }
        }
        Q q10 = this.f94143d.f94188a;
        this.f94143d = new K();
        return O.g(q10, arrayList);
    }

    @Override
    public O<C13891h> h(long startRef, float[] centerPos, float maxRadius, L filter) {
        float[] fArr;
        long j10;
        int i10;
        G g10;
        int i11;
        float[] fArr2;
        B b10;
        long j11;
        B b11;
        B b12;
        long j12;
        boolean z10;
        float[] fArr3 = centerPos;
        L l10 = filter;
        if (!this.f94140a.S(startRef) || fArr3 == null || !C13890g.I(centerPos) || maxRadius < 0.0f || !Float.isFinite(maxRadius) || l10 == null) {
            return O.e();
        }
        this.f94141b.a();
        this.f94142c.b();
        B e10 = this.f94141b.e(startRef);
        C13890g.w(e10.f94157b, fArr3);
        e10.f94160e = 0;
        e10.f94158c = 0.0f;
        e10.f94159d = 0.0f;
        e10.f94163h = startRef;
        e10.f94162g = B.f94153j;
        this.f94142c.g(e10);
        float s10 = C13890g.s(maxRadius);
        int i12 = 3;
        float[] fArr4 = new float[3];
        W w10 = null;
        W w11 = null;
        while (!this.f94142c.c()) {
            B f10 = this.f94142c.f();
            int i13 = f10.f94162g & (~B.f94153j);
            f10.f94162g = i13;
            f10.f94162g = i13 | B.f94154k;
            long j13 = f10.f94163h;
            U<C13901s, G> K10 = this.f94140a.K(j13);
            C13901s c13901s = K10.f94229a;
            G g11 = K10.f94230b;
            int i14 = f10.f94160e;
            if (i14 != 0) {
                fArr = fArr4;
                j10 = this.f94141b.g(i14).f94163h;
            } else {
                fArr = fArr4;
                j10 = 0;
            }
            float f11 = s10;
            W w12 = w10;
            W w13 = w11;
            int i15 = g11.f94180e - 1;
            int i16 = 0;
            while (true) {
                int i17 = -1;
                if (i16 >= g11.f94180e) {
                    break;
                }
                int i18 = g11.f94178c[i15];
                if ((i18 & 32768) != 0) {
                    int i19 = c13901s.f94322d[g11.f94176a];
                    while (true) {
                        if (i19 == i17) {
                            break;
                        }
                        C13899p c13899p = c13901s.f94323e.get(i19);
                        if (c13899p.f94278c == i15) {
                            long j14 = c13899p.f94276a;
                            if (j14 != 0) {
                                b12 = f10;
                                U<C13901s, G> K11 = this.f94140a.K(j14);
                                z10 = !l10.b(c13899p.f94276a, K11.f94229a, K11.f94230b);
                            }
                        } else {
                            i19 = c13901s.f94323e.get(i19).f94277b;
                            i17 = -1;
                        }
                    }
                    b12 = f10;
                    z10 = true;
                    if (!z10) {
                        j12 = j13;
                        f10 = b12;
                        j13 = j12;
                        int i20 = i16;
                        i16++;
                        i15 = i20;
                    }
                    j12 = j13;
                } else {
                    b12 = f10;
                    if (i18 != 0) {
                        int i21 = i18 - 1;
                        j12 = j13;
                        if (l10.b(i21 | this.f94140a.G(c13901s), c13901s, c13901s.f94321c.f94284c[i21])) {
                            f10 = b12;
                            j13 = j12;
                            int i202 = i16;
                            i16++;
                            i15 = i202;
                        }
                    }
                    j12 = j13;
                }
                int[] iArr = g11.f94177b;
                int i22 = iArr[i15] * 3;
                int i23 = iArr[i16] * 3;
                U<Float, Float> e11 = C13890g.e(fArr3, c13901s.f94321c.f94283b, i22, i23);
                float floatValue = e11.f94229a.floatValue();
                float floatValue2 = e11.f94230b.floatValue();
                if (floatValue <= f11) {
                    float[] fArr5 = c13901s.f94321c.f94283b;
                    float f12 = fArr5[i22];
                    fArr[0] = f12 + ((fArr5[i23] - f12) * floatValue2);
                    float f13 = fArr5[i22 + 1];
                    fArr[1] = f13 + ((fArr5[i23 + 1] - f13) * floatValue2);
                    float f14 = fArr5[i22 + 2];
                    fArr[2] = f14 + ((fArr5[i23 + 2] - f14) * floatValue2);
                    W w14 = new W(fArr5, i22);
                    w12 = new W(c13901s.f94321c.f94283b, i23);
                    w13 = w14;
                    f11 = floatValue;
                }
                f10 = b12;
                j13 = j12;
                int i2022 = i16;
                i16++;
                i15 = i2022;
            }
            long j15 = j13;
            B b13 = f10;
            int i24 = c13901s.f94322d[g11.f94176a];
            int i25 = -1;
            while (i24 != i25) {
                C13899p c13899p2 = c13901s.f94323e.get(i24);
                long j16 = c13899p2.f94276a;
                if (j16 == 0 || j16 == j10) {
                    i10 = i25;
                    g10 = g11;
                    i11 = i24;
                    fArr2 = fArr;
                    b10 = b13;
                } else {
                    U<C13901s, G> K12 = this.f94140a.K(j16);
                    C13901s c13901s2 = K12.f94229a;
                    G g12 = K12.f94230b;
                    int i26 = i24;
                    if (g12.b() == 1) {
                        i10 = i25;
                        g10 = g11;
                        fArr2 = fArr;
                        i11 = i26;
                        b10 = b13;
                    } else {
                        int[] iArr2 = g11.f94177b;
                        int i27 = c13899p2.f94278c;
                        if (C13890g.e(fArr3, c13901s.f94321c.f94283b, iArr2[i27] * 3, iArr2[(i27 + 1) % g11.f94180e] * 3).f94229a.floatValue() <= f11 && l10.b(j16, c13901s2, g12)) {
                            B e12 = this.f94141b.e(j16);
                            int i28 = e12.f94162g;
                            if ((B.f94154k & i28) == 0) {
                                if (i28 == 0) {
                                    i10 = -1;
                                    g10 = g11;
                                    j11 = j16;
                                    b10 = b13;
                                    fArr2 = fArr;
                                    i11 = i26;
                                    b11 = e12;
                                    O<float[]> w15 = w(j15, g11, c13901s, j16, g12, c13901s2);
                                    if (w15.j()) {
                                        b11.f94157b = w15.f94204a;
                                    }
                                } else {
                                    g10 = g11;
                                    j11 = j16;
                                    fArr2 = fArr;
                                    i11 = i26;
                                    b10 = b13;
                                    i10 = -1;
                                    b11 = e12;
                                }
                                float z11 = b10.f94159d + C13890g.z(b10.f94157b, b11.f94157b);
                                int i29 = b11.f94162g;
                                if ((B.f94153j & i29) == 0 || z11 < b11.f94159d) {
                                    b11.f94163h = j11;
                                    b11.f94162g = i29 & (~B.f94154k);
                                    b11.f94160e = this.f94141b.h(b10);
                                    b11.f94159d = z11;
                                    int i30 = b11.f94162g;
                                    int i31 = B.f94153j;
                                    if ((i30 & i31) != 0) {
                                        this.f94142c.e(b11);
                                    } else {
                                        b11.f94162g = i30 | i31;
                                        this.f94142c.g(b11);
                                    }
                                }
                            }
                        }
                        g10 = g11;
                        fArr2 = fArr;
                        i11 = i26;
                        b10 = b13;
                        i10 = -1;
                    }
                }
                i24 = c13901s.f94323e.get(i11).f94277b;
                fArr = fArr2;
                l10 = filter;
                b13 = b10;
                i25 = i10;
                g11 = g10;
                fArr3 = centerPos;
            }
            fArr3 = centerPos;
            l10 = filter;
            fArr4 = fArr;
            s10 = f11;
            w10 = w12;
            w11 = w13;
            i12 = 3;
        }
        float[] fArr6 = fArr4;
        float[] fArr7 = new float[i12];
        if (w10 != null && w11 != null) {
            float[] V10 = C13890g.V(w10, w11);
            fArr7[0] = V10[2];
            fArr7[1] = 0.0f;
            fArr7[2] = -V10[0];
            C13890g.R(fArr7);
        }
        return O.k(new C13891h((float) Math.sqrt(s10), fArr6, fArr7));
    }

    @Override
    public O<List<Long>> k(long startRef, long endRef, float[] startPos, float[] endPos, L filter) {
        G g10;
        C13901s c13901s;
        G g11;
        C13901s c13901s2;
        int i10;
        long j10;
        float[] fArr;
        long j11;
        B b10;
        boolean z10;
        int i11;
        G g12;
        C13901s c13901s3;
        B b11;
        B b12;
        float f10;
        long j12;
        float a10;
        float z11;
        C13898o c13898o = this;
        float[] fArr2 = endPos;
        L l10 = filter;
        if (!c13898o.f94140a.S(startRef) || !c13898o.f94140a.S(endRef) || startPos == null || !C13890g.I(startPos) || fArr2 == null || !C13890g.I(endPos) || l10 == null) {
            return O.e();
        }
        if (startRef == endRef) {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(Long.valueOf(startRef));
            return O.k(arrayList);
        }
        c13898o.f94141b.a();
        c13898o.f94142c.b();
        B e10 = c13898o.f94141b.e(startRef);
        C13890g.w(e10.f94157b, startPos);
        e10.f94160e = 0;
        e10.f94158c = 0.0f;
        e10.f94159d = C13890g.z(startPos, endPos) * f94275n;
        e10.f94163h = startRef;
        e10.f94162g = B.f94153j;
        c13898o.f94142c.g(e10);
        float f11 = e10.f94159d;
        Q q10 = Q.SUCCSESS;
        while (true) {
            if (c13898o.f94142c.c()) {
                break;
            }
            B f12 = c13898o.f94142c.f();
            int i12 = f12.f94162g & (~B.f94153j);
            f12.f94162g = i12;
            f12.f94162g = i12 | B.f94154k;
            long j13 = f12.f94163h;
            if (j13 == endRef) {
                e10 = f12;
                break;
            }
            U<C13901s, G> K10 = c13898o.f94140a.K(j13);
            C13901s c13901s4 = K10.f94229a;
            G g13 = K10.f94230b;
            int i13 = f12.f94160e;
            long j14 = i13 != 0 ? c13898o.f94141b.g(i13).f94163h : 0L;
            if (j14 != 0) {
                U<C13901s, G> K11 = c13898o.f94140a.K(j14);
                C13901s c13901s5 = K11.f94229a;
                g10 = K11.f94230b;
                c13901s = c13901s5;
            } else {
                g10 = null;
                c13901s = null;
            }
            float f13 = f11;
            int i14 = c13901s4.f94322d[g13.f94176a];
            B b13 = e10;
            while (i14 != -1) {
                long j15 = c13901s4.f94323e.get(i14).f94276a;
                if (j15 == 0 || j15 == j14) {
                    g11 = g13;
                } else {
                    U<C13901s, G> K12 = c13898o.f94140a.K(j15);
                    G g14 = g13;
                    C13901s c13901s6 = K12.f94229a;
                    G g15 = K12.f94230b;
                    if (l10.b(j15, c13901s6, g15)) {
                        if (c13901s4.f94323e.get(i14).f94279d != 255) {
                            z10 = true;
                            i11 = c13901s4.f94323e.get(i14).f94279d >> 1;
                        } else {
                            z10 = true;
                            i11 = 0;
                        }
                        B f14 = c13898o.f94141b.f(j15, i11);
                        if (f14.f94162g == 0) {
                            g12 = g15;
                            g11 = g14;
                            c13901s3 = c13901s6;
                            b11 = f14;
                            c13901s2 = c13901s4;
                            j10 = j13;
                            b12 = f12;
                            i10 = i14;
                            f10 = 0.0f;
                            O<float[]> w10 = w(j13, g11, c13901s4, j15, g12, c13901s3);
                            if (!w10.a()) {
                                b11.f94157b = w10.f94204a;
                            }
                            j12 = j15;
                        } else {
                            g11 = g14;
                            g12 = g15;
                            c13901s3 = c13901s6;
                            b11 = f14;
                            c13901s2 = c13901s4;
                            j10 = j13;
                            b12 = f12;
                            i10 = i14;
                            f10 = 0.0f;
                            j12 = j15;
                        }
                        if (j12 == endRef) {
                            j11 = j14;
                            fArr = endPos;
                            b10 = b12;
                            a10 = b10.f94158c + filter.a(b12.f94157b, b11.f94157b, j14, c13901s, g10, j10, c13901s2, g11, j12, c13901s3, g12) + filter.a(b11.f94157b, endPos, j10, c13901s2, g11, j12, c13901s3, g12, 0L, null, null);
                            z11 = f10;
                        } else {
                            fArr = endPos;
                            j11 = j14;
                            b10 = b12;
                            a10 = b10.f94158c + filter.a(b10.f94157b, b11.f94157b, j11, c13901s, g10, j10, c13901s2, g11, j12, c13901s3, g12);
                            z11 = C13890g.z(b11.f94157b, fArr) * f94275n;
                        }
                        float f15 = a10 + z11;
                        int i15 = b11.f94162g;
                        if (((B.f94153j & i15) == 0 || f15 < b11.f94159d) && ((i15 & B.f94154k) == 0 || f15 < b11.f94159d)) {
                            B b14 = b11;
                            c13898o = this;
                            b14.f94160e = c13898o.f94141b.h(b10);
                            b14.f94163h = j12;
                            int i16 = b14.f94162g & (~B.f94154k);
                            b14.f94162g = i16;
                            b14.f94158c = a10;
                            b14.f94159d = f15;
                            int i17 = B.f94153j;
                            if ((i16 & i17) != 0) {
                                c13898o.f94142c.e(b14);
                            } else {
                                b14.f94162g = i16 | i17;
                                c13898o.f94142c.g(b14);
                            }
                            if (z11 < f13) {
                                f13 = z11;
                                b13 = b14;
                            }
                        } else {
                            c13898o = this;
                        }
                        C13901s c13901s7 = c13901s2;
                        l10 = filter;
                        c13901s4 = c13901s7;
                        f12 = b10;
                        j14 = j11;
                        fArr2 = fArr;
                        g13 = g11;
                        j13 = j10;
                        i14 = c13901s7.f94323e.get(i10).f94277b;
                    } else {
                        g11 = g14;
                    }
                }
                c13901s2 = c13901s4;
                j10 = j13;
                b10 = f12;
                i10 = i14;
                j11 = j14;
                fArr = fArr2;
                C13901s c13901s72 = c13901s2;
                l10 = filter;
                c13901s4 = c13901s72;
                f12 = b10;
                j14 = j11;
                fArr2 = fArr;
                g13 = g11;
                j13 = j10;
                i14 = c13901s72.f94323e.get(i10).f94277b;
            }
            l10 = filter;
            f11 = f13;
            e10 = b13;
        }
        List<Long> z12 = c13898o.z(e10);
        if (e10.f94163h != endRef) {
            q10 = Q.PARTIAL_RESULT;
        }
        return O.g(q10, z12);
    }

    @Override
    public O<List<Long>> l(long startRef, long endRef, float[] startPos, float[] endPos, L filter, int options, float raycastLimit) {
        return k(startRef, endRef, startPos, endPos, filter);
    }
}
