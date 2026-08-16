package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.List;

public final class YJ extends VJ {

    public static final boolean f45970o = true;

    public final com.android.tools.r8.graph.I2 f45971n;

    public YJ(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.I2 i22, C10340xw0 c10340xw0, List list) {
        super(a22, c10340xw0, list);
        this.f45971n = i22;
    }

    @Override
    public final boolean A2() {
        return false;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        AbstractC5635Np c7318fq;
        int y22 = y2();
        if (y22 > c5458Kn.f41776o) {
            c5458Kn.f41776o = y22;
        }
        if (b(c5458Kn)) {
            if (!f45970o) {
                c(c5458Kn);
            }
            c7318fq = new C7485gq(a(c5458Kn, b(0)), y22, B2(), this.f45971n);
        } else {
            int[] iArr = new int[5];
            c7318fq = new C7318fq(a(c5458Kn, iArr), B2(), this.f45971n, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
        }
        a(c7318fq, c5458Kn);
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof YJ) && this.f45971n.equals(abstractC10561zE.h0().f45971n) && super.b(abstractC10561zE);
    }

    @Override
    public final AbstractC8374m80 c(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return null;
    }

    @Override
    public final YJ h0() {
        return this;
    }

    @Override
    public final int r2() {
        return 37;
    }

    @Override
    public final com.android.tools.r8.graph.M2 v2() {
        return this.f45971n.f36440e;
    }

    @Override
    public final EnumC8071kK w2() {
        return EnumC8071kK.f49587k;
    }

    @Override
    public final String x2() {
        return "Polymorphic";
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        com.android.tools.r8.graph.A2 B22 = B2();
        c7543h9.a(new C7437ga(182, c7543h9.f48456a.b().a(B22.f38297f, this.f45971n, B22.f38298g), false), this);
    }

    @Override
    public final void a(PS ps) {
        com.android.tools.r8.graph.A2 B22 = B2();
        com.android.tools.r8.graph.I2 i22 = this.f45971n;
        ArrayList arrayList = this.f54321f;
        ps.getClass();
        ps.a(222, AbstractC7552hC.a(B22, i22), arrayList);
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        B2();
        x10.getClass();
        return com.android.tools.r8.ir.optimize.O.f54786c;
    }

    @Override
    public final com.android.tools.r8.ir.optimize.P a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.ir.optimize.H h10, C5721Pc c5721Pc, AbstractC5015Cx0 abstractC5015Cx0) {
        throw new C5417Jv0();
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        c10391yD.a(this);
        return null;
    }
}
