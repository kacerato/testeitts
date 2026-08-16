package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4785x5;

public class C5288Hp extends AbstractC5346Ip implements InterfaceC5368Ja {
    public C5288Hp(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.a());
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.a(this);
    }

    @Override
    public final String t() {
        return "IgetObject";
    }

    @Override
    public final int v() {
        return 84;
    }

    @Override
    public final String z() {
        return "iget-object";
    }

    public C5288Hp(int i10, int i11, C4554l1 c4554l1) {
        super(i10, i11, c4554l1);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.a(this.f46869f, this.f46870g, getField());
    }

    @Override
    public final InterfaceC5404Jp a(C4554l1 c4554l1) {
        C5288Hp c5288Hp = new C5288Hp(this.f46869f, this.f46870g, c4554l1);
        c5288Hp.e(u());
        return c5288Hp;
    }
}
