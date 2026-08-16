package com.android.tools.r8.shaking;

import com.android.tools.r8.experimental.graphinfo.GraphNode;
import com.android.tools.r8.internal.C5076Dz;
import com.android.tools.r8.origin.Origin;

public final class V1 extends X1 {

    public final Origin f57056a;

    public V1(Origin origin) {
        this.f57056a = origin;
    }

    @Override
    public final C5076Dz.a a() {
        return C5076Dz.a.f39725s;
    }

    @Override
    public final boolean b() {
        return true;
    }

    @Override
    public final GraphNode a(S0 s02) {
        return new U1(this.f57056a);
    }
}
