package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4516j1;

public final class C11381q0 extends AbstractC11279k0 {

    public final com.android.tools.r8.graph.H5 f57706a;

    public final X1 f57707b;

    public C11381q0(X1 x12, com.android.tools.r8.graph.H5 h52) {
        this.f57706a = h52;
        this.f57707b = x12;
    }

    @Override
    public final void a(N n10) {
        com.android.tools.r8.graph.H5 h52 = this.f57706a;
        X1 x12 = this.f57707b;
        n10.getClass();
        C4516j1 d10 = h52.d();
        com.android.tools.r8.graph.H2 holder = h52.getHolder();
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        n10.a(x12, h52);
        if (!d10.r1()) {
            n10.b(x12, h52);
            return;
        }
        n10.a(reference, holder.isInterface(), h52, x12);
        d10.L0();
        if (d10.r1() && !d10.f37314g.H() && n10.f56812o.d(holder)) {
            n10.d(x12, h52);
        }
    }
}
