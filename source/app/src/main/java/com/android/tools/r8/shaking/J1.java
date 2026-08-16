package com.android.tools.r8.shaking;

import com.android.tools.r8.experimental.graphinfo.GraphNode;
import com.android.tools.r8.graph.AbstractC4365b1;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.internal.C5076Dz;

public final class J1 extends X1 {

    public static final boolean f56641b = true;

    public final AbstractC4365b1 f56642a;

    public J1(AbstractC4365b1 abstractC4365b1) {
        this.f56642a = abstractC4365b1;
    }

    @Override
    public final C5076Dz.a a() {
        return C5076Dz.a.f39717k;
    }

    @Override
    public final GraphNode a(S0 s02) {
        if (this.f56642a.s0()) {
            return s02.a(this.f56642a.l0().f36245e);
        }
        AbstractC4365b1 abstractC4365b1 = this.f56642a;
        abstractC4365b1.getClass();
        if (abstractC4365b1 instanceof C4460g1) {
            return s02.a(this.f56642a.m0().getReference());
        }
        if (f56641b || this.f56642a.v0()) {
            return s02.a(this.f56642a.o0().getReference());
        }
        throw new AssertionError();
    }
}
