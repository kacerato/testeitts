package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;

public final class C12101j6 {

    public static final AbstractC12181s6 f62334a;

    public static final int f62335b = 0;

    static {
        int i10 = C12056e6.f62268d;
        f62334a = new C12199u6();
    }

    public static int A(List list) {
        return list.size() * 4;
    }

    public static int B(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (W4.G(i10 << 3) + 4);
    }

    public static int C(List list) {
        return list.size() * 8;
    }

    public static int D(int i10, List list, boolean z10) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (W4.G(i10 << 3) + 8);
    }

    public static int E(int i10, Object obj, InterfaceC12083h6 interfaceC12083h6) {
        int i11 = i10 << 3;
        if (!(obj instanceof F5)) {
            return W4.G(i11) + W4.d((W5) obj, interfaceC12083h6);
        }
        int G10 = W4.G(i11);
        int b10 = ((F5) obj).b();
        return G10 + W4.G(b10) + b10;
    }

    public static AbstractC12181s6 a() {
        return f62334a;
    }

    public static boolean b(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static void c(AbstractC12037c5 abstractC12037c5, Object obj, Object obj2) {
        if (((AbstractC12136n5) obj2).zzb.f62290a.isEmpty()) {
            return;
        }
        throw null;
    }

    public static void d(AbstractC12181s6 abstractC12181s6, Object obj, Object obj2) {
        AbstractC12163q5 abstractC12163q5 = (AbstractC12163q5) obj;
        C12190t6 c12190t6 = abstractC12163q5.zzc;
        C12190t6 c12190t62 = ((AbstractC12163q5) obj2).zzc;
        if (!C12190t6.a().equals(c12190t62)) {
            if (C12190t6.a().equals(c12190t6)) {
                c12190t6 = C12190t6.c(c12190t6, c12190t62);
            } else {
                c12190t6.l(c12190t62);
            }
        }
        abstractC12163q5.zzc = c12190t6;
    }

    public static Object e(Object obj, int i10, int i11, Object obj2, AbstractC12181s6 abstractC12181s6) {
        if (obj2 == null) {
            obj2 = abstractC12181s6.a(obj);
        }
        ((C12190t6) obj2).k(i10 << 3, Long.valueOf(i11));
        return obj2;
    }

    public static void f(int i10, List list, E6 e62, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e62.r(i10, list, z10);
    }

    public static void g(int i10, List list, E6 e62, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e62.t(i10, list, z10);
    }

    public static void h(int i10, List list, E6 e62, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e62.J(i10, list, z10);
    }

    public static void i(int i10, List list, E6 e62, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e62.I(i10, list, z10);
    }

    public static void j(int i10, List list, E6 e62, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e62.G(i10, list, z10);
    }

    public static void k(int i10, List list, E6 e62, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e62.c(i10, list, z10);
    }

    public static void l(int i10, List list, E6 e62, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e62.n(i10, list, z10);
    }

    public static void m(int i10, List list, E6 e62, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e62.L(i10, list, z10);
    }

    public static void n(int i10, List list, E6 e62, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e62.q(i10, list, z10);
    }

    public static void o(int i10, List list, E6 e62, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e62.H(i10, list, z10);
    }

    public static void p(int i10, List list, E6 e62, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e62.K(i10, list, z10);
    }

    public static void q(int i10, List list, E6 e62, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e62.m(i10, list, z10);
    }

    public static void r(int i10, List list, E6 e62, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e62.A(i10, list, z10);
    }

    public static void s(int i10, List list, E6 e62, boolean z10) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        e62.x(i10, list, z10);
    }

    public static int t(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof J5) {
            J5 j52 = (J5) list;
            i10 = 0;
            while (i11 < size) {
                i10 += W4.a(j52.q4(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += W4.a(((Long) list.get(i11)).longValue());
                i11++;
            }
        }
        return i10;
    }

    public static int u(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof J5) {
            J5 j52 = (J5) list;
            i10 = 0;
            while (i11 < size) {
                i10 += W4.a(j52.q4(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += W4.a(((Long) list.get(i11)).longValue());
                i11++;
            }
        }
        return i10;
    }

    public static int v(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof J5) {
            J5 j52 = (J5) list;
            i10 = 0;
            while (i11 < size) {
                long q42 = j52.q4(i11);
                i10 += W4.a((q42 >> 63) ^ (q42 + q42));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                long longValue = ((Long) list.get(i11)).longValue();
                i10 += W4.a((longValue >> 63) ^ (longValue + longValue));
                i11++;
            }
        }
        return i10;
    }

    public static int w(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C12171r5) {
            C12171r5 c12171r5 = (C12171r5) list;
            i10 = 0;
            while (i11 < size) {
                i10 += W4.a(c12171r5.j(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += W4.a(((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
        return i10;
    }

    public static int x(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C12171r5) {
            C12171r5 c12171r5 = (C12171r5) list;
            i10 = 0;
            while (i11 < size) {
                i10 += W4.a(c12171r5.j(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += W4.a(((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
        return i10;
    }

    public static int y(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C12171r5) {
            C12171r5 c12171r5 = (C12171r5) list;
            i10 = 0;
            while (i11 < size) {
                i10 += W4.G(c12171r5.j(i11));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                i10 += W4.G(((Integer) list.get(i11)).intValue());
                i11++;
            }
        }
        return i10;
    }

    public static int z(List list) {
        int i10;
        int size = list.size();
        int i11 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C12171r5) {
            C12171r5 c12171r5 = (C12171r5) list;
            i10 = 0;
            while (i11 < size) {
                int j10 = c12171r5.j(i11);
                i10 += W4.G((j10 >> 31) ^ (j10 + j10));
                i11++;
            }
        } else {
            i10 = 0;
            while (i11 < size) {
                int intValue = ((Integer) list.get(i11)).intValue();
                i10 += W4.G((intValue >> 31) ^ (intValue + intValue));
                i11++;
            }
        }
        return i10;
    }
}
