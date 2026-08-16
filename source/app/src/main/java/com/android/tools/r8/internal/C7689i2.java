package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C7689i2 extends AbstractC8291lh {

    public static final boolean f48751l = true;

    public C7689i2(C10340xw0 c10340xw0) {
        super(c10340xw0);
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        return false;
    }

    @Override
    public final int p2() {
        throw new C5417Jv0();
    }

    @Override
    public final int q2() {
        return 255;
    }

    @Override
    public final int r2() {
        return 1;
    }

    @Override
    public final com.android.tools.r8.ir.optimize.E a(C4798y c4798y, C7215fB c7215fB) {
        return com.android.tools.r8.ir.optimize.E.f54734b;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        int b10 = c5458Kn.f41765d.b(this.f54320e, this.f54322g);
        c5458Kn.a(this, (b10 & 15) == b10 ? new C7145eo(b10, 0) : new C6812co(b10, 0));
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        throw new C5417Jv0();
    }

    @Override
    public final void a(PS ps) {
        throw new C5417Jv0();
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        if (!f48751l) {
            AbstractC8999pu0 u10 = this.f54320e.u();
            u10.getClass();
            if (!(u10 instanceof C9736uI)) {
                throw new AssertionError();
            }
        }
        return AbstractC8999pu0.k();
    }

    @Override
    public final void a(NT nt) {
        throw new C5417Jv0();
    }
}
