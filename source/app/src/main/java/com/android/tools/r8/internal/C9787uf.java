package com.android.tools.r8.internal;

public final class C9787uf extends AbstractC9286rf {

    public final InterfaceC5152Ff0 f52908b;

    public final InterfaceC5152Ff0 f52909c;

    public C9787uf(InterfaceC5152Ff0 interfaceC5152Ff0, InterfaceC5152Ff0 interfaceC5152Ff02) {
        this.f52908b = interfaceC5152Ff0;
        this.f52909c = interfaceC5152Ff02;
    }

    @Override
    public final int a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        if (m22.a(m23)) {
            return 0;
        }
        com.android.tools.r8.graph.M2 m24 = (com.android.tools.r8.graph.M2) this.f52908b.a(m22);
        com.android.tools.r8.graph.M2 m25 = (com.android.tools.r8.graph.M2) this.f52908b.a(m23);
        com.android.tools.r8.graph.L2 v02 = m24.v0();
        com.android.tools.r8.graph.L2 v03 = m25.v0();
        v02.getClass();
        return a(v02, v03);
    }

    @Override
    public final int a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        if (a22.a(a23)) {
            return 0;
        }
        com.android.tools.r8.graph.A2 a24 = (com.android.tools.r8.graph.A2) this.f52909c.a(a22);
        com.android.tools.r8.graph.A2 a25 = (com.android.tools.r8.graph.A2) this.f52909c.a(a23);
        InterfaceC5638Nq0 m10 = a24.m();
        C9120qf c9120qf = new C9120qf(a24, a25, this);
        m10.a(c9120qf);
        return c9120qf.f51841d;
    }
}
