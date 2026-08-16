package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C8106kb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

public abstract class AbstractC9087qR {

    public static final boolean f51780a = true;

    public static com.android.tools.r8.graph.M2 a(C4724u1 c4724u1, com.android.tools.r8.graph.M2 m22) {
        byte b10 = m22.f36592f.f36562f[0];
        if (b10 != 70 && b10 != 83 && b10 != 90 && b10 != 73 && b10 != 74) {
            switch (b10) {
                case 66:
                case 67:
                case 68:
                    break;
                default:
                    throw new C5417Jv0("Invalid primitive type descriptor: " + ((Object) m22));
            }
        }
        return c4724u1.d(m22);
    }

    public static void b(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, boolean z10, C7051eC c7051eC, C4724u1 c4724u1) {
        com.android.tools.r8.graph.M2 m24;
        if (m22.a(m23)) {
            return;
        }
        boolean P02 = m22.P0();
        boolean P03 = m23.P0();
        if (P02 && P03) {
            a(m22, m23, c7051eC);
            return;
        }
        if (P03) {
            if (m22.a(c4724u1.f38068i2)) {
                m24 = a(c4724u1, m23);
                c7051eC.a(new C7710i9(m24));
            } else {
                m24 = m22;
            }
            com.android.tools.r8.graph.M2 m25 = (com.android.tools.r8.graph.M2) ((C6379aA) c4724u1.f38152s6.f()).get(m24);
            if (m25 != null) {
                c7051eC.a(new C7437ga(182, c4724u1.f(m24), false));
                a(m25, m23, c7051eC);
                return;
            }
        }
        if (P02) {
            com.android.tools.r8.graph.M2 a10 = a(c4724u1, m22);
            if (m23.a(a10) || m23.a(c4724u1.f38068i2) || m23.a(c4724u1.f38032d6) || m23.a(c4724u1.f38056g6) || (!a10.a(c4724u1.f37849E1) && !a10.a(c4724u1.f37863G1) && m23.a(c4724u1.f38028d2))) {
                c7051eC.a(new C7437ga(184, c4724u1.c(a10), false));
                return;
            }
        }
        if (m22.E0() && (m23.a(c4724u1.f38068i2) || m23.E0())) {
            return;
        }
        if ((m22.I0() && m23.I0()) || (m22.a(c4724u1.f38068i2) && m23.E0())) {
            if (!z10 || m23.a(c4724u1.f38068i2)) {
                return;
            }
            c7051eC.a(new C7710i9(m23));
            return;
        }
        throw new C5417Jv0("Unexpected type adjustment from " + m22.j0() + " to " + ((Object) m23));
    }

    public static boolean a(C4724u1 c4724u1, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        if (m22.a(m23)) {
            return true;
        }
        if (m22.E0()) {
            return m23.a(c4724u1.f38068i2) || m23.E0();
        }
        if (m23.E0()) {
            return m22.a(c4724u1.f38068i2);
        }
        if (m22.P0()) {
            if (m23.P0()) {
                return a(m22.f36592f.f36562f[0], m23.f36592f.f36562f[0]);
            }
            com.android.tools.r8.graph.M2 a10 = a(c4724u1, m22);
            if (m23.a(a10) || m23.a(c4724u1.f38068i2) || m23.a(c4724u1.f38032d6) || m23.a(c4724u1.f38056g6)) {
                return true;
            }
            return (a10.a(c4724u1.f37982X1) || a10.a(c4724u1.f37968V1) || !m23.f36592f.g(c4724u1.f37903M)) ? false : true;
        }
        if (!m23.P0()) {
            return m22.I0() && m23.I0();
        }
        if (m22.a(c4724u1.f38068i2)) {
            return true;
        }
        com.android.tools.r8.graph.M2 m24 = (com.android.tools.r8.graph.M2) ((C6379aA) c4724u1.f38152s6.f()).get(m22);
        return m24 != null && a(m24.f36592f.f36562f[0], m23.f36592f.f36562f[0]);
    }

    public static boolean a(byte b10, byte b11) {
        if (b10 == b11) {
            return true;
        }
        if (b10 == 70) {
            return b11 == 68;
        }
        if (b10 != 83) {
            if (b10 != 90) {
                if (b10 == 73) {
                    return b11 == 74 || b11 == 70 || b11 == 68;
                }
                if (b10 == 74) {
                    return b11 == 70 || b11 == 68;
                }
                switch (b10) {
                    case 66:
                        return b11 == 83 || b11 == 73 || b11 == 74 || b11 == 70 || b11 == 68;
                    case 67:
                        break;
                    case 68:
                        break;
                    default:
                        throw new C5417Jv0("Invalid primitive type descriptor: " + ((int) b10));
                }
            }
            return false;
        }
        return b11 == 73 || b11 == 74 || b11 == 70 || b11 == 68;
    }

    public static com.android.tools.r8.graph.G a(C7753iR c7753iR, com.android.tools.r8.graph.A2 a22, InterfaceC8586nR interfaceC8586nR) {
        int i10;
        com.android.tools.r8.graph.A2 a23;
        com.android.tools.r8.graph.M2 m22;
        int i11;
        boolean a10;
        B60.c a11;
        EnumC8071kK enumC8071kK;
        boolean a12;
        C4724u1 b10 = c7753iR.f48940a.b();
        AbstractC7586hR abstractC7586hR = c7753iR.f48946g;
        if (abstractC7586hR instanceof C7085eR) {
            com.android.tools.r8.graph.M2 m23 = ((C7085eR) abstractC7586hR).f47680f;
            com.android.tools.r8.graph.A2 a13 = b10.a(m23, b10.a(b10.f37905M1, new com.android.tools.r8.graph.M2[0]), b10.f38067i1);
            int i12 = 1;
            for (com.android.tools.r8.graph.M2 m24 : a22.f36127i.f36441f.f36675b) {
                i12 += EnumC5477Kw0.a(m24).c();
            }
            C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
            return new com.android.tools.r8.graph.G(a22.f38297f, 2, i12, AbstractC7552hC.a(new C10106wa(m23), new C8106kb(C8106kb.a.Dup), new C7437ga(183, a13, false), new C4965Cb()), c6190Xe0, c6190Xe0);
        }
        com.android.tools.r8.graph.A2 a24 = abstractC7586hR.f48554a;
        C8085kR c8085kR = c7753iR.f48943d;
        com.android.tools.r8.graph.M2[] m2Arr = c8085kR.f49631g.f36675b;
        com.android.tools.r8.graph.O2 n02 = c8085kR.f49626b.y0().n0();
        com.android.tools.r8.graph.M2 o02 = c7753iR.f48943d.f49626b.y0().o0();
        com.android.tools.r8.graph.I2 i22 = c7753iR.f48943d.f49627c;
        com.android.tools.r8.graph.M2[] m2Arr2 = i22.f36441f.f36675b;
        com.android.tools.r8.graph.M2 m25 = i22.f36440e;
        if (m25.P0() && a22.z0().Q0()) {
            if (!f51780a) {
                com.android.tools.r8.graph.M2 z02 = a24.z0();
                if (C8085kR.a(b10, m25, o02)) {
                    a12 = true;
                } else {
                    a12 = m25.P0() ? a(b10, z02, m25) : false;
                }
                if (!a12) {
                    throw new AssertionError();
                }
            }
            m25 = b10.d(a24.z0());
        }
        boolean g10 = a24.f38298g.g(b10.f38067i1);
        boolean z10 = f51780a;
        if (!z10 && g10 && abstractC7586hR.f48555b != EnumC8071kK.f49580d) {
            throw new AssertionError();
        }
        EnumC8071kK enumC8071kK2 = abstractC7586hR.f48555b;
        EnumC8071kK enumC8071kK3 = EnumC8071kK.f49584h;
        boolean z11 = enumC8071kK2 == enumC8071kK3 || enumC8071kK2 == EnumC8071kK.f49581e || (enumC8071kK2 == EnumC8071kK.f49580d && !g10);
        ArrayList arrayList = new ArrayList();
        if (z11) {
            arrayList.add(a24.f38297f);
        }
        com.android.tools.r8.graph.M2[] m2Arr3 = a24.f36127i.f36441f.f36675b;
        m2Arr3.getClass();
        ArrayList arrayList2 = new ArrayList(CT.a(m2Arr3.length));
        Collections.addAll(arrayList2, m2Arr3);
        arrayList.addAll(arrayList2);
        com.android.tools.r8.graph.M2 m26 = a24.f36127i.f36440e;
        if (!z10 && (enumC8071kK = abstractC7586hR.f48555b) != EnumC8071kK.f49582f && enumC8071kK != enumC8071kK3 && enumC8071kK != EnumC8071kK.f49580d && enumC8071kK != EnumC8071kK.f49581e) {
            throw new AssertionError();
        }
        if (!z10) {
            if (g10) {
                m26 = abstractC7586hR.f48554a.f38297f;
            }
            ArrayList arrayList3 = new ArrayList();
            m2Arr.getClass();
            ArrayList arrayList4 = new ArrayList(CT.a(m2Arr.length));
            Collections.addAll(arrayList4, m2Arr);
            arrayList3.addAll(arrayList4);
            m2Arr2.getClass();
            ArrayList arrayList5 = new ArrayList(CT.a(m2Arr2.length));
            Collections.addAll(arrayList5, m2Arr2);
            arrayList3.addAll(arrayList5);
            int size = arrayList3.size();
            if (size != arrayList.size() && !z10) {
                throw new AssertionError();
            }
            int i13 = 0;
            while (i13 < size) {
                ArrayList arrayList6 = arrayList3;
                if (!a(b10, (com.android.tools.r8.graph.M2) arrayList3.get(i13), (com.android.tools.r8.graph.M2) arrayList.get(i13)) && !f51780a) {
                    throw new AssertionError();
                }
                i13++;
                arrayList3 = arrayList6;
            }
            if (!m25.S0() && !a(b10, m26, m25) && !f51780a) {
                throw new AssertionError();
            }
        }
        C7051eC c7051eC = new C7051eC();
        if (g10) {
            c7051eC.a(new C10106wa(a24.f38297f));
            c7051eC.a(new C8106kb(C8106kb.a.Dup));
            i10 = 2;
        } else {
            i10 = 0;
        }
        int length = m2Arr.length;
        int i14 = 0;
        while (i14 < length) {
            C4554l1 a14 = c7753iR.a(i14);
            EnumC5477Kw0 a15 = EnumC5477Kw0.a(a14.f37449i);
            c7051eC.a(new C8938pa(EnumC5477Kw0.f41824b, 0));
            c7051eC.a(new T9(a14));
            i10 += a15.c();
            i14++;
            g10 = g10;
            m25 = m25;
        }
        com.android.tools.r8.graph.M2 m27 = m25;
        boolean z12 = g10;
        int i15 = 1;
        for (int i16 = 0; i16 < n02.size(); i16++) {
            EnumC5477Kw0 a16 = EnumC5477Kw0.a(a22.x0().f36675b[i16]);
            c7051eC.a(new C8938pa(a16, i15));
            i15 += a16.c();
            com.android.tools.r8.graph.M2 m28 = (com.android.tools.r8.graph.M2) arrayList.get(i16 + length);
            com.android.tools.r8.graph.M2 j10 = n02.j(i16);
            com.android.tools.r8.graph.M2 m29 = m2Arr2[i16];
            if (!j10.a(m29)) {
                if (!f51780a && !C8085kR.a(b10, m29, j10)) {
                    throw new AssertionError();
                }
                c7051eC.a(new C7710i9(m29));
            }
            i10 += a(m29, m28, false, c7051eC, b10);
        }
        C7437ga c7437ga = new C7437ga(abstractC7586hR.f48555b.a(), a24, abstractC7586hR.f48556c);
        if (abstractC7586hR instanceof C7252fR) {
            IH ih2 = new IH();
            IH ih3 = new IH();
            if (c7753iR.f48940a.E().J()) {
                a23 = a22;
                B60.c.a a17 = B60.c.t().a(a23);
                a17.f38816e = true;
                a11 = a17.a(0).a();
            } else {
                a11 = null;
                a23 = a22;
            }
            Collection a18 = interfaceC8586nR.a(a11, c7437ga, new C8235lI0(ih2), new C8402mI0(ih3));
            if (a18 != null) {
                c7051eC.b((Iterable) a18);
                i15 += ih2.a();
                i10 += ih3.a();
            } else {
                c7051eC.a(c7437ga);
            }
        } else {
            a23 = a22;
            c7051eC.a(c7437ga);
        }
        int i17 = i15;
        com.android.tools.r8.graph.M2 z03 = a24.z0();
        if (!z03.S0()) {
            EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
            i10 = Math.max(i10, EnumC5477Kw0.a((char) z03.f36592f.f36562f[0]).c());
        }
        if (m27.S0()) {
            if (!z03.S0()) {
                c7051eC.a(new C8106kb(z03.T0() ? C8106kb.a.Pop2 : C8106kb.a.Pop));
            }
            c7051eC.a(new C6607bb());
            i11 = i10;
        } else {
            boolean z13 = f51780a;
            if (!z13 && !z12 && z03.S0()) {
                throw new AssertionError();
            }
            if (z12) {
                z03 = a24.f38297f;
            }
            if (z13) {
                m22 = m27;
            } else {
                m22 = m27;
                if (C8085kR.a(b10, m22, o02)) {
                    a10 = true;
                } else {
                    a10 = m22.P0() ? a(b10, z03, m22) : false;
                }
                if (!a10) {
                    throw new AssertionError();
                }
            }
            int max = Math.max(i10, a(z03, m22, true, c7051eC, b10));
            EnumC5477Kw0 enumC5477Kw02 = EnumC5477Kw0.f41824b;
            c7051eC.a(new C6440ab(EnumC5477Kw0.a((char) m22.f36592f.f36562f[0])));
            i11 = max;
        }
        C6190Xe0 c6190Xe02 = C6190Xe0.f45779e;
        return new com.android.tools.r8.graph.G(a23.f38297f, i11, i17, c7051eC.a(), c6190Xe02, c6190Xe02);
    }

    public static int a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, boolean z10, C7051eC c7051eC, C4724u1 c4724u1) {
        b(m22, m23, z10, c7051eC, c4724u1);
        if (m22.a(m23)) {
            EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
            return EnumC5477Kw0.a((char) m22.f36592f.f36562f[0]).c();
        }
        com.android.tools.r8.graph.M2 m24 = (com.android.tools.r8.graph.M2) ((C6379aA) c4724u1.f38152s6.f()).get(m22);
        EnumC5477Kw0 enumC5477Kw02 = EnumC5477Kw0.f41824b;
        return Math.max(EnumC5477Kw0.a((char) m22.f36592f.f36562f[0]).c(), Math.max(m24 != null ? EnumC5477Kw0.a((char) m24.f36592f.f36562f[0]).c() : 0, EnumC5477Kw0.a(m23).c()));
    }

    public static void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, C7051eC c7051eC) {
        boolean z10 = f51780a;
        if (!z10 && (!m22.P0() || !m23.P0())) {
            throw new AssertionError();
        }
        if (m22.a(m23)) {
            return;
        }
        T10 a10 = T10.a(m22);
        T10 a11 = T10.a(m23);
        if (a10 != null && a11 != null) {
            if (!z10 && a10 == a11) {
                throw new AssertionError();
            }
            int i10 = AbstractC8920pR.f51527a[a11.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 == 5) {
                                if (a10 != T10.f44371g && a10 != T10.f44370f) {
                                    a10 = T10.f44369e;
                                }
                                c7051eC.a(new C4904Ba(a10, a11));
                                return;
                            }
                        } else if (a10 != T10.f44372h) {
                            T10 t10 = T10.f44370f;
                            if (a10 != t10) {
                                t10 = T10.f44369e;
                            }
                            c7051eC.a(new C4904Ba(t10, a11));
                            return;
                        }
                    } else if (a10 != T10.f44371g && a10 != T10.f44372h) {
                        c7051eC.a(new C4904Ba(T10.f44369e, a11));
                        return;
                    }
                } else if (a10 == T10.f44366b || a10 == T10.f44367c || a10 == T10.f44368d) {
                    return;
                }
            } else if (a10 == T10.f44366b) {
                c7051eC.a(new C4904Ba(T10.f44369e, a11));
                return;
            }
        }
        throw new C5417Jv0("Type " + m22.j0() + " cannot be converted to " + m23.j0() + " via primitive widening conversion.");
    }
}
