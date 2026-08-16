package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C5045Dj0 extends QB {
    public C5045Dj0(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        super(c4798y, h52);
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.F0 f02) {
        com.android.tools.r8.graph.M2 a10 = f02.getReference().getType().a(this.f37176a.b());
        if (!a10.I0()) {
            return false;
        }
        com.android.tools.r8.graph.E0 g10 = this.f37176a.g(a10);
        if (g10 != null && g10.w1()) {
            return false;
        }
        d();
        return true;
    }
}
