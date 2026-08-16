package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11447u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class C8405mK extends WJ {

    public static final boolean f50258o = true;

    public C8405mK(com.android.tools.r8.graph.A2 a22, C10340xw0 c10340xw0, List list) {
        super(a22, c10340xw0, list);
    }

    @Override
    public final boolean A2() {
        return false;
    }

    @Override
    public final boolean T1() {
        return true;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        AbstractC5635Np c6269Yp;
        AbstractC5635Np abstractC5635Np;
        int y22 = y2();
        if (y22 > c5458Kn.f41776o) {
            c5458Kn.f41776o = y22;
        }
        if (b(c5458Kn)) {
            if (!f50258o) {
                c(c5458Kn);
            }
            int a10 = a(c5458Kn, b(0));
            if (!d(c5458Kn) && !e(c5458Kn)) {
                abstractC5635Np = new C8485mq(a10, y22, B2());
            } else {
                abstractC5635Np = new C6326Zp(a10, y22, B2());
            }
        } else {
            int[] iArr = new int[5];
            int a11 = a(c5458Kn, iArr);
            if (!d(c5458Kn) && !e(c5458Kn)) {
                c6269Yp = new C8318lq(a11, B2(), iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
            } else {
                c6269Yp = new C6269Yp(a11, B2(), iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
            }
            abstractC5635Np = c6269Yp;
        }
        a(abstractC5635Np, c5458Kn);
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.T1() && super.b(abstractC10561zE);
    }

    @Override
    public final C8405mK k0() {
        return this;
    }

    @Override
    public final int r2() {
        return 40;
    }

    @Override
    public final EnumC8071kK w2() {
        return EnumC8071kK.f49584h;
    }

    @Override
    public final String x2() {
        return "Virtual";
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.A2 B22 = B2();
        x10.getClass();
        if (B22.f38297f.E0()) {
            return com.android.tools.r8.ir.optimize.O.f54787d;
        }
        Z4.c<?> o10 = ((C11245i) x10.f54825a.f()).b(B22, false).o();
        if (o10 != null && o10.f37022d.r1()) {
            return x10.a(o10.f37020b, h52, com.android.tools.r8.graph.H0.a(o10.f37021c, o10.f37022d));
        }
        return com.android.tools.r8.ir.optimize.O.f54786c;
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new C7437ga(182, B2(), false), this);
    }

    @Override
    public final void a(C11447u c11447u) {
        c11447u.a((com.android.tools.r8.graph.J2) B2());
    }

    @Override
    public final void a(PS ps) {
        com.android.tools.r8.graph.A2 B22 = B2();
        ArrayList arrayList = this.f54321f;
        ps.getClass();
        ps.a(182, Collections.singletonList(B22), arrayList);
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        c10391yD.a(this);
        return null;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52, C4798y c4798y, int i10, int i11) {
        if ((i11 == 2 && C2().u().v()) || i10 == 1) {
            return false;
        }
        ((C11245i) c4798y.f()).i();
        com.android.tools.r8.graph.H0 e10 = e(c4798y.M(), h52);
        if (e10 != null) {
            return AbstractC5663Oc.a(this, m22, e10.d(), c4798y, i10);
        }
        com.android.tools.r8.graph.A2 B22 = B2();
        com.android.tools.r8.graph.Z4 a10 = ((C11245i) c4798y.f()).a(B22.f38297f, B22);
        if (a10.w()) {
            return c4798y.a(a10.s().B0(), m22).d();
        }
        return false;
    }
}
