package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import java.util.Iterator;
import java.util.function.Function;

public final class C7183f00 extends AbstractC7173ex0 {

    public static final boolean f47821c = true;

    public final C4798y f47822b;

    public C7183f00(C4798y c4798y) {
        this.f47822b = c4798y;
    }

    @Override
    public final boolean a(C8340lx0 c8340lx0) {
        return !a(c8340lx0.f50154b, c8340lx0.f50155c);
    }

    @Override
    public final String f() {
        return "NoIllegalAccessesPolicy";
    }

    public final boolean a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H2 h23) {
        C4516j1 c10;
        h22.getClass();
        if (h22.a(h23.getReference())) {
            boolean z10 = f47821c;
            if (!z10) {
                com.android.tools.r8.graph.Q accessFlags = h22.getAccessFlags();
                if (accessFlags.h() || accessFlags.k()) {
                    throw new AssertionError();
                }
            }
            if (!z10) {
                com.android.tools.r8.graph.Q accessFlags2 = h23.getAccessFlags();
                if (accessFlags2.h() || accessFlags2.k()) {
                    throw new AssertionError();
                }
            }
            return h22.getAccessFlags().l() && h23.getAccessFlags().f();
        }
        if (!h23.w1()) {
            return true;
        }
        Iterator<com.android.tools.r8.graph.M2> it = h22.R0().iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.E0 g10 = this.f47822b.g(it.next());
            if (g10 != null && !g10.w1()) {
                return true;
            }
        }
        for (C4460g1 c4460g1 : h22.I0()) {
            if (!c4460g1.H0() && !c4460g1.G0()) {
                return true;
            }
        }
        for (C4516j1 c4516j1 : h22.z1()) {
            if (!c4516j1.H0() && !c4516j1.G0()) {
                return true;
            }
            if (c4516j1.H0() && (c10 = h23.c(c4516j1.getReference())) != null && !c10.H0()) {
                return true;
            }
        }
        return h22.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C7183f00.this.a((com.android.tools.r8.graph.H5) obj);
            }
        }, new u.P0()).c();
    }

    public final AbstractC6333Zs0 a(com.android.tools.r8.graph.H5 h52) {
        QB qb2 = new QB(this.f47822b, h52);
        h52.a(qb2);
        if (qb2.f37241e.booleanValue()) {
            return C6162Ws0.f45559c;
        }
        return C6276Ys0.f46097c;
    }
}
