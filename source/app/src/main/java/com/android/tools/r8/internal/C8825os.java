package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4785x5;

public class C8825os extends AbstractC6216Xr {
    public C8825os(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.a());
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.g(getField());
    }

    @Override
    public final String t() {
        return "SputBoolean";
    }

    @Override
    public final int v() {
        return 106;
    }

    @Override
    public final String z() {
        return "sput-boolean";
    }

    public C8825os(int i10, C4554l1 c4554l1) {
        super(i10, c4554l1);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.b(this.f45540f, getField());
    }

    @Override
    public final InterfaceC5404Jp a(C4554l1 c4554l1) {
        C8825os c8825os = new C8825os(this.f45540f, c4554l1);
        c8825os.e(u());
        return c8825os;
    }
}
