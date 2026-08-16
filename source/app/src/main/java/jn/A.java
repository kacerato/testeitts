package jn;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Optional;
import java.util.Random;
import java.util.function.Consumer;
import jn.C13890g;

public class A {

    public static final int f94132f = 2;

    public static final int f94133g = 1;

    public static final int f94134h = 1;

    public static final int f94135i = 2;

    public static final int f94136j = 4;

    public static final int f94137k = 1;

    public static final int f94138l = 2;

    public static float f94139m = 0.003921569f;

    public final C13904v f94140a;

    public final C f94141b;

    public final E f94142c;

    public K f94143d;

    public final int f94144e;

    public static class b {

        public final float[] f94146a;

        public final float[] f94147b;

        public final int f94148c;

        public final int f94149d;

        public b(float[] left, float[] right, int fromType, int toType) {
            this.f94146a = left;
            this.f94147b = right;
            this.f94148c = fromType;
            this.f94149d = toType;
        }
    }

    public static class c {

        public long f94150a;

        public int f94151b;

        public int f94152c;

        public c(long ref, int tmin, int tmax) {
            this.f94150a = ref;
            this.f94151b = tmin;
            this.f94152c = tmax;
        }
    }

    public A(C13904v nav) {
        this.f94140a = nav;
        this.f94141b = new C();
        this.f94142c = new E();
        this.f94144e = 10000;
    }

    public O<Float> A(long ref, float[] pos) {
        O<U<C13901s, G>> J10 = this.f94140a.J(ref);
        if (J10.a()) {
            return O.h(J10.f94205b, J10.f94206c);
        }
        U<C13901s, G> u10 = J10.f94204a;
        C13901s c13901s = u10.f94229a;
        G g10 = u10.f94230b;
        if (pos == null || !C13890g.J(pos)) {
            return O.e();
        }
        if (g10.b() != 1) {
            Optional<Float> F10 = this.f94140a.F(c13901s, g10, pos);
            return F10.isPresent() ? O.k(F10.get()) : O.e();
        }
        int[] iArr = g10.f94177b;
        int i10 = iArr[0] * 3;
        float[] fArr = c13901s.f94321c.f94283b;
        float[] fArr2 = {fArr[i10], fArr[i10 + 1], fArr[i10 + 2]};
        int i11 = iArr[1] * 3;
        float[] fArr3 = {fArr[i11], fArr[i11 + 1], fArr[i11 + 2]};
        U<Float, Float> f10 = C13890g.f(pos, fArr2, fArr3);
        float f11 = fArr2[1];
        return O.k(Float.valueOf(f11 + ((fArr3[1] - f11) * f10.f94230b.floatValue())));
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x0196, code lost:
    
        if (r25.b(r2, r8, r8.f94321c.f94284c[r0]) == false) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public O<C13897n> B(long ref, boolean storePortals, L filter) {
        A a10;
        long j10;
        int i10;
        int i11;
        A a11 = this;
        O<U<C13901s, G>> J10 = a11.f94140a.J(ref);
        if (J10.a()) {
            return O.h(J10.f94205b, J10.f94206c);
        }
        if (filter == null) {
            return O.e();
        }
        U<C13901s, G> u10 = J10.f94204a;
        C13901s c13901s = u10.f94229a;
        G g10 = u10.f94230b;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList(16);
        int i12 = g10.f94180e - 1;
        for (int i13 = 0; i13 < g10.f94180e; i13++) {
            arrayList3.clear();
            int i14 = g10.f94178c[i12];
            if ((32768 & i14) != 0) {
                int i15 = c13901s.f94322d[g10.f94176a];
                while (i15 != -1) {
                    C13899p c13899p = c13901s.f94323e.get(i15);
                    if (c13899p.f94278c == i12) {
                        int i16 = i12;
                        long j11 = c13899p.f94276a;
                        if (j11 != 0) {
                            U<C13901s, G> K10 = a11.f94140a.K(j11);
                            if (filter.b(c13899p.f94276a, K10.f94229a, K10.f94230b)) {
                                i10 = i15;
                                i11 = i16;
                                H(arrayList3, c13899p.f94280e, c13899p.f94281f, c13899p.f94276a);
                                i15 = c13901s.f94323e.get(i10).f94277b;
                                a11 = this;
                                i12 = i11;
                            }
                        }
                        i11 = i16;
                        i10 = i15;
                    } else {
                        i10 = i15;
                        i11 = i12;
                    }
                    i15 = c13901s.f94323e.get(i10).f94277b;
                    a11 = this;
                    i12 = i11;
                }
                int i17 = 6;
                H(arrayList3, -1, 0, 0L);
                H(arrayList3, 255, 256, 0L);
                int[] iArr = g10.f94177b;
                int i18 = iArr[i12] * 3;
                int i19 = iArr[i13] * 3;
                int i20 = 1;
                while (i20 < arrayList3.size()) {
                    if (storePortals && arrayList3.get(i20).f94150a != 0) {
                        float[] fArr = new float[i17];
                        System.arraycopy(C13890g.M(c13901s.f94321c.f94283b, i18, i19, arrayList3.get(i20).f94151b / 255.0f), 0, fArr, 0, 3);
                        System.arraycopy(C13890g.M(c13901s.f94321c.f94283b, i18, i19, arrayList3.get(i20).f94152c / 255.0f), 0, fArr, 3, 3);
                        arrayList2.add(fArr);
                        arrayList.add(Long.valueOf(arrayList3.get(i20).f94150a));
                    }
                    int i21 = arrayList3.get(i20 - 1).f94152c;
                    int i22 = arrayList3.get(i20).f94151b;
                    if (i21 != i22) {
                        float[] fArr2 = new float[6];
                        System.arraycopy(C13890g.M(c13901s.f94321c.f94283b, i18, i19, i21 / 255.0f), 0, fArr2, 0, 3);
                        System.arraycopy(C13890g.M(c13901s.f94321c.f94283b, i18, i19, i22 / 255.0f), 0, fArr2, 3, 3);
                        arrayList2.add(fArr2);
                        arrayList.add(0L);
                    }
                    i20++;
                    i17 = 6;
                }
                a10 = this;
            } else {
                int i23 = i12;
                if (i14 != 0) {
                    int i24 = i14 - 1;
                    a10 = this;
                    j10 = a10.f94140a.G(c13901s) | i24;
                } else {
                    a10 = this;
                }
                j10 = 0;
                if (j10 == 0 || storePortals) {
                    int[] iArr2 = g10.f94177b;
                    int i25 = iArr2[i23] * 3;
                    int i26 = iArr2[i13] * 3;
                    float[] fArr3 = new float[6];
                    System.arraycopy(c13901s.f94321c.f94283b, i25, fArr3, 0, 3);
                    System.arraycopy(c13901s.f94321c.f94283b, i26, fArr3, 3, 3);
                    arrayList2.add(fArr3);
                    arrayList.add(Long.valueOf(j10));
                    a11 = a10;
                    i12 = i13;
                }
            }
            a11 = a10;
            i12 = i13;
        }
        return O.k(new C13897n(arrayList2, arrayList));
    }

    public O<b> C(long from, long to) {
        O<U<C13901s, G>> J10 = this.f94140a.J(from);
        if (J10.a()) {
            return O.h(J10.f94205b, J10.f94206c);
        }
        U<C13901s, G> u10 = J10.f94204a;
        C13901s c13901s = u10.f94229a;
        G g10 = u10.f94230b;
        int b10 = g10.b();
        O<U<C13901s, G>> J11 = this.f94140a.J(to);
        if (J11.a()) {
            return O.h(J11.f94205b, J11.f94206c);
        }
        U<C13901s, G> u11 = J11.f94204a;
        C13901s c13901s2 = u11.f94229a;
        G g11 = u11.f94230b;
        return D(from, g10, c13901s, to, g11, c13901s2, b10, g11.b());
    }

    public O<b> D(long from, G fromPoly, C13901s fromTile, long to, G toPoly, C13901s toTile, int fromType, int toType) {
        C13899p c13899p;
        int i10;
        float[] fArr = new float[3];
        float[] fArr2 = new float[3];
        int i11 = fromTile.f94322d[fromPoly.f94176a];
        while (true) {
            if (i11 == -1) {
                c13899p = null;
                break;
            }
            if (fromTile.f94323e.get(i11).f94276a == to) {
                c13899p = fromTile.f94323e.get(i11);
                break;
            }
            i11 = fromTile.f94323e.get(i11).f94277b;
        }
        if (c13899p == null) {
            return O.f("No link found");
        }
        if (fromPoly.b() == 1) {
            int i12 = fromTile.f94322d[fromPoly.f94176a];
            while (i12 != -1) {
                if (fromTile.f94323e.get(i12).f94276a == to) {
                    int i13 = fromTile.f94323e.get(i12).f94278c;
                    System.arraycopy(fromTile.f94321c.f94283b, fromPoly.f94177b[i13] * 3, fArr, 0, 3);
                    System.arraycopy(fromTile.f94321c.f94283b, fromPoly.f94177b[i13] * 3, fArr2, 0, 3);
                    return O.k(new b(fArr, fArr2, fromType, toType));
                }
                i12 = fromTile.f94323e.get(i12).f94277b;
            }
            return O.f("Invalid offmesh from connection");
        }
        if (toPoly.b() == 1) {
            int i14 = toTile.f94322d[toPoly.f94176a];
            while (i14 != -1) {
                if (toTile.f94323e.get(i14).f94276a == from) {
                    int i15 = toTile.f94323e.get(i14).f94278c;
                    System.arraycopy(toTile.f94321c.f94283b, toPoly.f94177b[i15] * 3, fArr, 0, 3);
                    System.arraycopy(toTile.f94321c.f94283b, toPoly.f94177b[i15] * 3, fArr2, 0, 3);
                    return O.k(new b(fArr, fArr2, fromType, toType));
                }
                i14 = toTile.f94323e.get(i14).f94277b;
            }
            return O.f("Invalid offmesh to connection");
        }
        int[] iArr = fromPoly.f94177b;
        int i16 = c13899p.f94278c;
        int i17 = iArr[i16];
        int i18 = iArr[(i16 + 1) % fromPoly.f94180e];
        int i19 = i17 * 3;
        System.arraycopy(fromTile.f94321c.f94283b, i19, fArr, 0, 3);
        int i20 = i18 * 3;
        System.arraycopy(fromTile.f94321c.f94283b, i20, fArr2, 0, 3);
        if (c13899p.f94279d != 255 && ((i10 = c13899p.f94280e) != 0 || c13899p.f94281f != 255)) {
            fArr = C13890g.M(fromTile.f94321c.f94283b, i19, i20, i10 * 0.003921569f);
            fArr2 = C13890g.M(fromTile.f94321c.f94283b, i19, i20, c13899p.f94281f * 0.003921569f);
        }
        return O.k(new b(fArr, fArr2, fromType, toType));
    }

    public Q E(long startRef, long endRef, float[] startPos, float[] endPos, L filter, int options) {
        return G(startRef, endRef, startPos, endPos, filter, options, new C13888e(), -1.0f);
    }

    public Q F(long startRef, long endRef, float[] startPos, float[] endPos, L filter, int options, float raycastLimit) {
        return G(startRef, endRef, startPos, endPos, filter, options, new C13888e(), raycastLimit);
    }

    public Q G(long startRef, long endRef, float[] startPos, float[] endPos, L filter, int options, M heuristic, float raycastLimit) {
        K k10 = new K();
        this.f94143d = k10;
        k10.f94188a = Q.FAILURE;
        k10.f94191d = startRef;
        k10.f94192e = endRef;
        C13890g.w(k10.f94193f, startPos);
        C13890g.w(this.f94143d.f94194g, endPos);
        K k11 = this.f94143d;
        k11.f94195h = filter;
        k11.f94196i = options;
        k11.f94198k = heuristic;
        k11.f94197j = C13890g.s(raycastLimit);
        if (!this.f94140a.S(startRef) || !this.f94140a.S(endRef) || startPos == null || !C13890g.I(startPos) || endPos == null || !C13890g.I(endPos) || filter == null) {
            return Q.FAILURE_INVALID_PARAM;
        }
        if ((options & 2) != 0 && raycastLimit < 0.0f) {
            float f10 = this.f94140a.M(startRef).f94321c.f94282a.f94314q;
            this.f94143d.f94197j = C13890g.s(f10 * C13904v.f94336t);
        }
        if (startRef == endRef) {
            K k12 = this.f94143d;
            Q q10 = Q.SUCCSESS;
            k12.f94188a = q10;
            return q10;
        }
        this.f94141b.a();
        this.f94142c.b();
        B e10 = this.f94141b.e(startRef);
        C13890g.w(e10.f94157b, startPos);
        e10.f94160e = 0;
        e10.f94158c = 0.0f;
        e10.f94159d = heuristic.a(startPos, endPos);
        e10.f94163h = startRef;
        e10.f94162g = B.f94153j;
        this.f94142c.g(e10);
        K k13 = this.f94143d;
        Q q11 = Q.IN_PROGRESS;
        k13.f94188a = q11;
        k13.f94189b = e10;
        k13.f94190c = e10.f94159d;
        return q11;
    }

    public void H(List<c> ints, int tmin, int tmax, long ref) {
        int i10 = 0;
        while (i10 < ints.size() && tmax > ints.get(i10).f94151b) {
            i10++;
        }
        ints.add(i10, new c(ref, tmin, tmax));
    }

    public boolean I(long ref) {
        C c10 = this.f94141b;
        if (c10 == null) {
            return false;
        }
        Iterator<B> it = c10.d(ref).iterator();
        while (it.hasNext()) {
            if ((it.next().f94162g & B.f94154k) != 0) {
                return true;
            }
        }
        return false;
    }

    public boolean J(long ref, L filter) {
        O<U<C13901s, G>> J10 = this.f94140a.J(ref);
        if (J10.a()) {
            return false;
        }
        U<C13901s, G> u10 = J10.f94204a;
        return filter.b(ref, u10.f94229a, u10.f94230b);
    }

    public O<C13902t> L(long startRef, float[] startPos, float[] endPos, L filter) {
        float f10;
        float[] fArr;
        G g10;
        float[] fArr2;
        float f11;
        B b10;
        float[] fArr3;
        int i10;
        int i11;
        float[] fArr4;
        B b11;
        LinkedList linkedList;
        float[] fArr5;
        B b12;
        LinkedList linkedList2;
        float f12;
        float f13;
        float[] fArr6;
        float[] fArr7;
        float f14;
        if (!this.f94140a.S(startRef) || startPos == null || !C13890g.I(startPos) || endPos == null || !C13890g.I(endPos) || filter == null) {
            return O.e();
        }
        C c10 = new C();
        B e10 = c10.e(startRef);
        int i12 = 0;
        e10.f94160e = 0;
        e10.f94158c = 0.0f;
        e10.f94159d = 0.0f;
        e10.f94163h = startRef;
        e10.f94162g = B.f94154k;
        LinkedList linkedList3 = new LinkedList();
        linkedList3.add(e10);
        char c11 = 3;
        float[] fArr8 = new float[3];
        C13890g.w(fArr8, startPos);
        float[] N10 = C13890g.N(startPos, endPos, 0.5f);
        float s10 = C13890g.s((C13890g.z(startPos, endPos) / 2.0f) + 0.001f);
        float[] fArr9 = new float[this.f94140a.y() * 3];
        float f15 = Float.MAX_VALUE;
        B b13 = null;
        while (true) {
            if (linkedList3.isEmpty()) {
                break;
            }
            B b14 = (B) linkedList3.pop();
            float f16 = f15;
            U<C13901s, G> K10 = this.f94140a.K(b14.f94163h);
            C13901s c13901s = K10.f94229a;
            G g11 = K10.f94230b;
            int i13 = g11.f94180e;
            while (i12 < i13) {
                System.arraycopy(c13901s.f94321c.f94283b, g11.f94177b[i12] * 3, fArr9, i12 * 3, 3);
                i12++;
                b13 = b13;
                c11 = 3;
                b14 = b14;
                linkedList3 = linkedList3;
            }
            LinkedList linkedList4 = linkedList3;
            B b15 = b13;
            B b16 = b14;
            if (C13890g.p(endPos, fArr9, i13)) {
                C13890g.w(fArr8, endPos);
                b13 = b16;
                break;
            }
            float f17 = f16;
            B b17 = b15;
            float[] fArr10 = fArr8;
            int i14 = g11.f94180e - 1;
            for (int i15 = 0; i15 < g11.f94180e; i15++) {
                long[] jArr = new long[8];
                int i16 = g11.f94178c[i14];
                if ((i16 & 32768) != 0) {
                    fArr2 = fArr10;
                    int i17 = c13901s.f94322d[g11.f94176a];
                    g10 = g11;
                    int i18 = 0;
                    while (i17 != -1) {
                        C13899p c13899p = c13901s.f94323e.get(i17);
                        B b18 = b17;
                        if (c13899p.f94278c == i14) {
                            f14 = f17;
                            long j10 = c13899p.f94276a;
                            if (j10 != 0) {
                                f13 = s10;
                                U<C13901s, G> K11 = this.f94140a.K(j10);
                                fArr6 = N10;
                                fArr7 = fArr9;
                                if (filter.b(c13899p.f94276a, K11.f94229a, K11.f94230b)) {
                                    if (i18 < 8) {
                                        jArr[i18] = c13899p.f94276a;
                                        i18++;
                                    }
                                    i17 = c13901s.f94323e.get(i17).f94277b;
                                    N10 = fArr6;
                                    b17 = b18;
                                    f17 = f14;
                                    s10 = f13;
                                    fArr9 = fArr7;
                                }
                            } else {
                                f13 = s10;
                                fArr6 = N10;
                                fArr7 = fArr9;
                            }
                        } else {
                            f13 = s10;
                            fArr6 = N10;
                            fArr7 = fArr9;
                            f14 = f17;
                        }
                        i17 = c13901s.f94323e.get(i17).f94277b;
                        N10 = fArr6;
                        b17 = b18;
                        f17 = f14;
                        s10 = f13;
                        fArr9 = fArr7;
                    }
                    f10 = s10;
                    fArr = fArr9;
                    f11 = f17;
                    b10 = b17;
                    fArr3 = N10;
                    i11 = i18;
                    i10 = 0;
                } else {
                    f10 = s10;
                    fArr = fArr9;
                    g10 = g11;
                    fArr2 = fArr10;
                    f11 = f17;
                    b10 = b17;
                    fArr3 = N10;
                    if (i16 != 0) {
                        int i19 = i16 - 1;
                        long G10 = this.f94140a.G(c13901s) | i19;
                        if (filter.b(G10, c13901s, c13901s.f94321c.f94284c[i19])) {
                            i10 = 0;
                            jArr[0] = G10;
                            i11 = 1;
                        }
                    }
                    i10 = 0;
                    i11 = 0;
                }
                if (i11 == 0) {
                    int i20 = i14 * 3;
                    int i21 = i15 * 3;
                    fArr4 = fArr;
                    U<Float, Float> e11 = C13890g.e(endPos, fArr4, i20, i21);
                    float floatValue = e11.f94229a.floatValue();
                    float floatValue2 = e11.f94230b.floatValue();
                    if (floatValue < f11) {
                        fArr5 = C13890g.M(fArr4, i20, i21, floatValue2);
                        f12 = floatValue;
                        b10 = b16;
                    } else {
                        fArr5 = fArr2;
                        f12 = f11;
                    }
                    f11 = f12;
                    b11 = b16;
                    linkedList = linkedList4;
                } else {
                    fArr4 = fArr;
                    int i22 = i10;
                    while (i22 < i11) {
                        B e12 = c10.e(jArr[i22]);
                        if ((e12.f94162g & B.f94154k) == 0 && C13890g.e(fArr3, fArr4, i14 * 3, i15 * 3).f94229a.floatValue() <= f10) {
                            b12 = b16;
                            e12.f94160e = c10.h(b12);
                            e12.f94162g |= B.f94154k;
                            linkedList2 = linkedList4;
                            linkedList2.add(e12);
                        } else {
                            b12 = b16;
                            linkedList2 = linkedList4;
                        }
                        i22++;
                        linkedList4 = linkedList2;
                        b16 = b12;
                    }
                    b11 = b16;
                    linkedList = linkedList4;
                    fArr5 = fArr2;
                }
                fArr10 = fArr5;
                fArr9 = fArr4;
                linkedList4 = linkedList;
                b16 = b11;
                N10 = fArr3;
                g11 = g10;
                b17 = b10;
                f17 = f11;
                s10 = f10;
                i14 = i15;
            }
            linkedList3 = linkedList4;
            fArr8 = fArr10;
            b13 = b17;
            f15 = f17;
            c11 = 3;
            i12 = 0;
        }
        ArrayList arrayList = new ArrayList();
        if (b13 != null) {
            B b19 = b13;
            B b20 = null;
            while (true) {
                B g12 = c10.g(b19.f94160e);
                b19.f94160e = c10.h(b20);
                if (g12 == null) {
                    break;
                }
                b20 = b19;
                b19 = g12;
            }
            do {
                arrayList.add(Long.valueOf(b19.f94163h));
                b19 = c10.g(b19.f94160e);
            } while (b19 != null);
        }
        return O.k(new C13902t(fArr8, arrayList));
    }

    public Q M(float[] center, float[] halfExtents, final L filter, final I query) {
        if (center == null || !C13890g.I(center) || halfExtents == null || !C13890g.I(halfExtents) || filter == null) {
            return Q.FAILURE_INVALID_PARAM;
        }
        final float[] W10 = C13890g.W(center, halfExtents);
        final float[] v10 = C13890g.v(center, halfExtents);
        O(center, halfExtents).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                A.this.K(W10, v10, filter, query, (C13901s) obj);
            }
        });
        return Q.SUCCSESS;
    }

    public void K(C13901s tile, float[] qmin, float[] qmax, L filter, I query) {
        int i10;
        int i11;
        C13900q c13900q = tile.f94321c;
        boolean z10 = true;
        if (c13900q.f94288g != null) {
            r rVar = c13900q.f94282a;
            float[] fArr = rVar.f94316s;
            float[] fArr2 = rVar.f94317t;
            float f10 = rVar.f94318u;
            int[] iArr = {((int) ((C13890g.a(qmin[0], fArr[0], fArr2[0]) - fArr[0]) * f10)) & 2147483646, ((int) ((C13890g.a(qmin[1], fArr[1], fArr2[1]) - fArr[1]) * f10)) & 2147483646, ((int) ((C13890g.a(qmin[2], fArr[2], fArr2[2]) - fArr[2]) * f10)) & 2147483646};
            int[] iArr2 = {((int) (((C13890g.a(qmax[0], fArr[0], fArr2[0]) - fArr[0]) * f10) + 1.0f)) | 1, ((int) (((C13890g.a(qmax[1], fArr[1], fArr2[1]) - fArr[1]) * f10) + 1.0f)) | 1, ((int) ((f10 * (C13890g.a(qmax[2], fArr[2], fArr2[2]) - fArr[2])) + 1.0f)) | 1};
            long G10 = this.f94140a.G(tile);
            int i12 = tile.f94321c.f94282a.f94310m;
            int i13 = 0;
            while (i13 < i12) {
                C13884a c13884a = tile.f94321c.f94288g[i13];
                boolean n10 = C13890g.n(iArr, iArr2, c13884a.f94236a, c13884a.f94237b);
                int i14 = c13884a.f94238c;
                boolean z11 = i14 >= 0 ? z10 : false;
                if (z11 && n10) {
                    i11 = i13;
                    long j10 = i14 | G10;
                    if (filter.b(j10, tile, tile.f94321c.f94284c[i14])) {
                        query.a(tile, tile.f94321c.f94284c[c13884a.f94238c], j10);
                    }
                } else {
                    i11 = i13;
                }
                i13 = (n10 || z11) ? i11 + 1 : i11 + (-c13884a.f94238c);
                z10 = true;
            }
            return;
        }
        int i15 = 3;
        float[] fArr3 = new float[3];
        float[] fArr4 = new float[3];
        long G11 = this.f94140a.G(tile);
        int i16 = 0;
        while (true) {
            C13900q c13900q2 = tile.f94321c;
            if (i16 >= c13900q2.f94282a.f94304g) {
                return;
            }
            G g10 = c13900q2.f94284c[i16];
            if (g10.b() != 1) {
                long j11 = G11 | i16;
                if (filter.b(j11, tile, g10)) {
                    int i17 = g10.f94177b[0] * i15;
                    C13890g.x(fArr3, tile.f94321c.f94283b, i17);
                    C13890g.x(fArr4, tile.f94321c.f94283b, i17);
                    for (int i18 = 1; i18 < g10.f94180e; i18++) {
                        int i19 = g10.f94177b[i18] * 3;
                        C13890g.Q(fArr3, tile.f94321c.f94283b, i19);
                        C13890g.P(fArr4, tile.f94321c.f94283b, i19);
                    }
                    i10 = 3;
                    if (C13890g.l(qmin, qmax, fArr3, fArr4)) {
                        query.a(tile, g10, j11);
                    }
                    i16++;
                    i15 = i10;
                }
            }
            i10 = i15;
            i16++;
            i15 = i10;
        }
    }

    public List<C13901s> O(float[] center, float[] halfExtents) {
        if (center == null || !C13890g.I(center) || halfExtents == null || !C13890g.I(halfExtents)) {
            return Collections.emptyList();
        }
        float[] W10 = C13890g.W(center, halfExtents);
        float[] v10 = C13890g.v(center, halfExtents);
        int[] h10 = this.f94140a.h(W10);
        int i10 = h10[0];
        int[] h11 = this.f94140a.h(v10);
        int i11 = h11[0];
        int i12 = h11[1];
        ArrayList arrayList = new ArrayList();
        for (int i13 = h10[1]; i13 <= i12; i13++) {
            for (int i14 = i10; i14 <= i11; i14++) {
                arrayList.addAll(this.f94140a.R(i14, i13));
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x018c, code lost:
    
        r26 = r19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public O<N> P(long startRef, float[] startPos, float[] endPos, L filter, int options, long prevRef) {
        long j10;
        float[] fArr;
        G g10;
        C13901s c13901s;
        long j11;
        G g11;
        N n10;
        int i10;
        long j12;
        G g12;
        N n11;
        C13901s c13901s2;
        C13901s c13901s3;
        long j13;
        float[] fArr2;
        N n12;
        C13890g.a aVar;
        float[] fArr3;
        G g13;
        float[] fArr4;
        float[] fArr5;
        char c10;
        C13901s c13901s4;
        G g14;
        char c11;
        char c12;
        float[] fArr6 = startPos;
        L l10 = filter;
        if (!this.f94140a.S(startRef) || fArr6 == null || !C13890g.I(startPos) || endPos == null || !C13890g.I(endPos) || l10 == null || (prevRef != 0 && !this.f94140a.S(prevRef))) {
            return O.e();
        }
        N n13 = new N();
        float[] fArr7 = new float[(this.f94140a.y() * 3) + 3];
        float[] fArr8 = new float[3];
        float[] fArr9 = new float[3];
        C13890g.w(fArr8, fArr6);
        float[] W10 = C13890g.W(endPos, fArr6);
        U<C13901s, G> K10 = this.f94140a.K(startRef);
        C13901s c13901s5 = K10.f94229a;
        G g15 = K10.f94230b;
        if (prevRef != 0) {
            U<C13901s, G> K11 = this.f94140a.K(prevRef);
            C13901s c13901s6 = K11.f94229a;
            j10 = startRef;
            g10 = K11.f94230b;
            fArr = fArr8;
            c13901s = c13901s5;
            c13901s5 = c13901s6;
            g11 = g15;
            j11 = prevRef;
        } else {
            j10 = startRef;
            fArr = fArr8;
            g10 = g15;
            c13901s = c13901s5;
            j11 = prevRef;
            g11 = g10;
        }
        while (j10 != 0) {
            float[] fArr10 = W10;
            int i11 = 0;
            int i12 = 0;
            while (i12 < g11.f94180e) {
                System.arraycopy(c13901s.f94321c.f94283b, g11.f94177b[i12] * 3, fArr7, i11 * 3, 3);
                i11++;
                i12++;
                g11 = g11;
                c13901s = c13901s;
                fArr9 = fArr9;
            }
            G g16 = g11;
            C13901s c13901s7 = c13901s;
            float[] fArr11 = fArr9;
            C13890g.a i13 = C13890g.i(fArr6, endPos, fArr7, i11);
            if (!i13.f94249a) {
                return O.k(n13);
            }
            n13.f94203e = i13.f94253e;
            float f10 = i13.f94251c;
            if (f10 > n13.f94199a) {
                n13.f94199a = f10;
            }
            n13.f94201c.add(Long.valueOf(j10));
            int i14 = -1;
            if (i13.f94253e == -1) {
                n13.f94199a = Float.MAX_VALUE;
                if ((options & 1) != 0) {
                    n10 = n13;
                    n10.f94202d = n13.f94202d + filter.a(fArr, endPos, j11, c13901s5, g10, j10, c13901s7, g16, j10, c13901s7, g16);
                } else {
                    n10 = n13;
                }
                return O.k(n10);
            }
            int i15 = c13901s7.f94322d[g16.f94176a];
            N n14 = n13;
            G g17 = g16;
            while (true) {
                if (i15 == i14) {
                    i10 = i11;
                    j12 = j11;
                    g12 = g17;
                    n11 = n14;
                    c13901s2 = c13901s5;
                    c13901s3 = c13901s7;
                    j13 = 0;
                    break;
                }
                C13899p c13899p = c13901s7.f94323e.get(i15);
                G g18 = g17;
                if (c13899p.f94278c != i13.f94253e) {
                    n11 = n14;
                    i10 = i11;
                    j12 = j11;
                    c13901s2 = c13901s5;
                } else {
                    n11 = n14;
                    c13901s2 = c13901s5;
                    j12 = j11;
                    U<C13901s, G> K12 = this.f94140a.K(c13899p.f94276a);
                    C13901s c13901s8 = K12.f94229a;
                    G g19 = K12.f94230b;
                    if (g19.b() != 1) {
                        i10 = i11;
                        if (l10.b(c13899p.f94276a, c13901s8, g19)) {
                            int i16 = c13899p.f94279d;
                            if (i16 != 255) {
                                int i17 = c13899p.f94280e;
                                g14 = g19;
                                if (i17 == 0 && c13899p.f94281f == 255) {
                                    j13 = c13899p.f94276a;
                                    c13901s3 = c13901s8;
                                    break;
                                }
                                int[] iArr = g16.f94177b;
                                int i18 = c13899p.f94278c;
                                c13901s3 = c13901s8;
                                int i19 = iArr[i18] * 3;
                                int i20 = iArr[(i18 + 1) % g16.f94180e] * 3;
                                if (i16 == 0 || i16 == 4) {
                                    float[] fArr12 = c13901s7.f94321c.f94283b;
                                    float f11 = fArr12[i19 + 2];
                                    float f12 = fArr12[i20 + 2];
                                    float f13 = i17;
                                    float f14 = f94139m;
                                    float f15 = ((f12 - f11) * f13 * f14) + f11;
                                    float f16 = f11 + ((f12 - f11) * c13899p.f94281f * f14);
                                    if (f15 > f16) {
                                        c11 = 2;
                                        f16 = f15;
                                        f15 = f16;
                                    } else {
                                        c11 = 2;
                                    }
                                    float f17 = fArr6[c11];
                                    float f18 = f17 + ((endPos[c11] - f17) * i13.f94251c);
                                    if (f18 >= f15 && f18 <= f16) {
                                        j13 = c13899p.f94276a;
                                        break;
                                    }
                                    g18 = g14;
                                    c13901s7 = c13901s3;
                                } else {
                                    if (i16 == 2 || i16 == 6) {
                                        float[] fArr13 = c13901s7.f94321c.f94283b;
                                        float f19 = fArr13[i19];
                                        float f20 = fArr13[i20];
                                        float f21 = i17;
                                        float f22 = f94139m;
                                        float f23 = ((f20 - f19) * f21 * f22) + f19;
                                        float f24 = f19 + ((f20 - f19) * c13899p.f94281f * f22);
                                        if (f23 > f24) {
                                            c12 = 0;
                                            f24 = f23;
                                            f23 = f24;
                                        } else {
                                            c12 = 0;
                                        }
                                        float f25 = fArr6[c12];
                                        float f26 = f25 + ((endPos[c12] - f25) * i13.f94251c);
                                        if (f26 >= f23 && f26 <= f24) {
                                            j13 = c13899p.f94276a;
                                            break;
                                        }
                                    }
                                    g18 = g14;
                                    c13901s7 = c13901s3;
                                }
                            } else {
                                j13 = c13899p.f94276a;
                                g12 = g19;
                                c13901s3 = c13901s8;
                                break;
                            }
                        }
                    } else {
                        i10 = i11;
                    }
                    g14 = g19;
                    c13901s3 = c13901s8;
                    g18 = g14;
                    c13901s7 = c13901s3;
                }
                i15 = c13901s7.f94323e.get(i15).f94277b;
                c13901s5 = c13901s2;
                n14 = n11;
                g17 = g18;
                j11 = j12;
                i11 = i10;
                i14 = -1;
            }
            if ((options & 1) != 0) {
                C13890g.w(fArr11, fArr);
                float[] O10 = C13890g.O(fArr6, fArr10, n11.f94199a);
                W w10 = new W(fArr7, i13.f94253e * 3);
                float[] V10 = C13890g.V(new W(fArr7, ((i13.f94253e + 1) % i10) * 3), w10);
                float[] V11 = C13890g.V(new W(O10), w10);
                O10[1] = w10.a(1) + (V10[1] * (C13890g.s(V10[0]) > C13890g.s(V10[2]) ? V11[0] / V10[0] : V11[2] / V10[2]));
                c13901s4 = c13901s7;
                long j14 = j12;
                c10 = 1;
                n12 = n11;
                fArr4 = fArr10;
                fArr5 = fArr11;
                aVar = i13;
                fArr3 = fArr7;
                g13 = g16;
                n12.f94202d = n11.f94202d + filter.a(fArr11, O10, j14, c13901s2, g10, j10, c13901s4, g13, j13, c13901s3, g12);
                fArr2 = O10;
            } else {
                fArr2 = fArr;
                n12 = n11;
                aVar = i13;
                fArr3 = fArr7;
                g13 = g16;
                fArr4 = fArr10;
                fArr5 = fArr11;
                c10 = 1;
                c13901s4 = c13901s7;
            }
            if (j13 == 0) {
                int i21 = aVar.f94253e;
                int i22 = i21 + 1 < i10 ? i21 + 1 : 0;
                int i23 = i21 * 3;
                int i24 = i22 * 3;
                float f27 = fArr3[i24] - fArr3[i23];
                float f28 = fArr3[i24 + 2] - fArr3[i23 + 2];
                float[] fArr14 = n12.f94200b;
                fArr14[0] = f28;
                fArr14[c10] = 0.0f;
                fArr14[2] = -f27;
                C13890g.R(fArr14);
                return O.k(n12);
            }
            l10 = filter;
            n13 = n12;
            fArr = fArr2;
            j11 = j10;
            c13901s5 = c13901s4;
            g11 = g12;
            W10 = fArr4;
            c13901s = c13901s3;
            fArr9 = fArr5;
            fArr7 = fArr3;
            g10 = g13;
            fArr6 = startPos;
            j10 = j13;
        }
        return O.k(n13);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x030c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public O<Integer> Q(int maxIter) {
        B b10;
        long j10;
        long j11;
        G g10;
        C13901s c13901s;
        int i10;
        long j12;
        B b11;
        G g11;
        long j13;
        int i11;
        long j14;
        C13901s c13901s2;
        B f10;
        int i12;
        long j15;
        C13901s c13901s3;
        C13901s c13901s4;
        G g12;
        B b12;
        boolean z10;
        float[] fArr;
        O<float[]> w10;
        float f11;
        List<Long> list;
        boolean z11;
        K k10;
        long j16;
        float f12;
        int i13;
        int i14;
        int i15;
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
        int i16 = maxIter;
        int i17 = 0;
        while (i17 < i16 && !this.f94142c.c()) {
            int i18 = i17 + 1;
            B f13 = this.f94142c.f();
            int i19 = f13.f94162g & (~B.f94153j);
            f13.f94162g = i19;
            f13.f94162g = i19 | B.f94154k;
            long j17 = f13.f94163h;
            K k13 = this.f94143d;
            if (j17 == k13.f94192e) {
                k13.f94189b = f13;
                Q q11 = Q.SUCCSESS;
                k13.f94188a = q11;
                return O.g(q11, Integer.valueOf(i18));
            }
            O<U<C13901s, G>> J10 = this.f94140a.J(j17);
            if (J10.a()) {
                K k14 = this.f94143d;
                Q q12 = Q.FAILURE;
                k14.f94188a = q12;
                return O.g(q12, Integer.valueOf(i18));
            }
            U<C13901s, G> u10 = J10.f94204a;
            C13901s c13901s5 = u10.f94229a;
            G g13 = u10.f94230b;
            int i20 = f13.f94160e;
            if (i20 != 0) {
                B g14 = this.f94141b.g(i20);
                long j18 = g14.f94163h;
                int i21 = g14.f94160e;
                if (i21 != 0) {
                    b10 = g14;
                    j10 = this.f94141b.g(i21).f94163h;
                    j11 = j18;
                } else {
                    b10 = g14;
                    j11 = j18;
                    j10 = 0;
                }
            } else {
                b10 = null;
                j10 = 0;
                j11 = 0;
            }
            if (j11 != 0) {
                O<U<C13901s, G>> J11 = this.f94140a.J(j11);
                if (J11.a() || !(j10 == 0 || this.f94140a.S(j10))) {
                    K k15 = this.f94143d;
                    Q q13 = Q.FAILURE;
                    k15.f94188a = q13;
                    return O.g(q13, Integer.valueOf(i18));
                }
                U<C13901s, G> u11 = J11.f94204a;
                c13901s = u11.f94229a;
                g10 = u11.f94230b;
            } else {
                g10 = null;
                c13901s = null;
            }
            K k16 = this.f94143d;
            long j19 = j10;
            boolean z12 = ((k16.f94196i & 2) == 0 || j11 == 0 || (k16.f94197j < Float.MAX_VALUE && C13890g.E(b10.f94157b, f13.f94157b) >= this.f94143d.f94197j)) ? false : true;
            int i22 = c13901s5.f94322d[g13.f94176a];
            while (i22 != -1) {
                long j20 = c13901s5.f94323e.get(i22).f94276a;
                if (j20 == 0) {
                    i10 = i22;
                    j12 = j11;
                    b11 = b10;
                    g11 = g13;
                    j13 = j17;
                    i11 = i18;
                    j14 = j19;
                    c13901s2 = c13901s5;
                } else if (j20 == j11) {
                    i10 = i22;
                    j12 = j11;
                    b11 = b10;
                    c13901s2 = c13901s5;
                    g11 = g13;
                    j13 = j17;
                    i11 = i18;
                    j14 = j19;
                } else {
                    U<C13901s, G> K10 = this.f94140a.K(j20);
                    int i23 = i22;
                    C13901s c13901s6 = K10.f94229a;
                    G g15 = K10.f94230b;
                    long j21 = j11;
                    if (this.f94143d.f94195h.b(j20, c13901s6, g15) && ((i12 = (f10 = this.f94141b.f(j20, 0)).f94160e) == 0 || i12 != f13.f94160e)) {
                        float[] fArr2 = f10.f94157b;
                        K k17 = this.f94143d;
                        if (j20 == k17.f94192e) {
                            j15 = j20;
                            j14 = j19;
                            c13901s4 = c13901s6;
                            g12 = g15;
                            i11 = i18;
                            j12 = j21;
                            b12 = f10;
                            fArr = fArr2;
                            z10 = false;
                            i10 = i23;
                            b11 = b10;
                            c13901s3 = c13901s5;
                            g11 = g13;
                            j13 = j17;
                            w10 = v(f13.f94157b, j17, g13, c13901s5, k17.f94194g, j15, g12, c13901s4);
                        } else {
                            j15 = j20;
                            b11 = b10;
                            c13901s3 = c13901s5;
                            g11 = g13;
                            j13 = j17;
                            i11 = i18;
                            j14 = j19;
                            i10 = i23;
                            j12 = j21;
                            c13901s4 = c13901s6;
                            g12 = g15;
                            b12 = f10;
                            z10 = false;
                            fArr = fArr2;
                            w10 = w(j13, g11, c13901s3, j15, g12, c13901s4);
                        }
                        float[] fArr3 = !w10.a() ? w10.f94204a : fArr;
                        float f14 = 0.0f;
                        if (z12) {
                            O<N> P10 = P(j12, b11.f94157b, fArr3, this.f94143d.f94195h, 1, j14);
                            if (P10.j()) {
                                N n10 = P10.f94204a;
                                z11 = n10.f94199a >= 1.0f ? true : z10;
                                if (z11) {
                                    list = n10.f94201c;
                                    f11 = b11.f94158c + n10.f94202d;
                                } else {
                                    f11 = 0.0f;
                                    list = null;
                                }
                                if (!z11) {
                                    f11 = f13.f94158c + this.f94143d.f94195h.a(f13.f94157b, fArr3, j12, c13901s, g10, j13, c13901s3, g11, j15, c13901s4, g12);
                                }
                                k10 = this.f94143d;
                                j16 = j15;
                                if (j16 != k10.f94192e) {
                                    f11 += k10.f94195h.a(fArr3, k10.f94194g, j13, c13901s3, g11, j16, c13901s4, g12, 0L, null, null);
                                } else {
                                    f14 = k10.f94198k.a(fArr3, k10.f94194g);
                                }
                                f12 = f11 + f14;
                                i13 = b12.f94162g;
                                if (((B.f94153j & i13) != 0 || f12 < b12.f94159d) && ((i13 & B.f94154k) == 0 || f12 < b12.f94159d)) {
                                    b12.f94160e = !z11 ? f13.f94160e : this.f94141b.h(f13);
                                    b12.f94163h = j16;
                                    i14 = b12.f94162g & (~B.f94154k);
                                    b12.f94162g = i14;
                                    b12.f94158c = f11;
                                    b12.f94159d = f12;
                                    b12.f94157b = fArr3;
                                    b12.f94164i = list;
                                    i15 = B.f94153j;
                                    if ((i14 & i15) == 0) {
                                        this.f94142c.e(b12);
                                    } else {
                                        b12.f94162g = i15 | i14;
                                        this.f94142c.g(b12);
                                    }
                                    k11 = this.f94143d;
                                    if (f14 < k11.f94190c) {
                                        k11.f94190c = f14;
                                        k11.f94189b = b12;
                                    }
                                }
                                c13901s2 = c13901s3;
                            }
                        }
                        f11 = 0.0f;
                        list = null;
                        z11 = z10;
                        if (!z11) {
                        }
                        k10 = this.f94143d;
                        j16 = j15;
                        if (j16 != k10.f94192e) {
                        }
                        f12 = f11 + f14;
                        i13 = b12.f94162g;
                        if ((B.f94153j & i13) != 0) {
                        }
                        b12.f94160e = !z11 ? f13.f94160e : this.f94141b.h(f13);
                        b12.f94163h = j16;
                        i14 = b12.f94162g & (~B.f94154k);
                        b12.f94162g = i14;
                        b12.f94158c = f11;
                        b12.f94159d = f12;
                        b12.f94157b = fArr3;
                        b12.f94164i = list;
                        i15 = B.f94153j;
                        if ((i14 & i15) == 0) {
                        }
                        k11 = this.f94143d;
                        if (f14 < k11.f94190c) {
                        }
                        c13901s2 = c13901s3;
                    } else {
                        b11 = b10;
                        c13901s2 = c13901s5;
                        g11 = g13;
                        j13 = j17;
                        i11 = i18;
                        j14 = j19;
                        i10 = i23;
                        j12 = j21;
                    }
                }
                i22 = c13901s2.f94323e.get(i10).f94277b;
                c13901s5 = c13901s2;
                b10 = b11;
                j19 = j14;
                j11 = j12;
                i18 = i11;
                g13 = g11;
                j17 = j13;
            }
            i16 = maxIter;
            i17 = i18;
        }
        if (this.f94142c.c()) {
            this.f94143d.f94188a = Q.PARTIAL_RESULT;
        }
        return O.g(this.f94143d.f94188a, Integer.valueOf(i17));
    }

    public Q b(int startIdx, int endIdx, float[] endPos, List<Long> path, List<S> straightPath, int maxStraightPath, int options) {
        A a10 = this;
        float[] fArr = straightPath.get(straightPath.size() - 1).f94226a;
        int i10 = startIdx;
        while (i10 < endIdx) {
            long longValue = path.get(i10).longValue();
            O<U<C13901s, G>> J10 = a10.f94140a.J(longValue);
            if (J10.a()) {
                return Q.FAILURE;
            }
            U<C13901s, G> u10 = J10.f94204a;
            C13901s c13901s = u10.f94229a;
            G g10 = u10.f94230b;
            int i11 = i10 + 1;
            long longValue2 = path.get(i11).longValue();
            O<U<C13901s, G>> J11 = a10.f94140a.J(longValue2);
            if (J11.a()) {
                return Q.FAILURE;
            }
            U<C13901s, G> u11 = J11.f94204a;
            C13901s c13901s2 = u11.f94229a;
            G g11 = u11.f94230b;
            O<b> D10 = D(longValue, g10, c13901s, longValue2, g11, c13901s2, 0, 0);
            if (D10.a()) {
                break;
            }
            b bVar = D10.f94204a;
            float[] fArr2 = bVar.f94146a;
            float[] fArr3 = bVar.f94147b;
            if ((options & 1) == 0 || g10.a() != g11.a()) {
                Optional<U<Float, Float>> h10 = C13890g.h(fArr, endPos, fArr2, fArr3);
                if (h10.isPresent()) {
                    Q c10 = c(C13890g.N(fArr2, fArr3, h10.get().f94230b.floatValue()), 0, path.get(i11).longValue(), straightPath, maxStraightPath);
                    if (!c10.c()) {
                        return c10;
                    }
                } else {
                    continue;
                }
            }
            i10 = i11;
            a10 = this;
        }
        return Q.IN_PROGRESS;
    }

    public Q c(float[] pos, int flags, long ref, List<S> straightPath, int maxStraightPath) {
        if (straightPath.size() <= 0 || !C13890g.H(straightPath.get(straightPath.size() - 1).f94226a, pos)) {
            if (straightPath.size() < maxStraightPath) {
                straightPath.add(new S(pos, flags, ref));
            }
            if (flags == 2 || straightPath.size() >= maxStraightPath) {
                return Q.SUCCSESS;
            }
        } else {
            straightPath.get(straightPath.size() - 1).f94227b = flags;
            straightPath.get(straightPath.size() - 1).f94228c = ref;
        }
        return Q.IN_PROGRESS;
    }

    public O<C13885b> d(long ref, float[] pos) {
        return (this.f94140a.S(ref) && pos != null && C13890g.I(pos)) ? O.k(this.f94140a.j(ref, pos)) : O.e();
    }

    public O<float[]> e(long ref, float[] pos) {
        float[] M10;
        O<U<C13901s, G>> J10 = this.f94140a.J(ref);
        if (J10.a()) {
            return O.h(J10.f94205b, J10.f94206c);
        }
        U<C13901s, G> u10 = J10.f94204a;
        C13901s c13901s = u10.f94229a;
        G g10 = u10.f94230b;
        if (c13901s == null) {
            return O.f("Invalid tile");
        }
        if (pos == null || !C13890g.I(pos)) {
            return O.e();
        }
        float[] fArr = new float[this.f94140a.y() * 3];
        float[] fArr2 = new float[this.f94140a.y()];
        float[] fArr3 = new float[this.f94140a.y()];
        int i10 = g10.f94180e;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            System.arraycopy(c13901s.f94321c.f94283b, g10.f94177b[i12] * 3, fArr, i12 * 3, 3);
        }
        if (C13890g.d(pos, fArr, i10, fArr2, fArr3)) {
            M10 = C13890g.y(pos);
        } else {
            float f10 = fArr2[0];
            for (int i13 = 1; i13 < i10; i13++) {
                float f11 = fArr2[i13];
                if (f11 < f10) {
                    i11 = i13;
                    f10 = f11;
                }
            }
            M10 = C13890g.M(fArr, i11 * 3, ((i11 + 1) % i10) * 3, fArr3[i11]);
        }
        return O.k(M10);
    }

    public O<List<Long>> f() {
        List<Long> arrayList = new ArrayList<>(64);
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
            arrayList = z(b10);
        }
        Q q10 = this.f94143d.f94188a;
        this.f94143d = new K();
        return O.g(q10, arrayList);
    }

    public O<List<Long>> g(List<Long> existing) {
        List<Long> arrayList = new ArrayList<>(64);
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
            arrayList = z(b10);
        }
        Q q10 = this.f94143d.f94188a;
        this.f94143d = new K();
        return O.g(q10, arrayList);
    }

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

    /* JADX WARN: Multi-variable type inference failed */
    public O<C13892i> i(long startRef, float[] centerPos, float radius, L filter) {
        long j10;
        B b10;
        int i10;
        C c10;
        float[] fArr;
        ArrayList arrayList;
        G g10;
        C13901s c13901s;
        ArrayList arrayList2;
        LinkedList linkedList;
        int i11;
        A a10 = this;
        L l10 = filter;
        if (!a10.f94140a.S(startRef) || centerPos == null || !C13890g.I(centerPos) || radius < 0.0f || !Float.isFinite(radius) || l10 == null) {
            return O.e();
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        C c11 = new C();
        B e10 = c11.e(startRef);
        e10.f94160e = 0;
        e10.f94163h = startRef;
        e10.f94162g = B.f94154k;
        LinkedList linkedList2 = new LinkedList();
        linkedList2.add(e10);
        arrayList3.add(Long.valueOf(e10.f94163h));
        arrayList4.add(0L);
        float s10 = C13890g.s(radius);
        float[] fArr2 = new float[a10.f94140a.y() * 3];
        float[] fArr3 = new float[a10.f94140a.y() * 3];
        while (!linkedList2.isEmpty()) {
            B b11 = (B) linkedList2.pop();
            long j11 = b11.f94163h;
            U<C13901s, G> K10 = a10.f94140a.K(j11);
            C13901s c13901s2 = K10.f94229a;
            G g11 = K10.f94230b;
            int i12 = c13901s2.f94322d[g11.f94176a];
            while (i12 != -1) {
                int i13 = i12;
                C c12 = c11;
                long j12 = c13901s2.f94323e.get(i12).f94276a;
                if (j12 == 0) {
                    i10 = i13;
                    g10 = g11;
                    j10 = j11;
                    b10 = b11;
                    linkedList = linkedList2;
                    arrayList = arrayList3;
                    arrayList2 = arrayList4;
                    c10 = c12;
                    c13901s = c13901s2;
                } else {
                    ArrayList arrayList5 = arrayList4;
                    B e11 = c12.e(j12);
                    G g12 = g11;
                    if ((e11.f94162g & B.f94154k) != 0) {
                        i10 = i13;
                        b10 = b11;
                        arrayList = arrayList3;
                        c13901s = c13901s2;
                        c10 = c12;
                        g10 = g12;
                        j10 = j11;
                        linkedList = linkedList2;
                        arrayList2 = arrayList5;
                    } else {
                        U<C13901s, G> K11 = a10.f94140a.K(j12);
                        long j13 = j11;
                        C13901s c13901s3 = K11.f94229a;
                        G g13 = K11.f94230b;
                        C13901s c13901s4 = c13901s2;
                        if (g13.b() != 1 && l10.b(j12, c13901s3, g13)) {
                            G g14 = g12;
                            j10 = j13;
                            C13901s c13901s5 = c13901s4;
                            b10 = b11;
                            float[] fArr4 = fArr2;
                            float[] fArr5 = fArr3;
                            LinkedList linkedList3 = linkedList2;
                            i10 = i13;
                            ArrayList arrayList6 = arrayList3;
                            c10 = c12;
                            O<b> D10 = D(j10, g14, c13901s5, j12, g13, c13901s3, 0, 0);
                            if (!D10.a()) {
                                b bVar = D10.f94204a;
                                if (C13890g.f(centerPos, bVar.f94146a, bVar.f94147b).f94229a.floatValue() <= s10) {
                                    e11.f94162g |= B.f94154k;
                                    e11.f94160e = c10.h(b10);
                                    int i14 = g13.f94180e;
                                    for (int i15 = 0; i15 < i14; i15++) {
                                        System.arraycopy(c13901s3.f94321c.f94283b, g13.f94177b[i15] * 3, fArr4, i15 * 3, 3);
                                    }
                                    int i16 = 0;
                                    while (true) {
                                        if (i16 >= arrayList6.size()) {
                                            fArr = fArr4;
                                            arrayList = arrayList6;
                                            g10 = g14;
                                            c13901s = c13901s5;
                                            fArr3 = fArr5;
                                            arrayList.add(Long.valueOf(j12));
                                            arrayList2 = arrayList5;
                                            arrayList2.add(Long.valueOf(j10));
                                            linkedList = linkedList3;
                                            linkedList.add(e11);
                                            break;
                                        }
                                        arrayList = arrayList6;
                                        long longValue = ((Long) arrayList.get(i16)).longValue();
                                        c13901s = c13901s5;
                                        g10 = g14;
                                        int i17 = c13901s.f94322d[g10.f94176a];
                                        while (true) {
                                            if (i17 == -1) {
                                                i11 = i16;
                                                fArr = fArr4;
                                                U<C13901s, G> K12 = this.f94140a.K(longValue);
                                                C13901s c13901s6 = K12.f94229a;
                                                G g15 = K12.f94230b;
                                                int i18 = g15.f94180e;
                                                int i19 = 0;
                                                while (i19 < i18) {
                                                    System.arraycopy(c13901s6.f94321c.f94283b, g15.f94177b[i19] * 3, fArr5, i19 * 3, 3);
                                                    i19++;
                                                    c13901s6 = c13901s6;
                                                    g15 = g15;
                                                }
                                                fArr3 = fArr5;
                                                if (C13890g.m(fArr, i14, fArr3, i18)) {
                                                    arrayList2 = arrayList5;
                                                    linkedList = linkedList3;
                                                    break;
                                                }
                                            } else {
                                                i11 = i16;
                                                if (c13901s.f94323e.get(i17).f94276a == longValue) {
                                                    fArr = fArr4;
                                                    fArr3 = fArr5;
                                                    break;
                                                }
                                                i17 = c13901s.f94323e.get(i17).f94277b;
                                                i16 = i11;
                                            }
                                        }
                                        i16 = i11 + 1;
                                        arrayList6 = arrayList;
                                        c13901s5 = c13901s;
                                        fArr5 = fArr3;
                                        g14 = g10;
                                        fArr4 = fArr;
                                    }
                                    i12 = c13901s.f94323e.get(i10).f94277b;
                                    a10 = this;
                                    arrayList4 = arrayList2;
                                    c13901s2 = c13901s;
                                    fArr2 = fArr;
                                    b11 = b10;
                                    c11 = c10;
                                    l10 = filter;
                                    arrayList3 = arrayList;
                                    linkedList2 = linkedList;
                                    g11 = g10;
                                    j11 = j10;
                                }
                            }
                            fArr = fArr4;
                            arrayList2 = arrayList5;
                            arrayList = arrayList6;
                            g10 = g14;
                            c13901s = c13901s5;
                            fArr3 = fArr5;
                            linkedList = linkedList3;
                        } else {
                            i10 = i13;
                            b10 = b11;
                            linkedList = linkedList2;
                            arrayList = arrayList3;
                            arrayList2 = arrayList5;
                            c13901s = c13901s4;
                            fArr = fArr2;
                            c10 = c12;
                            g10 = g12;
                            j10 = j13;
                        }
                        i12 = c13901s.f94323e.get(i10).f94277b;
                        a10 = this;
                        arrayList4 = arrayList2;
                        c13901s2 = c13901s;
                        fArr2 = fArr;
                        b11 = b10;
                        c11 = c10;
                        l10 = filter;
                        arrayList3 = arrayList;
                        linkedList2 = linkedList;
                        g11 = g10;
                        j11 = j10;
                    }
                }
                fArr = fArr2;
                i12 = c13901s.f94323e.get(i10).f94277b;
                a10 = this;
                arrayList4 = arrayList2;
                c13901s2 = c13901s;
                fArr2 = fArr;
                b11 = b10;
                c11 = c10;
                l10 = filter;
                arrayList3 = arrayList;
                linkedList2 = linkedList;
                g11 = g10;
                j11 = j10;
            }
            a10 = this;
            l10 = filter;
            linkedList2 = linkedList2;
        }
        return O.k(new C13892i(arrayList3, arrayList4));
    }

    public O<C13894k> j(float[] center, float[] halfExtents, L filter) {
        C13893j c13893j = new C13893j(this, center);
        Q M10 = M(center, halfExtents, filter, c13893j);
        return M10.b() ? O.h(M10, null) : O.k(c13893j.b());
    }

    public O<List<Long>> k(long startRef, long endRef, float[] startPos, float[] endPos, L filter) {
        return m(startRef, endRef, startPos, endPos, filter, new C13888e(), 0, 0.0f);
    }

    public O<List<Long>> l(long startRef, long endRef, float[] startPos, float[] endPos, L filter, int options, float raycastLimit) {
        return m(startRef, endRef, startPos, endPos, filter, new C13888e(), options, raycastLimit);
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02e1  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public O<List<Long>> m(long startRef, long endRef, float[] startPos, float[] endPos, L filter, M heuristic, int options, float raycastLimit) {
        float f10;
        B b10;
        B b11;
        long j10;
        long j11;
        G g10;
        C13901s c13901s;
        G g11;
        C13901s c13901s2;
        long j12;
        B b12;
        long j13;
        A a10;
        float[] fArr;
        B b13;
        int i10;
        C13901s c13901s3;
        G g12;
        M m10;
        C13901s c13901s4;
        B b14;
        long j14;
        boolean z10;
        float f11;
        float[] fArr2;
        O<float[]> w10;
        List<Long> list;
        boolean z11;
        float f12;
        float a11;
        float f13;
        B b15;
        int i11;
        int h10;
        int i12;
        int i13;
        A a12 = this;
        long j15 = endRef;
        float[] fArr3 = endPos;
        L l10 = filter;
        if (!a12.f94140a.S(startRef) || !a12.f94140a.S(j15) || startPos == null || !C13890g.I(startPos) || fArr3 == null || !C13890g.I(endPos) || l10 == null) {
            return O.e();
        }
        float s10 = C13890g.s(raycastLimit);
        int i14 = options & 2;
        if (i14 != 0 && raycastLimit < 0.0f) {
            s10 = C13890g.s(a12.f94140a.M(startRef).f94321c.f94282a.f94314q * C13904v.f94336t);
        }
        float f14 = s10;
        if (startRef == j15) {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(Long.valueOf(startRef));
            return O.k(arrayList);
        }
        a12.f94141b.a();
        a12.f94142c.b();
        B e10 = a12.f94141b.e(startRef);
        C13890g.w(e10.f94157b, startPos);
        e10.f94160e = 0;
        e10.f94158c = 0.0f;
        e10.f94159d = heuristic.a(startPos, fArr3);
        e10.f94163h = startRef;
        e10.f94162g = B.f94153j;
        a12.f94142c.g(e10);
        float f15 = e10.f94159d;
        Q q10 = Q.SUCCSESS;
        while (true) {
            if (a12.f94142c.c()) {
                break;
            }
            B f16 = a12.f94142c.f();
            int i15 = f16.f94162g & (~B.f94153j);
            f16.f94162g = i15;
            f16.f94162g = i15 | B.f94154k;
            long j16 = f16.f94163h;
            if (j16 == j15) {
                e10 = f16;
                break;
            }
            U<C13901s, G> K10 = a12.f94140a.K(j16);
            C13901s c13901s5 = K10.f94229a;
            G g13 = K10.f94230b;
            int i16 = f16.f94160e;
            if (i16 != 0) {
                B g14 = a12.f94141b.g(i16);
                long j17 = g14.f94163h;
                f10 = f15;
                int i17 = g14.f94160e;
                b10 = e10;
                if (i17 != 0) {
                    b11 = g14;
                    j11 = a12.f94141b.g(i17).f94163h;
                    j10 = j17;
                } else {
                    b11 = g14;
                    j10 = j17;
                    j11 = 0;
                }
            } else {
                f10 = f15;
                b10 = e10;
                b11 = null;
                j10 = 0;
                j11 = 0;
            }
            if (j10 != 0) {
                U<C13901s, G> K11 = a12.f94140a.K(j10);
                C13901s c13901s6 = K11.f94229a;
                g10 = K11.f94230b;
                c13901s = c13901s6;
            } else {
                g10 = null;
                c13901s = null;
            }
            boolean z12 = (i14 == 0 || j10 == 0 || (f14 < Float.MAX_VALUE && C13890g.E(b11.f94157b, f16.f94157b) >= f14)) ? false : true;
            float f17 = f10;
            B b16 = b10;
            int i18 = c13901s5.f94322d[g13.f94176a];
            while (i18 != -1) {
                B b17 = b11;
                int i19 = i18;
                long j18 = c13901s5.f94323e.get(i18).f94276a;
                if (j18 != 0 && j18 != j10) {
                    U<C13901s, G> K12 = a12.f94140a.K(j18);
                    C13901s c13901s7 = K12.f94229a;
                    G g15 = K12.f94230b;
                    if (l10.b(j18, c13901s7, g15)) {
                        long j19 = j10;
                        B f18 = a12.f94141b.f(j18, 0);
                        int i20 = f18.f94160e;
                        if (i20 == 0 || i20 != f16.f94160e) {
                            float[] fArr4 = f18.f94157b;
                            if (j18 == j15) {
                                g12 = g15;
                                g11 = g13;
                                c13901s2 = c13901s5;
                                c13901s4 = c13901s7;
                                j12 = j16;
                                b12 = f16;
                                j13 = j19;
                                z10 = false;
                                fArr2 = fArr4;
                                j14 = j18;
                                f11 = 0.0f;
                                m10 = heuristic;
                                b14 = f18;
                                i10 = i19;
                                b13 = b17;
                                w10 = v(f16.f94157b, j16, g11, c13901s2, endPos, j18, g12, c13901s4);
                            } else {
                                g12 = g15;
                                m10 = heuristic;
                                g11 = g13;
                                c13901s2 = c13901s5;
                                c13901s4 = c13901s7;
                                j12 = j16;
                                b12 = f16;
                                b14 = f18;
                                j14 = j18;
                                b13 = b17;
                                i10 = i19;
                                j13 = j19;
                                z10 = false;
                                f11 = 0.0f;
                                fArr2 = fArr4;
                                w10 = w(j12, g11, c13901s2, j14, g12, c13901s4);
                            }
                            float[] fArr5 = !w10.a() ? w10.f94204a : fArr2;
                            if (z12) {
                                O<N> P10 = P(j13, b13.f94157b, fArr5, filter, 1, j11);
                                if (P10.j()) {
                                    N n10 = P10.f94204a;
                                    boolean z13 = n10.f94199a >= 1.0f ? true : z10;
                                    if (z13) {
                                        list = n10.f94201c;
                                        f12 = n10.f94202d + b13.f94158c;
                                        z11 = z13;
                                        if (!z11) {
                                            f12 = filter.a(b12.f94157b, fArr5, j13, c13901s, g10, j12, c13901s2, g11, j14, c13901s4, g12) + b12.f94158c;
                                        }
                                        if (j18 == j15) {
                                            fArr = fArr3;
                                            f12 += filter.a(fArr5, endPos, j12, c13901s2, g11, j14, c13901s4, g12, 0L, null, null);
                                            a11 = f11;
                                        } else {
                                            fArr = fArr3;
                                            a11 = m10.a(fArr5, fArr);
                                        }
                                        f13 = f12 + a11;
                                        b15 = b14;
                                        i11 = b15.f94162g;
                                        if (((B.f94153j & i11) != 0 || f13 < b15.f94159d) && ((i11 & B.f94154k) == 0 || f13 < b15.f94159d)) {
                                            if (z11) {
                                                h10 = b12.f94160e;
                                                a10 = this;
                                            } else {
                                                a10 = this;
                                                h10 = a10.f94141b.h(b12);
                                            }
                                            b15.f94160e = h10;
                                            b15.f94163h = j14;
                                            i12 = b15.f94162g & (~B.f94154k);
                                            b15.f94162g = i12;
                                            b15.f94158c = f12;
                                            b15.f94159d = f13;
                                            b15.f94157b = fArr5;
                                            b15.f94164i = list;
                                            i13 = B.f94153j;
                                            if ((i12 & i13) != 0) {
                                                a10.f94142c.e(b15);
                                            } else {
                                                b15.f94162g = i13 | i12;
                                                a10.f94142c.g(b15);
                                            }
                                            if (a11 < f17) {
                                                c13901s3 = c13901s2;
                                                f17 = a11;
                                                b16 = b15;
                                                i18 = c13901s3.f94323e.get(i10).f94277b;
                                                l10 = filter;
                                                fArr3 = fArr;
                                                a12 = a10;
                                                f16 = b12;
                                                b11 = b13;
                                                g13 = g11;
                                                j16 = j12;
                                                j10 = j13;
                                                j15 = endRef;
                                                c13901s5 = c13901s3;
                                            }
                                        } else {
                                            a10 = this;
                                        }
                                        c13901s3 = c13901s2;
                                        i18 = c13901s3.f94323e.get(i10).f94277b;
                                        l10 = filter;
                                        fArr3 = fArr;
                                        a12 = a10;
                                        f16 = b12;
                                        b11 = b13;
                                        g13 = g11;
                                        j16 = j12;
                                        j10 = j13;
                                        j15 = endRef;
                                        c13901s5 = c13901s3;
                                    } else {
                                        z11 = z13;
                                        list = null;
                                        f12 = f11;
                                        if (!z11) {
                                        }
                                        if (j18 == j15) {
                                        }
                                        f13 = f12 + a11;
                                        b15 = b14;
                                        i11 = b15.f94162g;
                                        if ((B.f94153j & i11) != 0) {
                                        }
                                        if (z11) {
                                        }
                                        b15.f94160e = h10;
                                        b15.f94163h = j14;
                                        i12 = b15.f94162g & (~B.f94154k);
                                        b15.f94162g = i12;
                                        b15.f94158c = f12;
                                        b15.f94159d = f13;
                                        b15.f94157b = fArr5;
                                        b15.f94164i = list;
                                        i13 = B.f94153j;
                                        if ((i12 & i13) != 0) {
                                        }
                                        if (a11 < f17) {
                                        }
                                        c13901s3 = c13901s2;
                                        i18 = c13901s3.f94323e.get(i10).f94277b;
                                        l10 = filter;
                                        fArr3 = fArr;
                                        a12 = a10;
                                        f16 = b12;
                                        b11 = b13;
                                        g13 = g11;
                                        j16 = j12;
                                        j10 = j13;
                                        j15 = endRef;
                                        c13901s5 = c13901s3;
                                    }
                                }
                            }
                            list = null;
                            z11 = z10;
                            f12 = f11;
                            if (!z11) {
                            }
                            if (j18 == j15) {
                            }
                            f13 = f12 + a11;
                            b15 = b14;
                            i11 = b15.f94162g;
                            if ((B.f94153j & i11) != 0) {
                            }
                            if (z11) {
                            }
                            b15.f94160e = h10;
                            b15.f94163h = j14;
                            i12 = b15.f94162g & (~B.f94154k);
                            b15.f94162g = i12;
                            b15.f94158c = f12;
                            b15.f94159d = f13;
                            b15.f94157b = fArr5;
                            b15.f94164i = list;
                            i13 = B.f94153j;
                            if ((i12 & i13) != 0) {
                            }
                            if (a11 < f17) {
                            }
                            c13901s3 = c13901s2;
                            i18 = c13901s3.f94323e.get(i10).f94277b;
                            l10 = filter;
                            fArr3 = fArr;
                            a12 = a10;
                            f16 = b12;
                            b11 = b13;
                            g13 = g11;
                            j16 = j12;
                            j10 = j13;
                            j15 = endRef;
                            c13901s5 = c13901s3;
                        } else {
                            g11 = g13;
                            c13901s2 = c13901s5;
                            j12 = j16;
                            b12 = f16;
                            a10 = a12;
                            fArr = fArr3;
                            b13 = b17;
                            i10 = i19;
                            j13 = j19;
                            c13901s3 = c13901s2;
                            i18 = c13901s3.f94323e.get(i10).f94277b;
                            l10 = filter;
                            fArr3 = fArr;
                            a12 = a10;
                            f16 = b12;
                            b11 = b13;
                            g13 = g11;
                            j16 = j12;
                            j10 = j13;
                            j15 = endRef;
                            c13901s5 = c13901s3;
                        }
                    }
                }
                g11 = g13;
                c13901s2 = c13901s5;
                j12 = j16;
                b12 = f16;
                j13 = j10;
                a10 = a12;
                fArr = fArr3;
                b13 = b17;
                i10 = i19;
                c13901s3 = c13901s2;
                i18 = c13901s3.f94323e.get(i10).f94277b;
                l10 = filter;
                fArr3 = fArr;
                a12 = a10;
                f16 = b12;
                b11 = b13;
                g13 = g11;
                j16 = j12;
                j10 = j13;
                j15 = endRef;
                c13901s5 = c13901s3;
            }
            j15 = endRef;
            l10 = filter;
            f15 = f17;
            e10 = b16;
        }
        List<Long> z14 = a12.z(e10);
        if (e10.f94163h != endRef) {
            q10 = Q.PARTIAL_RESULT;
        }
        return O.g(q10, z14);
    }

    public O<C13895l> n(long startRef, float[] centerPos, float radius, L filter) {
        G g10;
        C13901s c13901s;
        int i10;
        long j10;
        C13901s c13901s2;
        G g11;
        long j11;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        B b10;
        C13901s c13901s3;
        L l10 = filter;
        if (!this.f94140a.S(startRef) || centerPos == null || !C13890g.I(centerPos) || radius < 0.0f || !Float.isFinite(radius) || l10 == null) {
            return O.e();
        }
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        this.f94141b.a();
        this.f94142c.b();
        B e10 = this.f94141b.e(startRef);
        C13890g.w(e10.f94157b, centerPos);
        e10.f94160e = 0;
        e10.f94158c = 0.0f;
        e10.f94159d = 0.0f;
        e10.f94163h = startRef;
        e10.f94162g = B.f94153j;
        this.f94142c.g(e10);
        float s10 = C13890g.s(radius);
        while (!this.f94142c.c()) {
            B f10 = this.f94142c.f();
            int i11 = f10.f94162g & (~B.f94153j);
            f10.f94162g = i11;
            f10.f94162g = i11 | B.f94154k;
            long j12 = f10.f94163h;
            U<C13901s, G> K10 = this.f94140a.K(j12);
            C13901s c13901s4 = K10.f94229a;
            G g12 = K10.f94230b;
            int i12 = f10.f94160e;
            long j13 = i12 != 0 ? this.f94141b.g(i12).f94163h : 0L;
            if (j13 != 0) {
                U<C13901s, G> K11 = this.f94140a.K(j13);
                C13901s c13901s5 = K11.f94229a;
                g10 = K11.f94230b;
                c13901s = c13901s5;
            } else {
                g10 = null;
                c13901s = null;
            }
            arrayList4.add(Long.valueOf(j12));
            arrayList5.add(Long.valueOf(j13));
            arrayList6.add(Float.valueOf(f10.f94159d));
            int i13 = c13901s4.f94322d[g12.f94176a];
            while (true) {
                int i14 = i13;
                if (i14 != -1) {
                    B b11 = f10;
                    ArrayList arrayList7 = arrayList6;
                    long j14 = c13901s4.f94323e.get(i14).f94276a;
                    if (j14 != 0) {
                        if (j14 != j13) {
                            U<C13901s, G> K12 = this.f94140a.K(j14);
                            C13901s c13901s6 = K12.f94229a;
                            G g13 = K12.f94230b;
                            if (l10.b(j14, c13901s6, g13)) {
                                i10 = i14;
                                j10 = j13;
                                c13901s2 = c13901s4;
                                g11 = g12;
                                j11 = j12;
                                ArrayList arrayList8 = arrayList4;
                                arrayList3 = arrayList7;
                                ArrayList arrayList9 = arrayList5;
                                O<b> D10 = D(j12, g12, c13901s4, j14, g13, c13901s6, 0, 0);
                                if (!D10.a()) {
                                    b bVar = D10.f94204a;
                                    float[] fArr = bVar.f94146a;
                                    float[] fArr2 = bVar.f94147b;
                                    if (C13890g.f(centerPos, fArr, fArr2).f94229a.floatValue() <= s10) {
                                        B e11 = this.f94141b.e(j14);
                                        int i15 = e11.f94162g;
                                        if ((B.f94154k & i15) == 0) {
                                            if (i15 == 0) {
                                                e11.f94157b = C13890g.N(fArr, fArr2, 0.5f);
                                            }
                                            b10 = b11;
                                            arrayList = arrayList9;
                                            arrayList2 = arrayList8;
                                            float a10 = b10.f94159d + filter.a(b11.f94157b, e11.f94157b, j10, c13901s, g10, j11, c13901s2, g11, j14, c13901s6, g13);
                                            if ((e11.f94162g & B.f94153j) == 0 || a10 < e11.f94159d) {
                                                e11.f94163h = j14;
                                                e11.f94160e = this.f94141b.h(b10);
                                                e11.f94159d = a10;
                                                int i16 = e11.f94162g;
                                                int i17 = B.f94153j;
                                                if ((i16 & i17) != 0) {
                                                    this.f94142c.e(e11);
                                                } else {
                                                    e11.f94162g = i17;
                                                    this.f94142c.g(e11);
                                                }
                                            }
                                        }
                                    }
                                }
                                c13901s3 = c13901s2;
                                b10 = b11;
                                arrayList = arrayList9;
                                arrayList2 = arrayList8;
                                i13 = c13901s3.f94323e.get(i10).f94277b;
                                l10 = filter;
                                arrayList5 = arrayList;
                                f10 = b10;
                                arrayList4 = arrayList2;
                                j13 = j10;
                                g12 = g11;
                                j12 = j11;
                                arrayList6 = arrayList3;
                                c13901s4 = c13901s3;
                            }
                        }
                        i10 = i14;
                        j10 = j13;
                        c13901s3 = c13901s4;
                        g11 = g12;
                        j11 = j12;
                        arrayList = arrayList5;
                        arrayList2 = arrayList4;
                        arrayList3 = arrayList7;
                        b10 = b11;
                        i13 = c13901s3.f94323e.get(i10).f94277b;
                        l10 = filter;
                        arrayList5 = arrayList;
                        f10 = b10;
                        arrayList4 = arrayList2;
                        j13 = j10;
                        g12 = g11;
                        j12 = j11;
                        arrayList6 = arrayList3;
                        c13901s4 = c13901s3;
                    } else {
                        i10 = i14;
                        j10 = j13;
                        c13901s2 = c13901s4;
                        g11 = g12;
                        j11 = j12;
                        arrayList = arrayList5;
                        arrayList2 = arrayList4;
                        arrayList3 = arrayList7;
                        b10 = b11;
                    }
                    c13901s3 = c13901s2;
                    i13 = c13901s3.f94323e.get(i10).f94277b;
                    l10 = filter;
                    arrayList5 = arrayList;
                    f10 = b10;
                    arrayList4 = arrayList2;
                    j13 = j10;
                    g12 = g11;
                    j12 = j11;
                    arrayList6 = arrayList3;
                    c13901s4 = c13901s3;
                }
            }
            l10 = filter;
        }
        return O.k(new C13895l(arrayList4, arrayList5, arrayList6));
    }

    public O<C13895l> o(long startRef, float[] verts, L filter) {
        G g10;
        C13901s c13901s;
        long j10;
        G g11;
        long j11;
        B b10;
        int i10;
        ArrayList arrayList;
        int i11;
        ArrayList arrayList2;
        ArrayList arrayList3;
        C13901s c13901s2;
        L l10 = filter;
        int length = verts.length / 3;
        if (!this.f94140a.S(startRef) || length < 3 || l10 == null) {
            return O.e();
        }
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        this.f94141b.a();
        this.f94142c.b();
        float[] fArr = {0.0f, 0.0f, 0.0f};
        for (int i12 = 0; i12 < length; i12++) {
            int i13 = i12 * 3;
            fArr[0] = fArr[0] + verts[i13];
            fArr[1] = fArr[1] + verts[i13 + 1];
            fArr[2] = fArr[2] + verts[i13 + 2];
        }
        float f10 = 1.0f / length;
        fArr[0] = fArr[0] * f10;
        fArr[1] = fArr[1] * f10;
        fArr[2] = fArr[2] * f10;
        B e10 = this.f94141b.e(startRef);
        C13890g.w(e10.f94157b, fArr);
        e10.f94160e = 0;
        e10.f94158c = 0.0f;
        e10.f94159d = 0.0f;
        e10.f94163h = startRef;
        e10.f94162g = B.f94153j;
        this.f94142c.g(e10);
        while (!this.f94142c.c()) {
            B f11 = this.f94142c.f();
            int i14 = f11.f94162g & (~B.f94153j);
            f11.f94162g = i14;
            f11.f94162g = i14 | B.f94154k;
            long j12 = f11.f94163h;
            U<C13901s, G> K10 = this.f94140a.K(j12);
            C13901s c13901s3 = K10.f94229a;
            G g12 = K10.f94230b;
            int i15 = f11.f94160e;
            long j13 = i15 != 0 ? this.f94141b.g(i15).f94163h : 0L;
            if (j13 != 0) {
                U<C13901s, G> K11 = this.f94140a.K(j13);
                C13901s c13901s4 = K11.f94229a;
                g10 = K11.f94230b;
                c13901s = c13901s4;
            } else {
                g10 = null;
                c13901s = null;
            }
            arrayList4.add(Long.valueOf(j12));
            arrayList5.add(Long.valueOf(j13));
            arrayList6.add(Float.valueOf(f11.f94159d));
            int i16 = c13901s3.f94322d[g12.f94176a];
            while (i16 != -1) {
                ArrayList arrayList7 = arrayList6;
                ArrayList arrayList8 = arrayList5;
                long j14 = c13901s3.f94323e.get(i16).f94276a;
                if (j14 != 0) {
                    if (j14 == j13) {
                        j10 = j13;
                    } else {
                        U<C13901s, G> K12 = this.f94140a.K(j14);
                        long j15 = j13;
                        C13901s c13901s5 = K12.f94229a;
                        G g13 = K12.f94230b;
                        if (l10.b(j14, c13901s5, g13)) {
                            j10 = j15;
                            g11 = g12;
                            C13901s c13901s6 = c13901s3;
                            j11 = j12;
                            B b11 = f11;
                            i10 = i16;
                            arrayList3 = arrayList7;
                            arrayList2 = arrayList8;
                            O<b> D10 = D(j12, g12, c13901s3, j14, g13, c13901s5, 0, 0);
                            if (!D10.a()) {
                                b bVar = D10.f94204a;
                                float[] fArr2 = bVar.f94146a;
                                float[] fArr3 = bVar.f94147b;
                                C13890g.a i17 = C13890g.i(fArr2, fArr3, verts, length);
                                if (i17.f94249a) {
                                    if (i17.f94250b > 1.0f) {
                                        arrayList = arrayList4;
                                        i11 = length;
                                        b10 = b11;
                                    } else if (i17.f94251c >= 0.0f) {
                                        B e11 = this.f94141b.e(j14);
                                        int i18 = e11.f94162g;
                                        if ((B.f94154k & i18) == 0) {
                                            if (i18 == 0) {
                                                e11.f94157b = C13890g.N(fArr2, fArr3, 0.5f);
                                            }
                                            b10 = b11;
                                            arrayList = arrayList4;
                                            i11 = length;
                                            float a10 = b10.f94159d + filter.a(b10.f94157b, e11.f94157b, j10, c13901s, g10, j11, c13901s6, g11, j14, c13901s5, g13);
                                            if ((e11.f94162g & B.f94153j) == 0 || a10 < e11.f94159d) {
                                                e11.f94163h = j14;
                                                e11.f94160e = this.f94141b.h(b10);
                                                e11.f94159d = a10;
                                                int i19 = e11.f94162g;
                                                int i20 = B.f94153j;
                                                if ((i19 & i20) != 0) {
                                                    this.f94142c.e(e11);
                                                } else {
                                                    e11.f94162g = i20;
                                                    this.f94142c.g(e11);
                                                }
                                            }
                                        }
                                    }
                                    c13901s2 = c13901s6;
                                }
                            }
                            c13901s2 = c13901s6;
                            arrayList = arrayList4;
                            i11 = length;
                            b10 = b11;
                        } else {
                            j10 = j15;
                        }
                    }
                    g11 = g12;
                    c13901s2 = c13901s3;
                    j11 = j12;
                    b10 = f11;
                    i10 = i16;
                    arrayList = arrayList4;
                    i11 = length;
                    arrayList2 = arrayList8;
                    arrayList3 = arrayList7;
                } else {
                    j10 = j13;
                    g11 = g12;
                    j11 = j12;
                    b10 = f11;
                    i10 = i16;
                    arrayList = arrayList4;
                    i11 = length;
                    arrayList2 = arrayList8;
                    arrayList3 = arrayList7;
                    c13901s2 = c13901s3;
                }
                i16 = c13901s2.f94323e.get(i10).f94277b;
                l10 = filter;
                c13901s3 = c13901s2;
                arrayList4 = arrayList;
                length = i11;
                j13 = j10;
                g12 = g11;
                j12 = j11;
                arrayList5 = arrayList2;
                arrayList6 = arrayList3;
                f11 = b10;
            }
            l10 = filter;
        }
        return O.k(new C13895l(arrayList4, arrayList5, arrayList6));
    }

    public O<C13896m> p(L filter, a frand) {
        long j10;
        C13900q c13900q;
        L l10 = filter;
        if (l10 == null || frand == null) {
            return O.e();
        }
        G g10 = null;
        char c10 = 0;
        C13901s c13901s = null;
        float f10 = 0.0f;
        for (int i10 = 0; i10 < this.f94140a.x(); i10++) {
            C13901s I10 = this.f94140a.I(i10);
            if (I10 != null && (c13900q = I10.f94321c) != null && c13900q.f94282a != null) {
                f10 += 1.0f;
                if (frand.a() * f10 <= 1.0f) {
                    c13901s = I10;
                }
            }
        }
        if (c13901s == null) {
            return O.f("Tile not found");
        }
        long G10 = this.f94140a.G(c13901s);
        long j11 = 0;
        int i11 = 0;
        float f11 = 0.0f;
        while (true) {
            C13900q c13900q2 = c13901s.f94321c;
            if (i11 >= c13900q2.f94282a.f94304g) {
                break;
            }
            G g11 = c13900q2.f94284c[i11];
            if (g11.b() == 0) {
                long j12 = i11 | G10;
                if (l10.b(j12, c13901s, g11)) {
                    int i12 = 2;
                    float f12 = 0.0f;
                    while (i12 < g11.f94180e) {
                        int[] iArr = g11.f94177b;
                        f12 += C13890g.t(c13901s.f94321c.f94283b, iArr[c10] * 3, iArr[i12 - 1] * 3, iArr[i12] * 3);
                        i12++;
                        G10 = G10;
                        c10 = 0;
                    }
                    j10 = G10;
                    f11 += f12;
                    if (frand.a() * f11 <= f12) {
                        g10 = g11;
                        j11 = j12;
                    }
                    i11++;
                    l10 = filter;
                    G10 = j10;
                    c10 = 0;
                }
            }
            j10 = G10;
            i11++;
            l10 = filter;
            G10 = j10;
            c10 = 0;
        }
        if (g10 == null) {
            return O.f("Poly not found");
        }
        float[] fArr = new float[this.f94140a.y() * 3];
        float[] fArr2 = new float[this.f94140a.y()];
        System.arraycopy(c13901s.f94321c.f94283b, g10.f94177b[0] * 3, fArr, 0, 3);
        for (int i13 = 1; i13 < g10.f94180e; i13++) {
            System.arraycopy(c13901s.f94321c.f94283b, g10.f94177b[i13] * 3, fArr, i13 * 3, 3);
        }
        float[] r10 = C13890g.r(fArr, g10.f94180e, fArr2, frand.a(), frand.a());
        C13896m c13896m = new C13896m(j11, r10);
        O<Float> A10 = A(j11, r10);
        if (A10.a()) {
            return O.g(A10.f94205b, c13896m);
        }
        r10[1] = A10.f94204a.floatValue();
        return O.k(c13896m);
    }

    public O<C13896m> q(long startRef, float[] centerPos, float maxRadius, L filter, a frand) {
        return r(startRef, centerPos, maxRadius, filter, frand, J.c());
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x012b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public O<C13896m> r(long startRef, float[] centerPos, float maxRadius, L filter, a frand, J constraint) {
        G g10;
        float[] fArr;
        long j10;
        boolean z10;
        float[] fArr2;
        float f10;
        int i10;
        G g11;
        long j11;
        int i11;
        boolean z11;
        B b10;
        float f11 = maxRadius;
        L l10 = filter;
        if (!this.f94140a.S(startRef) || centerPos == null || !C13890g.I(centerPos) || f11 < 0.0f || !Float.isFinite(maxRadius) || l10 == null || frand == null) {
            return O.e();
        }
        U<C13901s, G> K10 = this.f94140a.K(startRef);
        if (!l10.b(startRef, K10.f94229a, K10.f94230b)) {
            return O.f("Invalid start ref");
        }
        this.f94141b.a();
        this.f94142c.b();
        B e10 = this.f94141b.e(startRef);
        C13890g.w(e10.f94157b, centerPos);
        boolean z12 = false;
        e10.f94160e = 0;
        e10.f94158c = 0.0f;
        e10.f94159d = 0.0f;
        e10.f94163h = startRef;
        e10.f94162g = B.f94153j;
        this.f94142c.g(e10);
        float f12 = f11 * f11;
        G g12 = null;
        float[] fArr3 = null;
        float f13 = 0.0f;
        long j12 = 0;
        while (!this.f94142c.c()) {
            B f14 = this.f94142c.f();
            int i12 = f14.f94162g & (~B.f94153j);
            f14.f94162g = i12;
            f14.f94162g = i12 | B.f94154k;
            long j13 = f14.f94163h;
            U<C13901s, G> K11 = this.f94140a.K(j13);
            C13901s c13901s = K11.f94229a;
            G g13 = K11.f94230b;
            if (g13.b() == 0) {
                float[] fArr4 = new float[g13.f94180e * 3];
                j10 = j12;
                int i13 = 0;
                while (i13 < g13.f94180e) {
                    System.arraycopy(c13901s.f94321c.f94283b, g13.f94177b[i13] * 3, fArr4, i13 * 3, 3);
                    i13++;
                    fArr3 = fArr3;
                    g12 = g12;
                }
                g10 = g12;
                fArr = fArr3;
                float[] b11 = constraint.b(fArr4, centerPos, f11);
                if (b11 != null) {
                    int i14 = 2;
                    float f15 = 0.0f;
                    for (int length = b11.length / 3; i14 < length; length = length) {
                        f15 += C13890g.t(b11, 0, (i14 - 1) * 3, i14 * 3);
                        i14++;
                    }
                    z10 = false;
                    f13 += f15;
                    if (frand.a() * f13 <= f15) {
                        fArr2 = b11;
                        f10 = f13;
                        g10 = g13;
                        j10 = j13;
                        int i15 = f14.f94160e;
                        long j14 = i15 == 0 ? this.f94141b.g(i15).f94163h : 0L;
                        i10 = c13901s.f94322d[g13.f94176a];
                        while (i10 != -1) {
                            long j15 = c13901s.f94323e.get(i10).f94276a;
                            if (j15 != 0 && j15 != j14) {
                                U<C13901s, G> K12 = this.f94140a.K(j15);
                                C13901s c13901s2 = K12.f94229a;
                                G g14 = K12.f94230b;
                                if (l10.b(j15, c13901s2, g14)) {
                                    g11 = g13;
                                    j11 = j13;
                                    b10 = f14;
                                    i11 = i10;
                                    z11 = false;
                                    O<b> D10 = D(j13, g13, c13901s, j15, g14, c13901s2, 0, 0);
                                    if (!D10.a()) {
                                        b bVar = D10.f94204a;
                                        float[] fArr5 = bVar.f94146a;
                                        float[] fArr6 = bVar.f94147b;
                                        if (C13890g.f(centerPos, fArr5, fArr6).f94229a.floatValue() <= f12) {
                                            B e11 = this.f94141b.e(j15);
                                            int i16 = e11.f94162g;
                                            if ((B.f94154k & i16) == 0) {
                                                if (i16 == 0) {
                                                    e11.f94157b = C13890g.N(fArr5, fArr6, 0.5f);
                                                }
                                                float z13 = b10.f94159d + C13890g.z(b10.f94157b, e11.f94157b);
                                                int i17 = e11.f94162g;
                                                if ((B.f94153j & i17) == 0 || z13 < e11.f94159d) {
                                                    e11.f94163h = j15;
                                                    e11.f94162g = i17 & (~B.f94154k);
                                                    e11.f94160e = this.f94141b.h(b10);
                                                    e11.f94159d = z13;
                                                    int i18 = e11.f94162g;
                                                    int i19 = B.f94153j;
                                                    if ((i18 & i19) != 0) {
                                                        this.f94142c.e(e11);
                                                    } else {
                                                        e11.f94162g = i19;
                                                        this.f94142c.g(e11);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i10 = c13901s.f94323e.get(i11).f94277b;
                                    l10 = filter;
                                    f14 = b10;
                                    z10 = z11;
                                    g13 = g11;
                                    j13 = j11;
                                }
                            }
                            g11 = g13;
                            j11 = j13;
                            i11 = i10;
                            z11 = z10;
                            b10 = f14;
                            i10 = c13901s.f94323e.get(i11).f94277b;
                            l10 = filter;
                            f14 = b10;
                            z10 = z11;
                            g13 = g11;
                            j13 = j11;
                        }
                        l10 = filter;
                        z12 = z10;
                        fArr3 = fArr2;
                        j12 = j10;
                        g12 = g10;
                        f13 = f10;
                        f11 = maxRadius;
                    }
                } else {
                    z10 = false;
                }
            } else {
                g10 = g12;
                fArr = fArr3;
                j10 = j12;
                z10 = z12;
            }
            fArr2 = fArr;
            f10 = f13;
            int i152 = f14.f94160e;
            if (i152 == 0) {
            }
            i10 = c13901s.f94322d[g13.f94176a];
            while (i10 != -1) {
            }
            l10 = filter;
            z12 = z10;
            fArr3 = fArr2;
            j12 = j10;
            g12 = g10;
            f13 = f10;
            f11 = maxRadius;
        }
        float[] fArr7 = fArr3;
        long j16 = j12;
        if (g12 == null) {
            return O.b();
        }
        float[] r10 = C13890g.r(fArr7, fArr7.length / 3, new float[fArr7.length / 3], frand.a(), frand.a());
        C13896m c13896m = new C13896m(j16, r10);
        O<Float> A10 = A(j16, r10);
        if (A10.a()) {
            return O.g(A10.f94205b, c13896m);
        }
        r10[1] = A10.f94204a.floatValue();
        return O.k(c13896m);
    }

    public O<C13896m> s(long startRef, float[] centerPos, float maxRadius, L filter, a frand) {
        return r(startRef, centerPos, maxRadius, filter, frand, J.a());
    }

    public O<List<S>> t(float[] startPos, float[] endPos, List<Long> path, int maxStraightPath, int options) {
        int i10;
        int i11;
        int i12;
        float[] y10;
        float[] y11;
        int i13;
        int i14;
        float[] fArr;
        int i15;
        float[] fArr2;
        long j10;
        int i16;
        int i17;
        long j11;
        int i18;
        int i19;
        float[] fArr3;
        float[] y12;
        float[] y13;
        int i20;
        float[] fArr4;
        int i21;
        ArrayList arrayList = new ArrayList();
        if (startPos == null || !C13890g.I(startPos) || endPos == null || !C13890g.I(endPos) || path == null || path.isEmpty() || path.get(0).longValue() == 0 || maxStraightPath <= 0) {
            return O.e();
        }
        O<float[]> e10 = e(path.get(0).longValue(), startPos);
        if (e10.a()) {
            return O.f("Cannot find start position");
        }
        float[] fArr5 = e10.f94204a;
        O<float[]> e11 = e(path.get(path.size() - 1).longValue(), endPos);
        if (e11.a()) {
            return O.f("Cannot find end position");
        }
        float[] fArr6 = e11.f94204a;
        if (!c(fArr5, 1, path.get(0).longValue(), arrayList, maxStraightPath).c()) {
            return O.k(arrayList);
        }
        if (path.size() > 1) {
            float[] y14 = C13890g.y(fArr5);
            float[] y15 = C13890g.y(y14);
            float[] y16 = C13890g.y(y14);
            float[] fArr7 = y15;
            long longValue = path.get(0).longValue();
            long longValue2 = path.get(0).longValue();
            int i22 = 0;
            int i23 = 0;
            int i24 = 0;
            int i25 = 0;
            int i26 = 0;
            int i27 = 0;
            while (i25 < path.size()) {
                int i28 = i25 + 1;
                if (i28 < path.size()) {
                    i10 = i23;
                    i11 = i28;
                    O<b> C10 = C(path.get(i25).longValue(), path.get(i28).longValue());
                    if (C10.a()) {
                        O<float[]> e12 = e(path.get(i25).longValue(), endPos);
                        if (e12.a()) {
                            return O.e();
                        }
                        float[] fArr8 = e12.f94204a;
                        if ((options & 3) != 0) {
                            i21 = i25;
                            b(i22, i25, fArr8, path, arrayList, maxStraightPath, options);
                        } else {
                            i21 = i25;
                        }
                        c(fArr8, 0, path.get(i21).longValue(), arrayList, maxStraightPath);
                        return O.k(arrayList);
                    }
                    i12 = i25;
                    b bVar = C10.f94204a;
                    y10 = bVar.f94146a;
                    y11 = bVar.f94147b;
                    i13 = bVar.f94149d;
                    if (i12 == 0 && C13890g.f(y14, y10, y11).f94229a.floatValue() < C13890g.s(0.001f)) {
                        i23 = i10;
                        i18 = i12;
                        j11 = 0;
                        i25 = i18 + 1;
                    }
                } else {
                    i10 = i23;
                    i11 = i28;
                    i12 = i25;
                    y10 = C13890g.y(fArr6);
                    y11 = C13890g.y(fArr6);
                    i13 = 0;
                }
                if (C13890g.u(y14, y16, y11) > 0.0f) {
                    i14 = i24;
                    fArr = fArr7;
                    i15 = i11;
                    fArr2 = y16;
                    j10 = longValue2;
                    i16 = i27;
                    i17 = i10;
                } else if (C13890g.H(y14, y16) || C13890g.u(y14, fArr7, y11) > 0.0f) {
                    i14 = i24;
                    fArr = fArr7;
                    i15 = i11;
                    fArr2 = C13890g.y(y11);
                    i16 = i13;
                    j10 = i15 < path.size() ? path.get(i15).longValue() : 0L;
                    i17 = i12;
                } else {
                    if ((options & 3) != 0) {
                        i20 = i24;
                        fArr4 = fArr7;
                        if (!b(i22, i26, fArr7, path, arrayList, maxStraightPath, options).c()) {
                            return O.k(arrayList);
                        }
                    } else {
                        i20 = i24;
                        fArr4 = fArr7;
                    }
                    y12 = C13890g.y(fArr4);
                    if (!c(y12, longValue == 0 ? 2 : i20 == 1 ? 4 : 0, longValue, arrayList, maxStraightPath).c()) {
                        return O.k(arrayList);
                    }
                    y13 = C13890g.y(y12);
                    y16 = C13890g.y(y12);
                    i24 = i20;
                    i22 = i26;
                    i23 = i22;
                    i18 = i23;
                    j11 = 0;
                    float[] fArr9 = y12;
                    fArr7 = y13;
                    y14 = fArr9;
                    i25 = i18 + 1;
                }
                if (C13890g.u(y14, fArr, y10) < 0.0f) {
                    float[] fArr10 = fArr2;
                    j11 = 0;
                    fArr7 = fArr;
                    i18 = i12;
                    i24 = i14;
                    i27 = i16;
                    i23 = i17;
                    y16 = fArr10;
                } else if (C13890g.H(y14, fArr) || C13890g.u(y14, fArr2, y10) < 0.0f) {
                    int i29 = i16;
                    float[] fArr11 = fArr2;
                    j11 = 0;
                    float[] y17 = C13890g.y(y10);
                    long longValue3 = i15 < path.size() ? path.get(i15).longValue() : 0L;
                    fArr7 = y17;
                    longValue = longValue3;
                    i18 = i12;
                    i26 = i18;
                    i27 = i29;
                    y16 = fArr11;
                    i24 = i13;
                    i23 = i17;
                } else {
                    if ((options & 3) != 0) {
                        i19 = i16;
                        fArr3 = fArr2;
                        if (!b(i22, i17, fArr2, path, arrayList, maxStraightPath, options).c()) {
                            return O.k(arrayList);
                        }
                    } else {
                        i19 = i16;
                        fArr3 = fArr2;
                    }
                    y12 = C13890g.y(fArr3);
                    j11 = 0;
                    if (!c(y12, j10 == 0 ? 2 : i19 == 1 ? 4 : 0, j10, arrayList, maxStraightPath).c()) {
                        return O.k(arrayList);
                    }
                    y13 = C13890g.y(y12);
                    y16 = C13890g.y(y12);
                    i24 = i14;
                    i27 = i19;
                    i22 = i17;
                    i23 = i22;
                    i18 = i23;
                    i26 = i18;
                    longValue2 = j10;
                    float[] fArr92 = y12;
                    fArr7 = y13;
                    y14 = fArr92;
                    i25 = i18 + 1;
                }
                longValue2 = j10;
                i25 = i18 + 1;
            }
            if ((options & 3) != 0 && !b(i22, path.size() - 1, fArr6, path, arrayList, maxStraightPath, options).c()) {
                return O.k(arrayList);
            }
        }
        c(fArr6, 2, 0L, arrayList, maxStraightPath);
        return O.k(arrayList);
    }

    public C13904v u() {
        return this.f94140a;
    }

    public O<float[]> v(float[] fromPos, long from, G fromPoly, C13901s fromTile, float[] toPos, long to, G toPoly, C13901s toTile) {
        O<b> D10 = D(from, fromPoly, fromTile, to, toPoly, toTile, 0, 0);
        if (D10.a()) {
            return O.h(D10.f94205b, D10.f94206c);
        }
        b bVar = D10.f94204a;
        float[] fArr = bVar.f94146a;
        float[] fArr2 = bVar.f94147b;
        Optional<U<Float, Float>> h10 = C13890g.h(fromPos, toPos, fArr, fArr2);
        return O.k(C13890g.N(fArr, fArr2, h10.isPresent() ? C13890g.a(h10.get().f94230b.floatValue(), 0.1f, 0.9f) : 0.5f));
    }

    public O<float[]> w(long from, G fromPoly, C13901s fromTile, long to, G toPoly, C13901s toTile) {
        O<b> D10 = D(from, fromPoly, fromTile, to, toPoly, toTile, 0, 0);
        if (D10.a()) {
            return O.h(D10.f94205b, D10.f94206c);
        }
        b bVar = D10.f94204a;
        float[] fArr = bVar.f94146a;
        float[] fArr2 = bVar.f94147b;
        return O.k(new float[]{(fArr[0] + fArr2[0]) * 0.5f, (fArr[1] + fArr2[1]) * 0.5f, (fArr[2] + fArr2[2]) * 0.5f});
    }

    public C x() {
        return this.f94141b;
    }

    public O<List<Long>> y(long endRef) {
        if (!this.f94140a.S(endRef)) {
            return O.f("Invalid end ref");
        }
        List<B> d10 = this.f94141b.d(endRef);
        if (d10.size() != 1) {
            return O.f("Invalid end ref");
        }
        B b10 = d10.get(0);
        return (b10.f94162g & B.f94154k) == 0 ? O.f("Invalid end ref") : O.k(z(b10));
    }

    @in.a
    public List<Long> z(B endNode) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        do {
            arrayList.add(0, Long.valueOf(endNode.f94163h));
            if (endNode.f94164i != null) {
                B g10 = this.f94141b.g(endNode.f94160e);
                for (int size = endNode.f94164i.size() - 1; size >= 0; size--) {
                    Long l10 = endNode.f94164i.get(size);
                    long longValue = l10.longValue();
                    if (longValue != endNode.f94163h && longValue != g10.f94163h) {
                        arrayList.add(0, l10);
                    }
                }
                endNode = g10;
            } else {
                i10++;
                if (i10 >= this.f94144e) {
                    J4.d.U1("NavMesh getPathToNode stopped due to maximum of " + this.f94144e + " max fails!");
                    endNode = null;
                } else {
                    endNode = this.f94141b.g(endNode.f94160e);
                }
            }
        } while (endNode != null);
        return arrayList;
    }

    public static class a {

        public final Random f94145a;

        public a() {
            this.f94145a = new Random();
        }

        public float a() {
            return this.f94145a.nextFloat();
        }

        public a(long seed) {
            this.f94145a = new Random(seed);
        }
    }

    public A(C13904v nav, int maxFails) {
        this.f94140a = nav;
        this.f94141b = new C();
        this.f94142c = new E();
        this.f94144e = maxFails;
    }
}
