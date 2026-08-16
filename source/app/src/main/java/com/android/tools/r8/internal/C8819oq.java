package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4785x5;

public class C8819oq extends AbstractC5346Ip {
    public C8819oq(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.a());
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.c(getField());
    }

    @Override
    public final String t() {
        return "IputBoolean";
    }

    @Override
    public final int v() {
        return 92;
    }

    @Override
    public final String z() {
        return "iput-boolean";
    }

    public C8819oq(int i10, int i11, C4554l1 c4554l1) {
        super(i10, i11, c4554l1);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.b(this.f46869f, this.f46870g, getField());
    }

    @Override
    public final InterfaceC5404Jp a(C4554l1 c4554l1) {
        C8819oq c8819oq = new C8819oq(this.f46869f, this.f46870g, c4554l1);
        c8819oq.e(u());
        return c8819oq;
    }
}
