package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Set;

public final class N7 extends AbstractC5276Hj {

    public final C8534n6 f42505f;

    public N7(C4798y c4798y, C8534n6 c8534n6) {
        super(c4798y);
        this.f42505f = c8534n6;
    }

    @Override
    public final com.android.tools.r8.graph.A2 c(com.android.tools.r8.graph.A2 a22) {
        return (com.android.tools.r8.graph.A2) this.f42505f.getOrDefault(a22, a22);
    }

    @Override
    public final com.android.tools.r8.graph.A2 d(com.android.tools.r8.graph.A2 a22) {
        Set d10 = this.f42505f.d(a22);
        return d10.isEmpty() ? a22 : (com.android.tools.r8.graph.A2) d10.iterator().next();
    }
}
