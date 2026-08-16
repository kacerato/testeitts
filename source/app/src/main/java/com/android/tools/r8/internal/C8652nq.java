package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4785x5;

public class C8652nq extends AbstractC5346Ip {
    public C8652nq(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.a());
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.c(getField());
    }

    @Override
    public final String t() {
        return "Iput";
    }

    @Override
    public final int v() {
        return 89;
    }

    @Override
    public final String z() {
        return "iput";
    }

    public C8652nq(int i10, int i11, C4554l1 c4554l1) {
        super(i10, i11, c4554l1);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.b(this.f46869f, this.f46870g, getField());
    }

    @Override
    public final InterfaceC5404Jp a(C4554l1 c4554l1) {
        C8652nq c8652nq = new C8652nq(this.f46869f, this.f46870g, c4554l1);
        c8652nq.e(u());
        return c8652nq;
    }
}
