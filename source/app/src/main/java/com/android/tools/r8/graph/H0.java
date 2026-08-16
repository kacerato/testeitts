package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC9280rd;
import com.android.tools.r8.internal.TW;
import com.android.tools.r8.references.MethodReference;

public abstract class H0 extends G0<C4516j1, A2> implements D4 {

    public static final boolean f36361e = true;

    public H0() {
    }

    public static H0 a(E0 e02, C4516j1 c4516j1) {
        if (e02.e0()) {
            return new H5(e02.d0(), c4516j1);
        }
        if (e02.f0()) {
            return new A4(e02.G(), c4516j1);
        }
        if (!f36361e && !(e02 instanceof I0)) {
            throw new AssertionError();
        }
        return new C4421e0(e02.k(), c4516j1);
    }

    public TW A() {
        C4516j1 d10 = d();
        d10.L0();
        return d10.f37320m;
    }

    public O2 C() {
        return getReference().x0();
    }

    public final I2 D() {
        return getReference().y0();
    }

    public M2 E() {
        return getReference().z0();
    }

    public final boolean F() {
        return getHolder().isInterface() && d().g1();
    }

    @Override
    public final boolean I() {
        return true;
    }

    @Override
    public H0 b() {
        return this;
    }

    @Override
    public final C4516j1 d() {
        return (C4516j1) super.d();
    }

    @Override
    public final G0 g0() {
        return this;
    }

    @Override
    public final A2 getReference() {
        return (A2) super.getReference();
    }

    @Override
    public final H0 l() {
        return this;
    }

    @Override
    public L4 getAccessFlags() {
        return d().getAccessFlags();
    }

    public int v() {
        return getReference().w0();
    }

    public MethodReference w() {
        return getReference().v0();
    }

    public final D2 x() {
        A2 reference = getReference();
        return AbstractC9280rd.a(reference, reference);
    }

    public H0(E0 e02, C4516j1 c4516j1) {
        super(e02, c4516j1);
        boolean z10 = f36361e;
        if (!z10) {
            e02.getClass();
            if ((e02 instanceof I0) != (this instanceof C4421e0)) {
                throw new AssertionError();
            }
        }
        if (!z10 && e02.f0() != (this instanceof A4)) {
            throw new AssertionError();
        }
        if (!z10 && e02.e0() != (this instanceof H5)) {
            throw new AssertionError();
        }
    }

    public M2 b(int i10) {
        return getReference().k(i10);
    }

    public final boolean a(H0 h02) {
        return h02 != null && d() == h02.d() && getHolder() == h02.getHolder();
    }

    public final M2 a(int i10) {
        C4516j1 d10 = d();
        return d10.getReference().a(i10, d10.w0());
    }
}
