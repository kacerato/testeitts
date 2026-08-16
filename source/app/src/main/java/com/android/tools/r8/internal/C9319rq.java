package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4785x5;

public class C9319rq extends AbstractC5346Ip {
    public C9319rq(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.a());
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.c(getField());
    }

    @Override
    public final String t() {
        return "IputObject";
    }

    @Override
    public final int v() {
        return 91;
    }

    @Override
    public final String z() {
        return "iput-object";
    }

    public C9319rq(int i10, int i11, C4554l1 c4554l1) {
        super(i10, i11, c4554l1);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.b(this.f46869f, this.f46870g, getField());
    }

    @Override
    public final InterfaceC5404Jp a(C4554l1 c4554l1) {
        C9319rq c9319rq = new C9319rq(this.f46869f, this.f46870g, c4554l1);
        c9319rq.e(u());
        return c9319rq;
    }
}
