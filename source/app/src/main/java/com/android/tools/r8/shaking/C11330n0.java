package com.android.tools.r8.shaking;

public final class C11330n0 extends AbstractC11279k0 {

    public final com.android.tools.r8.graph.F5 f57549a;

    public C11330n0(com.android.tools.r8.graph.F5 f52) {
        this.f57549a = f52;
    }

    @Override
    public final void a(N n10) {
        com.android.tools.r8.graph.F5 f52 = this.f57549a;
        X1 x12 = R0.f56919a;
        n10.a((com.android.tools.r8.graph.F0) f52).f37537b |= 24;
        if (f52.d().w0()) {
            n10.a(f52, f52, x12);
        } else {
            n10.f56776S.a(f52, f52, x12);
        }
    }
}
