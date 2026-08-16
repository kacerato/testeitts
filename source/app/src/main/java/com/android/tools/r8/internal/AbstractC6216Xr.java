package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.function.Function;

public abstract class AbstractC6216Xr extends AbstractC6153Wo<C4554l1> implements InterfaceC5404Jp {
    public AbstractC6216Xr(int i10, InterfaceC10042w8 interfaceC10042w8, C4554l1[] c4554l1Arr) {
        super(i10, interfaceC10042w8, c4554l1Arr);
    }

    public static C4554l1 b(AbstractC6153Wo abstractC6153Wo) {
        return (C4554l1) abstractC6153Wo.f45541g;
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
        return (C4554l1) this.f45541g;
    }

    @Override
    public final InterfaceC5404Jp h() {
        return this;
    }

    @Override
    public final boolean l() {
        return true;
    }

    public AbstractC6216Xr(int i10, C4554l1 c4554l1) {
        super(i10, c4554l1);
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        C4554l1 e10 = abstractC5308Hz.e(abstractC5308Hz2, getField());
        AbstractC5635Np.a(this.f45540f, v(), shortBuffer);
        AbstractC5635Np.a(e10, shortBuffer, c4766w5);
    }

    @Override
    public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC6216Xr.b((AbstractC6153Wo) obj);
            }
        });
    }
}
