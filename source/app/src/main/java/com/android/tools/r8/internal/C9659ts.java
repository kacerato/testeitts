package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4785x5;

public class C9659ts extends AbstractC6216Xr {
    public C9659ts(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.a());
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.g(getField());
    }

    @Override
    public final String t() {
        return "SputWide";
    }

    @Override
    public final int v() {
        return 104;
    }

    @Override
    public final String z() {
        return "sput-wide";
    }

    public C9659ts(int i10, C4554l1 c4554l1) {
        super(i10, c4554l1);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.b(this.f45540f, getField());
    }

    @Override
    public final InterfaceC5404Jp a(C4554l1 c4554l1) {
        C9659ts c9659ts = new C9659ts(this.f45540f, c4554l1);
        c9659ts.e(u());
        return c9659ts;
    }
}
