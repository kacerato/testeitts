package com.android.tools.r8.naming;

import com.android.tools.r8.internal.C7333fv;
import com.android.tools.r8.internal.C9933vX;
import java.util.Set;
import java.util.function.BiPredicate;
import java.util.function.Function;

public final class C10913b0 extends AbstractC10918c0 {

    public static final boolean f55839f = true;

    public final C10928e0 f55840c;

    public final C10913b0 f55841d;

    public final C10968m0 f55842e;

    public C10913b0(C10913b0 c10913b0, Function function, C10968m0 c10968m0, C10928e0 c10928e0) {
        super(function);
        this.f55841d = c10913b0;
        this.f55842e = c10968m0;
        this.f55840c = c10928e0;
    }

    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.H0 h02) {
        BiPredicate biPredicate = new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C10913b0.this.b((com.android.tools.r8.graph.L2) obj, (com.android.tools.r8.graph.A2) obj2);
            }
        };
        com.android.tools.r8.graph.L2 d10 = d(h02.getReference());
        if (d10 != null) {
            return d10;
        }
        Set d11 = this.f55840c.d(h02.getReference());
        if (d11 != null && d11.size() == 1) {
            com.android.tools.r8.graph.L2 l22 = (com.android.tools.r8.graph.L2) d11.iterator().next();
            if (b(l22, h02.getReference())) {
                return l22;
            }
        }
        com.android.tools.r8.graph.L2 a10 = this.f55842e.a(h02, (C10908a0) c(h02.getReference()), biPredicate);
        if (f55839f || a10 != null) {
            return a10;
        }
        throw new AssertionError();
    }

    public final boolean b(com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.A2 a22) {
        Set a10 = a(l22, a22);
        if (a10 != null && a10.contains(new C7333fv(C9933vX.f53136a, a22))) {
            return true;
        }
        if (!this.f55840c.a(l22, a22) && a10 == null) {
            return true;
        }
        Set d10 = this.f55840c.d(a22);
        return d10 != null && d10.contains(l22);
    }

    public final com.android.tools.r8.graph.L2 d(com.android.tools.r8.graph.A2 a22) {
        C10913b0 c10913b0;
        C10908a0 c10908a0 = (C10908a0) b(a22);
        com.android.tools.r8.graph.L2 l22 = c10908a0 != null ? (com.android.tools.r8.graph.L2) c10908a0.f55815c.get(new C7333fv(C9933vX.f53136a, a22)) : null;
        return (l22 != null || (c10913b0 = this.f55841d) == null) ? l22 : c10913b0.d(a22);
    }

    public final Set a(com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.A2 a22) {
        C10913b0 c10913b0;
        C10908a0 c10908a0 = (C10908a0) b(a22);
        Set set = c10908a0 != null ? (Set) c10908a0.f55816d.get(l22) : null;
        return (set != null || (c10913b0 = this.f55841d) == null) ? set : c10913b0.a(l22, a22);
    }

    @Override
    public final Object a(com.android.tools.r8.graph.A2 a22) {
        C10913b0 c10913b0 = this.f55841d;
        return new C10908a0(c10913b0 != null ? (C10908a0) c10913b0.c(a22) : null);
    }
}
