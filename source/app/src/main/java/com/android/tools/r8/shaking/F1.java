package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8570nJ;

public abstract class F1 extends AbstractC11432t1 {

    public final boolean f56450k;

    public F1(D1 d12) {
        super(d12);
        this.f56450k = d12.f56392k;
    }

    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.G5 g52) {
        com.android.tools.r8.graph.M2 E10;
        C8570nJ E11 = c4798y.E();
        if (!this.f56450k) {
            return false;
        }
        if (g52.I() && !a().h(E11)) {
            return true;
        }
        if (g52.J()) {
            E10 = g52.c().getReference().getType();
        } else {
            E10 = g52.b().E();
        }
        return c(E11) || E10.a(c4798y);
    }

    @Override
    public int b() {
        return AbstractC11432t1.a(9, this.f56450k) + super.b();
    }

    public final boolean a(F1 f12) {
        return super.a((AbstractC11432t1) f12) && this.f56450k == f12.f56450k;
    }
}
