package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4785x5;

public class C9159qs extends AbstractC6216Xr {
    public C9159qs(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.a());
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.g(getField());
    }

    @Override
    public final String t() {
        return "SputChar";
    }

    @Override
    public final int v() {
        return 108;
    }

    @Override
    public final String z() {
        return "sput-char";
    }

    public C9159qs(int i10, C4554l1 c4554l1) {
        super(i10, c4554l1);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.b(this.f45540f, getField());
    }

    @Override
    public final InterfaceC5404Jp a(C4554l1 c4554l1) {
        C9159qs c9159qs = new C9159qs(this.f45540f, c4554l1);
        c9159qs.e(u());
        return c9159qs;
    }
}
