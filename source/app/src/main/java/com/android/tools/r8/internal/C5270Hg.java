package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;

public final class C5270Hg implements InterfaceC6297Zc {

    public static final boolean f40833b = true;

    public final AbstractC9867v50 f40834a;

    public C5270Hg(AbstractC9867v50 abstractC9867v50) {
        if (!f40833b) {
            abstractC9867v50.getClass();
            if (abstractC9867v50 instanceof C10170wv0) {
                throw new AssertionError();
            }
        }
        this.f40834a = abstractC9867v50;
    }

    @Override
    public final InterfaceC6297Zc a(final com.android.tools.r8.graph.proto.c cVar) {
        AbstractC9867v50 o00;
        AbstractC9867v50 abstractC9867v50 = this.f40834a;
        abstractC9867v50.getClass();
        if (abstractC9867v50 instanceof C9872v7) {
            return this;
        }
        final QF qf2 = new QF(16);
        O00 d10 = this.f40834a.d();
        ZH zh2 = new ZH() {
            @Override
            public final void a(int i10, Object obj) {
                C5270Hg.a(com.android.tools.r8.graph.proto.c.this, qf2, i10, (AbstractC9700u50) obj);
            }
        };
        JF jf2 = new JF(((NF) d10.f42755b.b()).f42545b);
        while (jf2.hasNext()) {
            EF ef2 = (EF) jf2.next();
            zh2.a(ef2.a(), ef2.getValue());
        }
        if (qf2.isEmpty()) {
            o00 = C9872v7.f53015b;
        } else {
            o00 = new O00(qf2);
        }
        return new C5270Hg(o00);
    }

    public static void a(com.android.tools.r8.graph.proto.c cVar, FF ff2, int i10, AbstractC9700u50 abstractC9700u50) {
        com.android.tools.r8.graph.proto.b a10 = cVar.a(i10);
        if (a10.c()) {
            return;
        }
        if ((a10 instanceof com.android.tools.r8.graph.proto.k) && a10.b().e().P0()) {
            return;
        }
        ff2.a(cVar.b(i10), abstractC9700u50);
    }

    @Override
    public final AbstractC9533t50 a(int i10) {
        return this.f40834a.a(i10).c();
    }

    @Override
    public final boolean a(int i10, C4798y c4798y, com.android.tools.r8.graph.H2 h22) {
        com.android.tools.r8.graph.E0 g10;
        AbstractC9533t50 c10 = this.f40834a.a(i10).c();
        c10.getClass();
        if (c10 instanceof C9538t7) {
            return true;
        }
        if (c10 instanceof C9836uv0) {
            return false;
        }
        for (com.android.tools.r8.graph.M2 m22 : c10.b().f42120a) {
            if (!m22.I0() || (g10 = c4798y.g(m22)) == null || !((C11245i) c4798y.f()).b(h22, g10)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H2 h22, int i10, Q30 q30, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.E0 g10;
        AbstractC9533t50 c10 = this.f40834a.a(i10).c();
        c10.getClass();
        if (c10 instanceof C9538t7) {
            return true;
        }
        if (c10 instanceof C9836uv0) {
            return false;
        }
        M00 b10 = c10.b();
        if (b10.f42123d || b10.f42125f) {
            return false;
        }
        for (com.android.tools.r8.graph.M2 m22 : b10.f42120a) {
            if (!m22.I0() || (g10 = c4798y.g(m22)) == null || !((C11245i) c4798y.f()).b(h22, g10)) {
                return false;
            }
        }
        for (C4554l1 c4554l1 : b10.f42121b) {
            C4460g1 b11 = c4554l1.b(c4798y.g(c4554l1.s0()));
            if (b11 == null) {
                return false;
            }
            q30.getClass();
            F1 a10 = q30.a(b11.getReference());
            if (!a10.e0() || !a10.L().b(c4798y, h52)) {
                return false;
            }
        }
        return true;
    }
}
