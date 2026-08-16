package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4785x5;

public class C8318lq extends AbstractC6818cq {
    public C8318lq(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
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
        return "InvokeVirtual";
    }

    @Override
    public final int v() {
        return 110;
    }

    @Override
    public final String z() {
        return "invoke-virtual";
    }

    public C8318lq(int i10, com.android.tools.r8.graph.A2 a22, int i11, int i12, int i13, int i14, int i15) {
        super(i10, a22, i11, i12, i13, i14, i15);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.a(EnumC8071kK.f49584h, b(), (com.android.tools.r8.graph.I2) null, this.f50110f, new int[]{this.f50111g, this.f50112h, this.f50113i, this.f50114j, this.f50115k});
    }

    @Override
    public final InterfaceC6984dq a(com.android.tools.r8.graph.A2 a22) {
        C8318lq c8318lq = new C8318lq(this.f50110f, a22, this.f50111g, this.f50112h, this.f50113i, this.f50114j, this.f50115k);
        c8318lq.e(u());
        return c8318lq;
    }
}
