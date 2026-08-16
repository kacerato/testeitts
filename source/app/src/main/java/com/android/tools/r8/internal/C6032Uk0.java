package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8570nJ;

public final class C6032Uk0 extends AbstractC10436yY {

    public final C8570nJ.g f44854b;

    public C6032Uk0(C4798y c4798y) {
        this.f44854b = c4798y.E().K();
    }

    @Override
    public final Object a(com.android.tools.r8.graph.H2 h22) {
        return h22.getType().V0().replaceAll("^([^$]+)\\$.*", "$1");
    }

    @Override
    public final String f() {
        return "SameFilePolicy";
    }

    @Override
    public final boolean l() {
        return !this.f44854b.f50763d;
    }
}
