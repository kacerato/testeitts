package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C7471gl0 extends AbstractC7173ex0 {

    public final C4798y f48357b;

    public C7471gl0(C4798y c4798y) {
        this.f48357b = c4798y;
    }

    @Override
    public final boolean a(C8340lx0 c8340lx0) {
        com.android.tools.r8.graph.H2 h22 = c8340lx0.f50154b;
        com.android.tools.r8.graph.H2 h23 = c8340lx0.f50155c;
        C4798y c4798y = this.f48357b;
        AbstractC9148qo0 abstractC9148qo0 = c4798y.f38424q;
        return abstractC9148qo0.c() || c4798y.E().E().f51620c || !abstractC9148qo0.b(h22.getType()) || abstractC9148qo0.b(h23.getType());
    }

    @Override
    public final String f() {
        return "SameStartupPartitionPolicy";
    }
}
