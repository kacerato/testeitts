package com.android.tools.r8.graph;

import com.android.tools.r8.graph.R2;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.C10504yv0;
import com.android.tools.r8.internal.C5417Jv0;

public final class Y2 extends R2.m {
    public Y2(I2 i22) {
        super(i22);
    }

    @Override
    public final Y2 A0() {
        return this;
    }

    @Override
    public final V2 G0() {
        return V2.f36891j;
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
        return ((I2) this.f36759d).a((I2) r22.A0().f36759d, abstractC8953pf);
    }

    @Override
    public final void c(AbstractC9213rA abstractC9213rA) {
        ((I2) this.f36759d).a(abstractC9213rA);
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.dex.M m10) {
        I2 i22 = (I2) this.f36759d;
        i22.getClass();
        if (m10.a(i22)) {
            i22.f36440e.a(c4798y, m10);
            i22.f36441f.a(c4798y, m10);
        }
    }

    @Override
    public final com.android.tools.r8.internal.F1 a(com.android.tools.r8.internal.G1 g12) {
        return C10504yv0.f54195b;
    }
}
