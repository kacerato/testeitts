package com.android.tools.r8.shaking;

import com.android.tools.r8.experimental.graphinfo.GraphNode;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.internal.C5076Dz;

public final class S1 extends X1 {

    public final C4666r0 f56961a;

    public final com.android.tools.r8.graph.D5 f56962b;

    public S1(C4666r0 c4666r0, com.android.tools.r8.graph.D5 d52) {
        this.f56961a = c4666r0;
        this.f56962b = d52;
    }

    @Override
    public final C5076Dz.a a() {
        return C5076Dz.a.f39721o;
    }

    @Override
    public final GraphNode a(S0 s02) {
        return s02.a(this.f56961a, this.f56962b);
    }
}
