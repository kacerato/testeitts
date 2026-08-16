package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;

public final class C5242Gv extends AbstractC5300Hv {

    public static final boolean f40620c = true;

    public final com.android.tools.r8.graph.M2 f40621b;

    public C5242Gv(com.android.tools.r8.graph.M2 m22) {
        if (!f40620c && !m22.Q0()) {
            throw new AssertionError();
        }
        this.f40621b = m22;
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4724u1 c4724u1) {
        if (f40620c || this.f40621b != null) {
            return this.f40621b;
        }
        throw new AssertionError();
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y, com.android.tools.r8.graph.M2 m22) {
        return AbstractC8999pu0.a(m22, C8854p10.h(), (C4798y<?>) c4798y);
    }

    @Override
    public final AbstractC4935Bm0 a(C4798y c4798y) {
        G1 g12 = c4798y.f38427t;
        com.android.tools.r8.graph.M2 m22 = this.f40621b;
        g12.getClass();
        return G1.b(m22);
    }
}
