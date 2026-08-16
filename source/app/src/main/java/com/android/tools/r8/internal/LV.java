package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4572m0;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.shaking.C11245i;
import java.util.Map;
import java.util.function.Supplier;

public final class LV extends AbstractC4572m0 {

    public final C4798y f41966e;

    public final Map f41967f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LV(OV ov, C4798y c4798y, com.android.tools.r8.graph.H5 h52, Map map) {
        super(c4798y, h52);
        this.f41967f = map;
        this.f41966e = ov.f43915b;
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22) {
    }

    @Override
    public final void b(com.android.tools.r8.graph.A2 a22) {
        a(EnumC8071kK.f49581e, a22, ((C11245i) this.f41966e.f()).b(a22.s0(), a22).o());
    }

    @Override
    public final void d(com.android.tools.r8.graph.A2 a22) {
        a(EnumC8071kK.f49582f, a22, ((C11245i) this.f41966e.f()).e(a22).o());
    }

    @Override
    public final void f(com.android.tools.r8.graph.A2 a22) {
        a(EnumC8071kK.f49583g, a22, ((C11245i) this.f41966e.f()).e(a22).o());
    }

    @Override
    public final void g(com.android.tools.r8.graph.A2 a22) {
        EnumC8071kK enumC8071kK = EnumC8071kK.f49584h;
        C11245i c11245i = (C11245i) this.f41966e.f();
        boolean z10 = C4514j.f37304i;
        if (z10) {
            c11245i.getClass();
        } else {
            c11245i.c();
        }
        com.android.tools.r8.graph.M2 s02 = a22.s0();
        if (!z10) {
            c11245i.c();
        }
        a(enumC8071kK, a22, c11245i.a(s02, a22.y0(), a22.t0()).o());
    }

    public final void a(EnumC8071kK enumC8071kK, com.android.tools.r8.graph.A2 a22, Z4.c cVar) {
        if (cVar == null || cVar.q().getReference().a(a22)) {
            return;
        }
        ((MV) this.f41967f.computeIfAbsent(enumC8071kK, TU.a(new Supplier() {
            @Override
            public final Object get() {
                return MV.a();
            }
        }))).a(a22, cVar, (com.android.tools.r8.graph.H5) this.f37177b);
    }
}
