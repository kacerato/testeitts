package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4785x5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.function.Function;

public class C7821ir extends AbstractC6153Wo<com.android.tools.r8.graph.M2> {
    public C7821ir(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.c());
    }

    public static com.android.tools.r8.graph.M2 b(AbstractC6153Wo abstractC6153Wo) {
        return (com.android.tools.r8.graph.M2) abstractC6153Wo.f45541g;
    }

    public com.android.tools.r8.graph.M2 O() {
        return (com.android.tools.r8.graph.M2) this.f45541g;
    }

    @Override
    public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C7821ir.b((AbstractC6153Wo) obj);
            }
        });
    }

    @Override
    public final C7821ir k() {
        return this;
    }

    @Override
    public final boolean l() {
        return true;
    }

    @Override
    public final String t() {
        return "NewInstance";
    }

    @Override
    public final int v() {
        return 34;
    }

    @Override
    public final String z() {
        return "new-instance";
    }

    public C7821ir(int i10, com.android.tools.r8.graph.M2 m22) {
        super(i10, m22);
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
        c4798y.v().c(abstractC5308Hz, O()).a(c4798y, m10);
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        com.android.tools.r8.graph.M2 c10 = abstractC5308Hz.c(abstractC5308Hz2, O());
        AbstractC5635Np.a(this.f45540f, 34, shortBuffer);
        AbstractC5635Np.a(c10, shortBuffer, c4766w5);
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.d(O());
    }

    @Override
    public final void a(C6382aB c6382aB) {
        short s10 = this.f45540f;
        com.android.tools.r8.graph.M2 O10 = O();
        c6382aB.getClass();
        c6382aB.a(c6382aB.f46462u.g(), new C9603tZ(O10, c6382aB.a(s10, 2, AbstractC8999pu0.a(O10, C8854p10.b(), (C4798y<?>) c6382aB.f46457p))));
    }
}
