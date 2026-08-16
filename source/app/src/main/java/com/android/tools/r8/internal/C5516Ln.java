package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4785x5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.function.Function;

public class C5516Ln extends AbstractC6153Wo<com.android.tools.r8.graph.M2> {

    public final boolean f42080i;

    public C5516Ln(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.c());
        this.f42080i = false;
    }

    public static com.android.tools.r8.graph.M2 b(AbstractC6153Wo abstractC6153Wo) {
        return (com.android.tools.r8.graph.M2) abstractC6153Wo.f45541g;
    }

    @Override
    public final boolean C() {
        return true;
    }

    public com.android.tools.r8.graph.M2 O() {
        return (com.android.tools.r8.graph.M2) this.f45541g;
    }

    @Override
    public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C5516Ln.b((AbstractC6153Wo) obj);
            }
        });
    }

    @Override
    public final C5516Ln c() {
        return this;
    }

    @Override
    public final boolean l() {
        return true;
    }

    @Override
    public final String t() {
        return "CheckCast";
    }

    @Override
    public final int v() {
        return 31;
    }

    @Override
    public final String z() {
        return "check-cast";
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
        c4798y.v().c(abstractC5308Hz, O()).a(c4798y, m10);
    }

    public C5516Ln(int i10, com.android.tools.r8.graph.M2 m22, boolean z10) {
        super(i10, m22);
        this.f42080i = z10;
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        com.android.tools.r8.graph.M2 c10 = abstractC5308Hz.c(abstractC5308Hz2, O());
        AbstractC5635Np.a(this.f45540f, 31, shortBuffer);
        AbstractC5635Np.a(c10, shortBuffer, c4766w5);
    }

    @Override
    public void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.a(O(), this.f42080i);
    }

    @Override
    public void a(C6382aB c6382aB) {
        c6382aB.a((int) this.f45540f, O(), false);
    }
}
