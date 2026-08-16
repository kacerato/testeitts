package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4785x5;

public class C9325rs extends AbstractC6216Xr {
    public C9325rs(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.a());
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.g(getField());
    }

    @Override
    public final String t() {
        return "SputObject";
    }

    @Override
    public final int v() {
        return 105;
    }

    @Override
    public final String z() {
        return "sput-object";
    }

    public C9325rs(int i10, C4554l1 c4554l1) {
        super(i10, c4554l1);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.b(this.f45540f, getField());
    }

    @Override
    public final InterfaceC5404Jp a(C4554l1 c4554l1) {
        C9325rs c9325rs = new C9325rs(this.f45540f, c4554l1);
        c9325rs.e(u());
        return c9325rs;
    }
}
