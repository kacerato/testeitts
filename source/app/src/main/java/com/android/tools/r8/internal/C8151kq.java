package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4785x5;

public class C8151kq extends AbstractC7151eq {
    public C8151kq(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.b());
    }

    @Override
    public final EnumC8071kK O() {
        return EnumC8071kK.f49583g;
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.f(b());
    }

    @Override
    public final EnumC8071kK getType() {
        return EnumC8071kK.f49583g;
    }

    @Override
    public final String t() {
        return "InvokeSuperRange";
    }

    @Override
    public final int v() {
        return 117;
    }

    @Override
    public final String z() {
        return "invoke-super/range";
    }

    public C8151kq(int i10, int i11, com.android.tools.r8.graph.A2 a22) {
        super(i10, i11, a22);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.a(EnumC8071kK.f49583g, b(), (com.android.tools.r8.graph.I2) null, this.f50427f, this.f50428g);
    }

    @Override
    public final InterfaceC6984dq a(com.android.tools.r8.graph.A2 a22) {
        C8151kq c8151kq = new C8151kq(this.f50428g, this.f50427f, a22);
        c8151kq.e(u());
        return c8151kq;
    }
}
