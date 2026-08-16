package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.AbstractC11516y1;

public final class MZ extends AbstractC10644zm0 {

    public final AbstractC11516y1 f42316b;

    public MZ(C4798y c4798y) {
        this.f42316b = c4798y.r();
        c4798y.E();
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        return !this.f42316b.a(h22).f57837g;
    }

    @Override
    public final String f() {
        return "NoCheckDiscard";
    }
}
