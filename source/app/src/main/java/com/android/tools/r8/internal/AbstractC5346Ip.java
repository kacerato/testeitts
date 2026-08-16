package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;

public abstract class AbstractC5346Ip extends AbstractC6649bp implements InterfaceC5404Jp {
    public AbstractC5346Ip(int i10, InterfaceC10042w8 interfaceC10042w8, C4554l1[] c4554l1Arr) {
        super(i10, interfaceC10042w8, c4554l1Arr);
    }

    @Override
    public final boolean I() {
        return true;
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
        c4798y.v().e(abstractC5308Hz, getField()).a(c4798y, m10);
    }

    @Override
    public final C4554l1 getField() {
        return (C4554l1) this.f46871h;
    }

    @Override
    public final InterfaceC5404Jp h() {
        return this;
    }

    @Override
    public final boolean l() {
        return true;
    }

    public AbstractC5346Ip(int i10, int i11, C4554l1 c4554l1) {
        super(i10, i11, c4554l1);
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        C4554l1 e10 = abstractC5308Hz.e(abstractC5308Hz2, getField());
        AbstractC5635Np.a(this.f46870g, this.f46869f, shortBuffer, v());
        AbstractC5635Np.a(e10, shortBuffer, c4766w5);
    }
}
