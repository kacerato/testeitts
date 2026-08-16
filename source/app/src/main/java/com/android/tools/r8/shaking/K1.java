package com.android.tools.r8.shaking;

import com.android.tools.r8.experimental.graphinfo.GraphNode;
import com.android.tools.r8.graph.C4516j1;

public abstract class K1 extends X1 {

    public final C4516j1 f56666a;

    public K1(C4516j1 c4516j1) {
        this.f56666a = c4516j1;
    }

    @Override
    public final GraphNode a(S0 s02) {
        return s02.a(this.f56666a.getReference());
    }
}
