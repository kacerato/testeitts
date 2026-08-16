package com.android.tools.r8.graph;

public abstract class F0 extends G0<C4460g1, C4554l1> {

    public static final boolean f36281e = true;

    public F0(E0 e02, C4460g1 c4460g1) {
        super(e02, c4460g1);
        boolean z10 = f36281e;
        if (!z10) {
            e02.getClass();
            if ((e02 instanceof I0) != (this instanceof C4402d0)) {
                throw new AssertionError();
            }
        }
        if (!z10 && e02.f0() != (this instanceof C4822z4)) {
            throw new AssertionError();
        }
        if (!z10 && e02.e0() != (this instanceof F5)) {
            throw new AssertionError();
        }
    }

    @Override
    public final boolean J() {
        return true;
    }

    public boolean a(C4798y c4798y) {
        return false;
    }

    public boolean b(C4798y c4798y) {
        if (getAccessFlags().e()) {
            return true;
        }
        return c4798y.f().i() && a(c4798y.M());
    }

    @Override
    public F0 c() {
        return this;
    }

    @Override
    public final G0 g0() {
        return this;
    }

    @Override
    public C4537k3 getAccessFlags() {
        return d().getAccessFlags();
    }

    public static F0 a(E0 e02, C4460g1 c4460g1) {
        if (e02.e0()) {
            return new F5(c4460g1, e02.d0());
        }
        if (e02.f0()) {
            return new C4822z4(e02.G(), c4460g1);
        }
        if (!f36281e && !(e02 instanceof I0)) {
            throw new AssertionError();
        }
        return new C4402d0(e02.k(), c4460g1);
    }
}
