package com.android.tools.r8.graph;

import com.android.tools.r8.graph.R2;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.C10504yv0;
import com.android.tools.r8.internal.C5417Jv0;

public final class W2 extends R2.m {
    public W2(A2 a22) {
        super(a22);
    }

    @Override
    public final V2 G0() {
        return V2.f36896o;
    }

    @Override
    public final boolean T0() {
        return true;
    }

    @Override
    public final void V0() {
    }

    public final AbstractC4406d4 W0() {
        return this.f36759d;
    }

    @Override
    public final M2 a(C4724u1 c4724u1) {
        throw new C5417Jv0();
    }

    @Override
    public final int b(R2 r22, AbstractC8953pf abstractC8953pf) {
        A2 a22 = (A2) this.f36759d;
        A2 a23 = (A2) r22.y0().f36759d;
        a22.getClass();
        return abstractC8953pf.a(a22, a23);
    }

    @Override
    public final void c(AbstractC9213rA abstractC9213rA) {
        ((A2) this.f36759d).a(abstractC9213rA);
    }

    @Override
    public final W2 y0() {
        return this;
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.dex.M m10) {
        A2 a22 = (A2) this.f36759d;
        if (a22.b(c4798y, m10)) {
            a22.c(c4798y, m10);
        }
    }

    @Override
    public final com.android.tools.r8.internal.F1 a(com.android.tools.r8.internal.G1 g12) {
        return C10504yv0.f54195b;
    }
}
