package com.android.tools.r8.internal;

import com.android.tools.r8.utils.UnverifiableCfCodeDiagnostic;

public final class C5078Ea implements L9 {

    public final C5310Ia f39944a;

    public C5078Ea(C5310Ia c5310Ia) {
        this.f39944a = c5310Ia;
    }

    @Override
    public final void a(com.android.tools.r8.graph.H h10) {
        C5310Ia c5310Ia = this.f39944a;
        if (c5310Ia.f41126d.r().f50749b) {
            C7541h80 c7541h80 = c5310Ia.f41128f;
            com.android.tools.r8.graph.H5 h52 = c5310Ia.f41125c;
            UnverifiableCfCodeDiagnostic unverifiableCfCodeDiagnostic = new UnverifiableCfCodeDiagnostic(h52.w(), -1, h10.f36360d, c5310Ia.f41125c.f36317b.f36244d);
            c7541h80.getClass();
            c7541h80.f43368b.put(new C7333fv(C7374g80.f48192a, h52), unverifiableCfCodeDiagnostic);
        }
        c5310Ia.f41127e.clear();
    }

    @Override
    public final void a(W9 w92, H9 h92) {
        this.f39944a.a(w92, h92);
    }
}
