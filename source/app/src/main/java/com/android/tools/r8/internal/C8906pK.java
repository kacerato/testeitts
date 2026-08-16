package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.D3;

public final class C8906pK implements InterfaceC5005Cs0, InterfaceC5121Es0, InterfaceC10662zs0, InterfaceC4889As0, InterfaceC4947Bs0, InterfaceC5063Ds0, InterfaceC5237Gs0 {

    public final C4798y f51497a;

    public final C6300Zd f51498b;

    public C8906pK(C4798y c4798y) {
        this.f51497a = c4798y;
        this.f51498b = ((C4514j) c4798y.f()).f37255b;
    }

    @Override
    public final void a(C4554l1 c4554l1, D3.a aVar, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.F5 r10 = aVar.r();
        if (r10 != null) {
            a(r10, h52);
            a((com.android.tools.r8.graph.D5) aVar.f36223b.d0(), h52);
        }
    }

    @Override
    public final void b(D3.a aVar, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.F5 r10 = aVar.r();
        if (r10 != null) {
            a(r10, h52);
            a((com.android.tools.r8.graph.D5) aVar.f36223b.d0(), h52);
        }
    }

    @Override
    public final void c(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.Z4 z42, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.H5 r10 = z42.r();
        if (r10 != null) {
            a(r10, h52);
            a((com.android.tools.r8.graph.D5) z42.a().d0(), h52);
        }
    }

    @Override
    public final void c(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.H5 h52) {
        b(e02, h52);
    }

    @Override
    public final void a(C4554l1 c4554l1, D3.a aVar, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.shaking.L0 l02) {
        com.android.tools.r8.graph.F5 r10 = aVar.r();
        if (r10 != null) {
            a(r10, h52);
            a((com.android.tools.r8.graph.D5) aVar.f36223b.d0(), h52);
        }
    }

    @Override
    public final void b(com.android.tools.r8.graph.Z4 z42, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.H5 r10 = z42.r();
        if (r10 != null) {
            a(r10, h52);
            a((com.android.tools.r8.graph.D5) z42.a().d0(), h52);
        }
    }

    @Override
    public final void b(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.Z4 z42, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.H5 r10 = z42.r();
        if (r10 != null) {
            a(r10, h52);
            a((com.android.tools.r8.graph.D5) z42.a().d0(), h52);
        }
    }

    @Override
    public final void a(D3.a aVar, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.F5 r10 = aVar.r();
        if (r10 != null) {
            a(r10, h52);
            a((com.android.tools.r8.graph.D5) aVar.f36223b.d0(), h52);
        }
    }

    public final void b(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.H5 h52) {
        if (e02 == null || !e02.e0()) {
            return;
        }
        a((com.android.tools.r8.graph.D5) e02.d0(), h52);
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.Z4 z42, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.H5 r10 = z42.r();
        if (r10 != null) {
            a(r10, h52);
            a((com.android.tools.r8.graph.D5) z42.a().d0(), h52);
        }
    }

    @Override
    public final void b(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.H5 h52) {
        b(e02, h52);
    }

    @Override
    public final void a(com.android.tools.r8.graph.Z4 z42, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.H5 r10 = z42.r();
        if (r10 != null) {
            a(r10, h52);
            a((com.android.tools.r8.graph.D5) z42.a().d0(), h52);
        }
    }

    public final void a(com.android.tools.r8.graph.D5 d52, com.android.tools.r8.graph.H5 h52) {
        if (d52.getAccessFlags().l()) {
            return;
        }
        C6300Zd c6300Zd = this.f51498b;
        C4798y c4798y = this.f51497a;
        c6300Zd.getClass();
        com.android.tools.r8.synthesis.J g10 = c4798y.f38408a.g();
        if (c6300Zd.a(d52.getReference(), g10) == c6300Zd.a(h52.getReference(), g10)) {
            return;
        }
        if (d52.getAccessFlags().k() && ((C4514j) this.f51497a.f()).b(h52.getHolder(), d52.a())) {
            return;
        }
        AbstractC7160et abstractC7160et = this.f51497a.f38413f;
        abstractC7160et.getClass();
        if (abstractC7160et.a(d52.S()) || abstractC7160et.a(h52.p())) {
            return;
        }
        this.f51497a.E().f50691j.error(new RB(d52, h52));
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.H5 h52) {
        b(e02, h52);
    }

    @Override
    public final void a(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.H5 h52) {
        b(e02, h52);
    }
}
