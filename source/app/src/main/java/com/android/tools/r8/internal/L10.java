package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4591n0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;

public final class L10 extends AbstractC4591n0 {

    public static final boolean f41843g = true;

    public final M10 f41844f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public L10(M10 m10, C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        super(c4798y, h52, Boolean.FALSE);
        this.f41844f = m10;
    }

    @Override
    public final void a(C4554l1 c4554l1) {
    }

    @Override
    public final void b(com.android.tools.r8.graph.A2 a22) {
        a(a22, EnumC8071kK.f49581e);
    }

    @Override
    public final void c(C4554l1 c4554l1) {
    }

    @Override
    public final void d(com.android.tools.r8.graph.A2 a22) {
        a(a22, EnumC8071kK.f49582f);
    }

    @Override
    public final void e(C4554l1 c4554l1) {
    }

    @Override
    public final void f(com.android.tools.r8.graph.A2 a22) {
        a(a22, EnumC8071kK.f49583g);
    }

    @Override
    public final void g(C4554l1 c4554l1) {
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22) {
        a(a22, EnumC8071kK.f49580d);
    }

    @Override
    public final void g(com.android.tools.r8.graph.A2 a22) {
        a(a22, EnumC8071kK.f49584h);
    }

    public final void a(com.android.tools.r8.graph.A2 a22, EnumC8071kK enumC8071kK) {
        com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) this.f41844f.f42131b.a(a22, ((com.android.tools.r8.graph.H5) this.f37177b).getReference(), enumC8071kK, this.f41844f.f42131b.f43777d, AbstractC9530t40.f52519c).f41111a;
        if (!f41843g && a23 == null) {
            throw new AssertionError();
        }
        if (a23.a(this.f41844f.f42131b.d(a23))) {
            return;
        }
        this.f37241e = Boolean.TRUE;
        a();
    }
}
