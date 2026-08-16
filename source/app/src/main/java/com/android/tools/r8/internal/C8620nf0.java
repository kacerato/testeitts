package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;

public final class C8620nf0 extends AbstractC6662bt0 {

    public final C7045eA f51014f;

    public final C9621tf0 f51015g;

    public C8620nf0(C4798y c4798y, C7045eA c7045eA, C9621tf0 c9621tf0) {
        super(c4798y);
        this.f51014f = c7045eA;
        this.f51015g = c9621tf0;
        a();
    }

    @Override
    public final void a(C4554l1 c4554l1, C4554l1 c4554l12) {
        this.f51015g.f52655b.f51964b.a(c4554l1, c4554l12, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final com.android.tools.r8.graph.M2 b(com.android.tools.r8.graph.M2 m22) {
        return (com.android.tools.r8.graph.M2) this.f51014f.getOrDefault(m22, m22);
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        this.f51015g.f52656c.f51964b.a(a22, a23, true);
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        this.f51015g.f52654a.f51964b.a(m22, m23, true);
    }
}
