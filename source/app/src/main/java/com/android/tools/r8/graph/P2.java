package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.C9406sK;
import com.android.tools.r8.internal.InterfaceC5422Jy;

public abstract class P2 {

    public static final boolean f36695a = true;

    public static M2 a(Iterable iterable, final C4798y c4798y) {
        return a(c4798y, AbstractC8999pu0.a(new C9406sK(iterable, new InterfaceC5422Jy() {
            @Override
            public final Object apply(Object obj) {
                AbstractC8999pu0 b10;
                b10 = ((M2) obj).b((C4798y<?>) C4798y.this);
                return b10;
            }
        }), (C4798y<?>) c4798y));
    }

    public static M2 a(C4798y c4798y, AbstractC8999pu0 abstractC8999pu0) {
        C4724u1 b10 = c4798y.b();
        if (abstractC8999pu0.x()) {
            return abstractC8999pu0.c().a(b10);
        }
        if (abstractC8999pu0.r()) {
            com.android.tools.r8.internal.W3 a10 = abstractC8999pu0.a();
            M2 a11 = a(c4798y, a10.E());
            return b10.c(a11.f36592f.a(a10.H(), b10));
        }
        if (f36695a || abstractC8999pu0.s()) {
            return abstractC8999pu0.b().a(b10);
        }
        throw new AssertionError();
    }

    public static M2 a(C4798y c4798y, M2 m22) {
        M2 a10 = m22.a(c4798y.b());
        if (!a10.P0()) {
            E0 g10 = c4798y.g(a10);
            if (g10 == null) {
                if (!f36695a) {
                    throw new AssertionError((Object) "We should not have found an upper bound if the hierarchy is missing");
                }
            } else if (g10.f0() && !com.android.tools.r8.internal.G2.a(g10.G(), c4798y) && g10.i1()) {
                return a(c4798y, g10.a1());
            }
        }
        return m22;
    }

    public static boolean a(C4798y c4798y, M2 m22, H5 h52) {
        if (m22.P0() || m22.a(h52.p()) || ((h52.getHolder().i1() && m22.a(h52.getHolder().a1())) || h52.getHolder().R0().a(m22))) {
            return true;
        }
        c4798y.getClass();
        E0 holder = h52.getHolder();
        if (m22 != holder.f36245e) {
            holder = c4798y.a(m22);
        }
        if (holder == null) {
            return false;
        }
        if (holder.f0()) {
            return com.android.tools.r8.internal.G2.a(holder.G(), c4798y);
        }
        if (!c4798y.f().h()) {
            return false;
        }
        C4798y L10 = c4798y.L();
        return AbstractC4420e.a(holder, h52, L10, (C4514j) L10.f()).d();
    }
}
