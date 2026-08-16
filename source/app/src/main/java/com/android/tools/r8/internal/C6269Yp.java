package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4785x5;

public class C6269Yp extends AbstractC6818cq {
    public C6269Yp(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.b());
    }

    @Override
    public final EnumC8071kK O() {
        return EnumC8071kK.f49580d;
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.a(b());
    }

    @Override
    public final EnumC8071kK getType() {
        return EnumC8071kK.f49580d;
    }

    @Override
    public final String t() {
        return "InvokeDirect";
    }

    @Override
    public final int v() {
        return 112;
    }

    @Override
    public final String z() {
        return "invoke-direct";
    }

    public C6269Yp(int i10, com.android.tools.r8.graph.A2 a22, int i11, int i12, int i13, int i14, int i15) {
        super(i10, a22, i11, i12, i13, i14, i15);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.a(EnumC8071kK.f49580d, b(), (com.android.tools.r8.graph.I2) null, this.f50110f, new int[]{this.f50111g, this.f50112h, this.f50113i, this.f50114j, this.f50115k});
    }

    @Override
    public final InterfaceC6984dq a(com.android.tools.r8.graph.A2 a22) {
        C6269Yp c6269Yp = new C6269Yp(this.f50110f, a22, this.f50111g, this.f50112h, this.f50113i, this.f50114j, this.f50115k);
        c6269Yp.e(u());
        return c6269Yp;
    }
}
