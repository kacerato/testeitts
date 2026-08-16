package com.android.tools.r8.graph;

import com.android.tools.r8.dex.C4324y;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.C5051Dm0;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.ZY;

public final class Q2 extends R2.m {

    public static final boolean f36719f = true;

    public final ZY f36720e;

    public Q2(J2 j22, ZY zy) {
        super(j22);
        this.f36720e = zy;
    }

    public static int a(R2 r22, R2 r23, AbstractC8953pf abstractC8953pf) {
        boolean z10 = f36719f;
        if (!z10 && r22.G0() != V2.f36893l) {
            throw new AssertionError();
        }
        if (!z10 && r23.G0() != V2.f36893l) {
            throw new AssertionError();
        }
        r23.getClass();
        return abstractC8953pf.a(r22 instanceof Q2 ? 1 : 0, r23 instanceof Q2 ? 1 : 0);
    }

    @Override
    public final V2 G0() {
        return V2.f36893l;
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
    public final int b(R2 r22, AbstractC8953pf abstractC8953pf) {
        int a10 = a(this, r22, abstractC8953pf);
        return a10 != 0 ? a10 : abstractC8953pf.a((J2) this.f36759d, (J2) r22.l0().f36759d);
    }

    @Override
    public final void c(AbstractC9213rA abstractC9213rA) {
        abstractC9213rA.a((J2) this.f36759d);
    }

    @Override
    public final Object k0() {
        return ((J2) this.f36759d).toString();
    }

    @Override
    public final Q2 l0() {
        return this;
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.dex.M m10) {
        ((J2) this.f36759d).a(c4798y, m10);
    }

    @Override
    public final M2 a(C4724u1 c4724u1) {
        return c4724u1.f38052g2;
    }

    @Override
    public final com.android.tools.r8.internal.F1 a(com.android.tools.r8.internal.G1 g12) {
        J2 j22 = (J2) this.f36759d;
        ZY zy = this.f36720e;
        g12.getClass();
        return new C5051Dm0(j22, zy);
    }

    @Override
    public final void a(C4324y c4324y, C4766w5 c4766w5) {
        throw new C5417Jv0("DexItemBasedValueString values should always be rewritten into DexValueString");
    }
}
