package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4785x5;

public class C8658ns extends AbstractC6216Xr {
    public C8658ns(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.a());
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.g(getField());
    }

    @Override
    public final String t() {
        return "Sput";
    }

    @Override
    public final int v() {
        return 103;
    }

    @Override
    public final String z() {
        return "sput";
    }

    public C8658ns(int i10, C4554l1 c4554l1) {
        super(i10, c4554l1);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.b(this.f45540f, getField());
    }

    @Override
    public final InterfaceC5404Jp a(C4554l1 c4554l1) {
        C8658ns c8658ns = new C8658ns(this.f45540f, c4554l1);
        c8658ns.e(u());
        return c8658ns;
    }
}
