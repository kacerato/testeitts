package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.R2;

public abstract class AbstractC10280xc0 {

    public static final boolean f53783a = true;

    public static boolean a(com.android.tools.r8.graph.D0 d02, C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        int i10;
        C4724u1 b10 = c4798y.b();
        com.android.tools.r8.graph.C2 c22 = d02.f36214g;
        if (!c22.f36190e.c() || c22.f36191f != b10.f38112n6.f37287a) {
            return false;
        }
        if (c22.f36192g) {
            if (f53783a) {
                return false;
            }
            throw new AssertionError((Object) "Invoke-dynamic invoking non interface method ObjectMethods#bootstrap as an interface method.");
        }
        if (d02.f36215h.size() < 2) {
            if (f53783a) {
                return false;
            }
            throw new AssertionError((Object) "Invoke-dynamic invoking method ObjectMethods#bootstrap with less than 2 parameters.");
        }
        R2.l E02 = ((com.android.tools.r8.graph.R2) d02.f36215h.get(0)).E0();
        if (E02 == null) {
            if (f53783a) {
                return false;
            }
            throw new AssertionError((Object) "Invoke-dynamic invoking method ObjectMethods#bootstrap with an invalid type.");
        }
        com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) E02.W0();
        com.android.tools.r8.graph.M2 c10 = c4798y.v().c(c4798y.f38414g, m22);
        com.android.tools.r8.graph.E0 holder = h52.getHolder();
        if (c10 != holder.f36245e) {
            holder = c4798y.a(c10);
        }
        if (holder != null && !holder.v1()) {
            R2.k D02 = ((com.android.tools.r8.graph.R2) d02.f36215h.get(1)).D0();
            if (D02 == null) {
                if (f53783a) {
                    return false;
                }
                throw new AssertionError((Object) "Invoke-dynamic invoking method ObjectMethods#bootstrap with invalid field names.");
            }
            com.android.tools.r8.graph.L2 l22 = (com.android.tools.r8.graph.L2) D02.W0();
            boolean z10 = f53783a;
            if (!z10 && !l22.toString().isEmpty() && l22.toString().split(";").length != d02.f36215h.size() - 2) {
                throw new AssertionError();
            }
            if (!z10 && holder.k1().size() > d02.f36215h.size() - 2) {
                throw new AssertionError();
            }
            while (i10 < d02.f36215h.size()) {
                com.android.tools.r8.graph.X2 z02 = ((com.android.tools.r8.graph.R2) d02.f36215h.get(i10)).z0();
                if (z02 != null) {
                    com.android.tools.r8.graph.B2 b22 = ((com.android.tools.r8.graph.C2) z02.f36759d).f36190e;
                    b22.getClass();
                    i10 = (b22 == com.android.tools.r8.graph.B2.f36150f && ((com.android.tools.r8.graph.C2) z02.f36759d).f36191f.p0()) ? i10 + 1 : 2;
                }
                if (f53783a) {
                    return false;
                }
                throw new AssertionError((Object) "Invoke-dynamic invoking method ObjectMethods#bootstrap with invalid getters.");
            }
            com.android.tools.r8.graph.L2 l23 = d02.f36212e;
            if (l23 == b10.f38098m0) {
                if (f53783a || d02.f36213f == b10.a(b10.f38052g2, m22)) {
                    return true;
                }
                throw new AssertionError();
            }
            if (l23 == b10.f37987Y) {
                if (f53783a || d02.f36213f == b10.a(b10.f37884J1, m22)) {
                    return true;
                }
                throw new AssertionError();
            }
            if (l23 == b10.f37980X) {
                if (f53783a || d02.f36213f == b10.a(b10.f37849E1, m22, b10.f38068i2)) {
                    return true;
                }
                throw new AssertionError();
            }
        }
        return false;
    }

    public static C10113wc0 a(com.android.tools.r8.graph.D0 d02, C4798y c4798y) {
        R2.l E02 = ((com.android.tools.r8.graph.R2) d02.f36215h.get(0)).E0();
        com.android.tools.r8.graph.L2 l22 = (com.android.tools.r8.graph.L2) ((com.android.tools.r8.graph.R2) d02.f36215h.get(1)).D0().W0();
        C4554l1[] c4554l1Arr = new C4554l1[d02.f36215h.size() - 2];
        for (int i10 = 2; i10 < d02.f36215h.size(); i10++) {
            c4554l1Arr[i10 - 2] = ((com.android.tools.r8.graph.C2) ((com.android.tools.r8.graph.R2) d02.f36215h.get(i10)).z0().f36759d).f36191f.l0();
        }
        com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) E02.W0();
        return new C10113wc0(d02.f36212e, d02.f36213f, l22, c4554l1Arr, c4798y.g(c4798y.v().c(AbstractC5308Hz.g(), m22)).d0(), m22);
    }
}
