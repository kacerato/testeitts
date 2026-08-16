package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4591n0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;

public final class C6738cK extends AbstractC4591n0 {

    public static final boolean f47022f = true;

    public C6738cK(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        super(c4798y, h52, Boolean.FALSE);
        if (!f47022f && !h52.getHolder().isInterface()) {
            throw new AssertionError();
        }
    }

    @Override
    public final void c(com.android.tools.r8.graph.A2 a22) {
        if (!f47022f) {
            throw new AssertionError();
        }
    }

    @Override
    public final void f(com.android.tools.r8.graph.A2 a22) {
        C4516j1 b10;
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        if (a22.s0().a(h52.p()) && (b10 = h52.getHolder().b(a22)) != null && b10.J0()) {
            this.f37241e = Boolean.TRUE;
            a();
        }
    }
}
