package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4785x5;

public class C7652hq extends AbstractC6818cq {
    public C7652hq(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.b());
    }

    @Override
    public final EnumC8071kK O() {
        return EnumC8071kK.f49582f;
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.d(b());
    }

    @Override
    public final EnumC8071kK getType() {
        return EnumC8071kK.f49582f;
    }

    @Override
    public final String t() {
        return "InvokeStatic";
    }

    @Override
    public final int v() {
        return 113;
    }

    @Override
    public final String z() {
        return "invoke-static";
    }

    public C7652hq(int i10, com.android.tools.r8.graph.A2 a22, int i11, int i12, int i13, int i14, int i15) {
        super(i10, a22, i11, i12, i13, i14, i15);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.a(EnumC8071kK.f49582f, b(), (com.android.tools.r8.graph.I2) null, this.f50110f, new int[]{this.f50111g, this.f50112h, this.f50113i, this.f50114j, this.f50115k});
    }

    @Override
    public final InterfaceC6984dq a(com.android.tools.r8.graph.A2 a22) {
        C7652hq c7652hq = new C7652hq(this.f50110f, a22, this.f50111g, this.f50112h, this.f50113i, this.f50114j, this.f50115k);
        c7652hq.e(u());
        return c7652hq;
    }
}
