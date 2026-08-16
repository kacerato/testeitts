package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4572m0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;

public final class C7739iK extends AbstractC4572m0 {

    public static final boolean f48914k = true;

    public final C4798y f48915e;

    public final AbstractC5308Hz f48916f;

    public final AbstractC5308Hz f48917g;

    public final C5058Dq f48918h;

    public final C5058Dq f48919i;

    public final com.android.tools.r8.graph.H2 f48920j;

    public C7739iK(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C5058Dq c5058Dq, C5058Dq c5058Dq2, com.android.tools.r8.graph.H2 h22) {
        super(c4798y, h52);
        this.f48915e = c4798y;
        this.f48916f = c4798y.v();
        this.f48917g = h52.d().Q0().a(c4798y);
        this.f48918h = c5058Dq;
        this.f48919i = c5058Dq2;
        this.f48920j = h22;
    }

    @Override
    public final void c(com.android.tools.r8.graph.A2 a22) {
        if (!f48914k) {
            throw new AssertionError();
        }
    }

    @Override
    public final void f(com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.H0 c10;
        AbstractC5308Hz abstractC5308Hz = this.f48916f;
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        AbstractC5308Hz abstractC5308Hz2 = this.f48917g;
        abstractC5308Hz.getClass();
        com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) abstractC5308Hz.a(a22, h52.getReference(), EnumC8071kK.f49583g, abstractC5308Hz2, AbstractC9530t40.f52519c).f41111a;
        C5058Dq c5058Dq = this.f48918h;
        c5058Dq.getClass();
        a23.getClass();
        if (c5058Dq.f39661b.contains(new com.android.tools.r8.graph.D2(a23))) {
            C5058Dq c5058Dq2 = this.f48919i;
            c5058Dq2.getClass();
            if (c5058Dq2.f39661b.contains(new com.android.tools.r8.graph.D2(a23)) || (c10 = ((C11245i) this.f48915e.f()).e(a23).c((com.android.tools.r8.graph.D5) this.f37177b, this.f48915e)) == null || c10.getHolder() != this.f48920j) {
                return;
            }
            C5058Dq c5058Dq3 = this.f48919i;
            c5058Dq3.getClass();
            c5058Dq3.a(c10.getReference());
        }
    }
}
