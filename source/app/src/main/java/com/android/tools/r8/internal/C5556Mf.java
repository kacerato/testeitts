package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;

public final class C5556Mf {

    public final com.android.tools.r8.graph.L2 f42338a;

    public final com.android.tools.r8.graph.M2 f42339b;

    public C5556Mf(C4724u1 c4724u1) {
        this.f42338a = c4724u1.b("skipToGroupEnd");
        this.f42339b = c4724u1.d("Landroidx/compose/runtime/Composable;");
        com.android.tools.r8.graph.M2 d10 = c4724u1.d("Landroidx/compose/runtime/RecomposeScopeImplKt;");
        com.android.tools.r8.graph.M2 m22 = c4724u1.f37884J1;
        c4724u1.a(d10, c4724u1.a(m22, m22), "updateChangedFlags");
    }

    public final boolean a(com.android.tools.r8.graph.D5 d52) {
        return d52.N() && d52.H().f36318c.k0().c(this.f42339b);
    }
}
