package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4785x5;

public class C6159Wr extends AbstractC6216Xr implements InterfaceC5484La {
    public C6159Wr(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.a());
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.a(this);
    }

    @Override
    public final String t() {
        return "SgetObject";
    }

    @Override
    public final int v() {
        return 98;
    }

    @Override
    public final String z() {
        return "sget-object";
    }

    public C6159Wr(int i10, C4554l1 c4554l1) {
        super(i10, c4554l1);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.a(this.f45540f, getField());
    }

    @Override
    public final InterfaceC5404Jp a(C4554l1 c4554l1) {
        C6159Wr c6159Wr = new C6159Wr(this.f45540f, c4554l1);
        c6159Wr.e(u());
        return c6159Wr;
    }
}
