package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C7304fl0 extends AbstractC10436yY {

    public final C8981po0 f48086b;

    public final AbstractC9148qo0 f48087c;

    public C7304fl0(C4798y c4798y) {
        this.f48086b = c4798y.E().E();
        this.f48087c = c4798y.f38424q;
    }

    @Override
    public final Object a(com.android.tools.r8.graph.H2 h22) {
        return this.f48087c.b(h22.getType()) ? EnumC7137el0.f47772b : EnumC7137el0.f47773c;
    }

    @Override
    public final String f() {
        return "SameStartupPartition";
    }

    @Override
    public final boolean l() {
        return this.f48087c.c() || this.f48086b.f51620c;
    }
}
