package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;

public abstract class AbstractC6818cq extends AbstractC8315lp implements InterfaceC6984dq {
    public AbstractC6818cq(int i10, C5693Op c5693Op, com.android.tools.r8.graph.A2[] a2Arr) {
        super(i10, c5693Op, a2Arr);
    }

    @Override
    public final boolean K() {
        return true;
    }

    public abstract EnumC8071kK O();

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
        com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) c4798y.v().a(b(), h52.getReference(), O(), abstractC5308Hz, AbstractC9530t40.f52519c).f41111a;
        if (a22.b(c4798y, m10)) {
            com.android.tools.r8.graph.L2 a10 = c4798y.s().a(a22);
            a10.getClass();
            m10.a(a10);
        }
    }

    @Override
    public final com.android.tools.r8.graph.A2 b() {
        return (com.android.tools.r8.graph.A2) this.f50116l;
    }

    @Override
    public final InterfaceC6984dq j() {
        return this;
    }

    @Override
    public final boolean l() {
        return true;
    }

    public AbstractC6818cq(int i10, com.android.tools.r8.graph.A2 a22, int i11, int i12, int i13, int i14, int i15) {
        super(i10, a22, i11, i12, i13, i14, i15);
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        NW a10 = abstractC5308Hz.a(b(), h52.getReference(), O(), abstractC5308Hz2, AbstractC9530t40.f52519c);
        byte b10 = this.f50110f;
        byte b11 = this.f50115k;
        EnumC8071kK enumC8071kK = a10.f42623d;
        if (!EnumC8071kK.f49588l && enumC8071kK.f49589b < 0) {
            throw new AssertionError();
        }
        AbstractC5635Np.a(b10, b11, shortBuffer, enumC8071kK.f49589b);
        AbstractC5635Np.a(a10.f41111a, shortBuffer, c4766w5);
        shortBuffer.put(AbstractC5635Np.d(AbstractC5635Np.e(this.f50114j, this.f50113i), AbstractC5635Np.e(this.f50112h, this.f50111g)));
    }
}
