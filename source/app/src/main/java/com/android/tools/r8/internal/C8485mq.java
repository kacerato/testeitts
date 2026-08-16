package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4785x5;

public class C8485mq extends AbstractC7151eq {
    public C8485mq(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.b());
    }

    @Override
    public final EnumC8071kK O() {
        return EnumC8071kK.f49584h;
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.g(b());
    }

    @Override
    public final EnumC8071kK getType() {
        return EnumC8071kK.f49584h;
    }

    @Override
    public final String t() {
        return "InvokeVirtualRange";
    }

    @Override
    public final int v() {
        return 116;
    }

    @Override
    public final String z() {
        return "invoke-virtual/range";
    }

    public C8485mq(int i10, int i11, com.android.tools.r8.graph.A2 a22) {
        super(i10, i11, a22);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.a(EnumC8071kK.f49584h, b(), (com.android.tools.r8.graph.I2) null, this.f50427f, this.f50428g);
    }

    @Override
    public final InterfaceC6984dq a(com.android.tools.r8.graph.A2 a22) {
        C8485mq c8485mq = new C8485mq(this.f50428g, this.f50427f, a22);
        c8485mq.e(u());
        return c8485mq;
    }
}
