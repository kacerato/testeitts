package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class JT extends AbstractC10561zE {
    public JT(C8146ko0 c8146ko0, C10340xw0 c10340xw0) {
        super(c8146ko0, c10340xw0);
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return abstractC10561zE instanceof JT;
    }

    @Override
    public final boolean d1() {
        return false;
    }

    @Override
    public final JT m0() {
        return this;
    }

    @Override
    public final int p2() {
        return 65535;
    }

    @Override
    public final int q2() {
        throw new C5417Jv0();
    }

    @Override
    public final int r2() {
        return 41;
    }

    @Override
    public final void a(NT nt) {
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return false;
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        C10340xw0 c10340xw0 = (C10340xw0) this.f54321f.get(0);
        EnumC5477Kw0 Y10 = c10340xw0.Y();
        c7543h9.f48462g.getClass();
        c7543h9.a(new C8938pa(Y10, C6234Ya.a(c10340xw0)), this);
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4798y c4798y, C5473Ku0 c5473Ku0) {
        return c5473Ku0.a((C10340xw0) this.f54321f.get(0));
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        return ((C10340xw0) this.f54321f.get(0)).u();
    }

    @Override
    public final void a(PS ps) {
        throw new C5417Jv0("This classfile-specific IR should not be used in LIR.");
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        throw new C5417Jv0("This classfile-specific IR should not be inserted in the Dex backend.");
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.f54787d;
    }
}
