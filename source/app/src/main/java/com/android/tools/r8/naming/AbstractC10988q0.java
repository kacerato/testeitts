package com.android.tools.r8.naming;

import com.android.tools.r8.graph.C4724u1;

public abstract class AbstractC10988q0 extends AbstractC10992r0 {

    public static final boolean f56028c = true;

    public final C4724u1 f56029b;

    public AbstractC10988q0(C4724u1 c4724u1) {
        this.f56029b = c4724u1;
    }

    @Override
    public final com.android.tools.r8.graph.L2 c(com.android.tools.r8.graph.M2 m22) {
        if (m22.P0() || m22.S0() || m22.N0()) {
            return m22.v0();
        }
        if (m22.E0()) {
            return c(m22.a(this.f56029b)).a(m22.y0(), this.f56029b);
        }
        if (f56028c || m22.I0()) {
            return b(m22);
        }
        throw new AssertionError();
    }
}
