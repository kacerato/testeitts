package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4591n0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;

public final class C6596bW extends AbstractC4591n0 {

    public static final boolean f46773j = true;

    public final C4798y f46774f;

    public final AbstractC5308Hz f46775g;

    public final AbstractC5308Hz f46776h;

    public final com.android.tools.r8.graph.H2 f46777i;

    public C6596bW(C4798y c4798y, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H2 h22) {
        super(c4798y, h52, Boolean.FALSE);
        if (!f46773j && !h52.getHolder().a1().a(h22.getType())) {
            throw new AssertionError();
        }
        this.f46774f = c4798y;
        this.f46775g = c4798y.v();
        this.f46776h = h52.d().Q0().a(c4798y);
        this.f46777i = h22;
    }

    @Override
    public final void f(com.android.tools.r8.graph.A2 a22) {
        AbstractC5308Hz abstractC5308Hz = this.f46775g;
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        AbstractC5308Hz abstractC5308Hz2 = this.f46776h;
        abstractC5308Hz.getClass();
        com.android.tools.r8.graph.H0 c10 = ((C11245i) this.f46774f.f()).e((com.android.tools.r8.graph.A2) abstractC5308Hz.a(a22, h52.getReference(), EnumC8071kK.f49583g, abstractC5308Hz2, AbstractC9530t40.f52519c).f41111a).c((com.android.tools.r8.graph.D5) this.f37177b, this.f46774f);
        if (c10 != null && c10.getHolder().isInterface() && ((C11245i) this.f46774f.f()).e(this.f46777i, a22).c(this.f46777i, this.f46774f) == null) {
            this.f37241e = Boolean.TRUE;
            a();
        }
    }
}
