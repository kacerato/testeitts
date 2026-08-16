package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.D3;

public final class C4902Az implements InterfaceC5005Cs0 {

    public final C4724u1 f38751a;

    public final com.android.tools.r8.shaking.N f38752b;

    public final com.android.tools.r8.androidapi.a f38753c;

    public C4902Az(C4798y c4798y, com.android.tools.r8.shaking.N n10) {
        this.f38751a = c4798y.b();
        this.f38752b = n10;
        this.f38753c = c4798y.f38404S;
    }

    @Override
    public final void a(D3.a aVar, com.android.tools.r8.graph.H5 h52) {
    }

    @Override
    public final void b(D3.a aVar, com.android.tools.r8.graph.H5 h52) {
    }

    @Override
    public final void a(C4554l1 c4554l1, D3.a aVar, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.M2 type = c4554l1.getType();
        if (type.E0()) {
            com.android.tools.r8.graph.M2 a10 = type.a(this.f38751a);
            if (a10.I0()) {
                com.android.tools.r8.androidapi.a aVar2 = this.f38753c;
                int i10 = com.android.tools.r8.androidapi.f.f35602a;
                com.android.tools.r8.androidapi.f a11 = aVar2.a(a10, com.android.tools.r8.androidapi.h.f35609b);
                if (!a11.q() || a11.F().a().d(C2.L)) {
                    this.f38752b.f56780W.a(new C5077Dz0(), h52);
                }
            }
        }
    }

    @Override
    public final void a(C4554l1 c4554l1, D3.a aVar, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.shaking.L0 l02) {
        com.android.tools.r8.graph.M2 type = c4554l1.getType();
        if (type.E0()) {
            com.android.tools.r8.graph.M2 a10 = type.a(this.f38751a);
            if (a10.I0()) {
                com.android.tools.r8.androidapi.a aVar2 = this.f38753c;
                int i10 = com.android.tools.r8.androidapi.f.f35602a;
                com.android.tools.r8.androidapi.f a11 = aVar2.a(a10, com.android.tools.r8.androidapi.h.f35609b);
                if (!a11.q() || a11.F().a().d(C2.L)) {
                    this.f38752b.f56780W.a(new C5077Dz0(), h52);
                }
            }
        }
    }
}
