package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11447u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C7572hK extends WJ {

    public static final boolean f48531p = true;

    public final boolean f48532o;

    public C7572hK(com.android.tools.r8.graph.A2 a22, C10340xw0 c10340xw0, List list, boolean z10) {
        super(a22, c10340xw0, list);
        this.f48532o = z10;
    }

    @Override
    public final boolean A2() {
        return this.f48532o;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        AbstractC5635Np c7984jq;
        int y22 = y2();
        if (y22 > c5458Kn.f41776o) {
            c5458Kn.f41776o = y22;
        }
        if (b(c5458Kn)) {
            if (!f48531p) {
                c(c5458Kn);
            }
            c7984jq = new C8151kq(a(c5458Kn, b(0)), y22, B2());
        } else {
            int[] iArr = new int[5];
            c7984jq = new C7984jq(a(c5458Kn, iArr), B2(), iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
        }
        a(c7984jq, c5458Kn);
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C7572hK) && super.b(abstractC10561zE);
    }

    @Override
    public final C7572hK j0() {
        return this;
    }

    @Override
    public final int r2() {
        return 39;
    }

    @Override
    public final EnumC8071kK w2() {
        return EnumC8071kK.f49583g;
    }

    @Override
    public final String x2() {
        return "Super";
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new C7437ga(183, B2(), this.f48532o), this);
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        B2();
        x10.getClass();
        return new com.android.tools.r8.ir.optimize.O(com.android.tools.r8.ir.optimize.N.SAMECLASS, h52.p());
    }

    @Override
    public final void a(C11447u c11447u) {
        c11447u.a((com.android.tools.r8.graph.J2) B2());
    }

    @Override
    public final void a(PS ps) {
        com.android.tools.r8.graph.A2 B22 = B2();
        ArrayList arrayList = this.f54321f;
        boolean z10 = this.f48532o;
        ps.getClass();
        ps.a(z10 ? 208 : 207, Collections.singletonList(B22), arrayList);
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        c10391yD.a(this);
        return null;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52, C4798y c4798y, int i10, int i11) {
        com.android.tools.r8.graph.M2 m23;
        com.android.tools.r8.graph.Z4 a10;
        if ((i11 == 2 && C2().u().v()) || i10 == 1) {
            return false;
        }
        ((C11245i) c4798y.f()).i();
        com.android.tools.r8.graph.H0 e10 = e(c4798y.M(), h52);
        if (e10 != null) {
            return AbstractC5663Oc.a(this, m22, e10.d(), c4798y, i10);
        }
        com.android.tools.r8.graph.A2 B22 = B2();
        com.android.tools.r8.graph.E0 g10 = c4798y.g(B22.f38297f);
        if (g10 == null || (m23 = g10.f36247g) == null) {
            return false;
        }
        C11245i c11245i = (C11245i) c4798y.f();
        boolean z10 = this.f48532o;
        if (!C4514j.f37304i) {
            c11245i.c();
        }
        if (z10) {
            a10 = c11245i.c(m23, B22);
        } else {
            a10 = c11245i.a(m23, B22);
        }
        if (a10.w()) {
            return c4798y.a(a10.s().B0(), m22).d();
        }
        return false;
    }
}
