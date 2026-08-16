package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4785x5;

public class C5987Tr extends AbstractC6216Xr implements InterfaceC5484La {
    public C5987Tr(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.a());
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.a(this);
    }

    @Override
    public final String t() {
        return "SgetBoolean";
    }

    @Override
    public final int v() {
        return 99;
    }

    @Override
    public final String z() {
        return "sget-boolean";
    }

    public C5987Tr(int i10, C4554l1 c4554l1) {
        super(i10, c4554l1);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.a(this.f45540f, getField());
    }

    @Override
    public final InterfaceC5404Jp a(C4554l1 c4554l1) {
        C5987Tr c5987Tr = new C5987Tr(this.f45540f, c4554l1);
        c5987Tr.e(u());
        return c5987Tr;
    }
}
