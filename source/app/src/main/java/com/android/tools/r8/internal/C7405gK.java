package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11295l;
import com.android.tools.r8.shaking.C11447u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class C7405gK extends VJ {

    public static final boolean f48231o = true;

    public final boolean f48232n;

    public C7405gK(com.android.tools.r8.graph.A2 a22, C10340xw0 c10340xw0, List list) {
        super(a22, c10340xw0, list);
        this.f48232n = false;
        if (!f48231o && a22.f36127i.f36441f.size() != list.size()) {
            throw new AssertionError();
        }
    }

    @Override
    public final boolean A2() {
        return this.f48232n;
    }

    @Override
    public final boolean R1() {
        return true;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        AbstractC5635Np c7652hq;
        int y22 = y2();
        if (y22 > c5458Kn.f41776o) {
            c5458Kn.f41776o = y22;
        }
        if (b(c5458Kn)) {
            if (!f48231o) {
                c(c5458Kn);
            }
            c7652hq = new C7818iq(a(c5458Kn, b(0)), y22, B2());
        } else {
            int[] iArr = new int[5];
            c7652hq = new C7652hq(a(c5458Kn, iArr), B2(), iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
        }
        a(c7652hq, c5458Kn);
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.R1() && super.b(abstractC10561zE);
    }

    @Override
    public final C7405gK i0() {
        return this;
    }

    @Override
    public final int r2() {
        return 38;
    }

    @Override
    public final EnumC8071kK w2() {
        return EnumC8071kK.f49582f;
    }

    @Override
    public final String x2() {
        return "Static";
    }

    @Override
    public final boolean b(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        if (!c4798y.m() || c4798y.E().f50690i1) {
            return true;
        }
        C6588bS c6588bS = c4798y.f38433z;
        c6588bS.getClass();
        if (c6588bS.a(B2(), this.f54321f)) {
            return false;
        }
        if (!c4798y.f().i()) {
            return true;
        }
        C4798y<C11245i> M10 = c4798y.M();
        Z4.c<?> o10 = M10.f().b(B2(), this.f48232n).o();
        if (o10 == null) {
            return true;
        }
        com.android.tools.r8.graph.H0 a10 = com.android.tools.r8.graph.H0.a(o10.f37021c, o10.f37022d);
        if (!a10.d().w0() || o10.a(h52, M10).b()) {
            return true;
        }
        C11295l c11295l = c4798y.f38412e;
        c11295l.getClass();
        if (c11295l.a(a10.getReference()).f40089c) {
            return false;
        }
        TW A10 = a10.A();
        c4798y.E();
        if (A10.a(this)) {
            return true;
        }
        if (c10394yE.a()) {
            return false;
        }
        return a10.getHolder().a(c4798y, h52);
    }

    public C7405gK(com.android.tools.r8.graph.A2 a22, C10340xw0 c10340xw0, List list, boolean z10) {
        super(a22, c10340xw0, list);
        this.f48232n = z10;
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.A2 B22 = B2();
        x10.getClass();
        if (B22.f38297f.E0()) {
            return com.android.tools.r8.ir.optimize.O.f54787d;
        }
        Z4.c<?> o10 = ((C11245i) x10.f54825a.f()).f(B22).o();
        if (o10 == null) {
            return com.android.tools.r8.ir.optimize.O.f54786c;
        }
        com.android.tools.r8.graph.H2 holder = h52.getHolder();
        C4798y c4798y = x10.f54825a;
        com.android.tools.r8.graph.H0 b10 = o10.b(holder, c4798y, (C4514j) c4798y.f());
        if (b10 == null) {
            return com.android.tools.r8.ir.optimize.O.f54786c;
        }
        return x10.a(o10.f37020b, h52, b10);
    }

    @Override
    public final com.android.tools.r8.ir.optimize.P a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.ir.optimize.H h10, C5721Pc c5721Pc, AbstractC5015Cx0 abstractC5015Cx0) {
        h10.getClass();
        com.android.tools.r8.ir.optimize.P p10 = new com.android.tools.r8.ir.optimize.P();
        p10.f54792b = this;
        p10.f54796f = h52;
        if (h10.a(this, h10.f54749e, h52, c5721Pc)) {
            return p10;
        }
        if (h10.f54745a.i() && h10.f54747c.f50776j) {
            p10.f54794d = true;
            return p10;
        }
        abstractC5015Cx0.o();
        return null;
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new C7437ga(184, B2(), this.f48232n), this);
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        c10391yD.a(this);
        return null;
    }

    @Override
    public final void a(C11447u c11447u) {
        c11447u.a((com.android.tools.r8.graph.J2) B2());
    }

    @Override
    public final void a(PS ps) {
        com.android.tools.r8.graph.A2 B22 = B2();
        ArrayList arrayList = this.f54321f;
        boolean z10 = this.f48232n;
        ps.getClass();
        ps.a(z10 ? 204 : 184, Collections.singletonList(B22), arrayList);
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52, C4798y c4798y, int i10, int i11) {
        com.android.tools.r8.graph.H0 e10;
        return (i11 == 2 || (e10 = e(c4798y, h52)) == null || !AbstractC5663Oc.a(this, m22, e10.d(), c4798y, i10)) ? false : true;
    }
}
