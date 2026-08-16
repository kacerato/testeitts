package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C5731Pf0 extends AbstractC8291lh {

    public static final boolean f43305m = true;

    public final int f43306l;

    public C5731Pf0(C10340xw0 c10340xw0, int i10) {
        super(c10340xw0);
        if (!f43305m && !c10340xw0.f53896m.x()) {
            throw new AssertionError();
        }
        this.f43306l = i10;
    }

    @Override
    public final C5731Pf0 F0() {
        return this;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        if (abstractC10561zE == this) {
            return true;
        }
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C5731Pf0) && abstractC10561zE.F0().f43306l == this.f43306l;
    }

    @Override
    public final boolean e2() {
        return true;
    }

    @Override
    public final boolean g1() {
        return true;
    }

    @Override
    public final int p2() {
        throw new C5417Jv0("We map out of ResourceConstNumber before register allocation");
    }

    @Override
    public final int q2() {
        throw new C5417Jv0("We map out of ResourceConstNumber before register allocation");
    }

    @Override
    public final int r2() {
        return 71;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        throw new C5417Jv0("We never write out ResourceConstNumber");
    }

    @Override
    public final void a(NT nt) {
        throw new C5417Jv0("We never write cf code with resource numbers");
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        throw new C5417Jv0("We never write out a resource const number");
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        if (!f43305m) {
            AbstractC8999pu0 a10 = a();
            a10.getClass();
            if (!(a10 instanceof C9736uI)) {
                throw new AssertionError();
            }
        }
        return AbstractC8999pu0.k();
    }

    @Override
    public final F1 a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12) {
        if (this.f54320e.z()) {
            int i10 = F1.f40064a;
            return C10504yv0.f54195b;
        }
        return c4798y.f38427t.b(this.f43306l);
    }

    @Override
    public final void a(PS ps) {
        ps.d(this.f43306l);
    }
}
