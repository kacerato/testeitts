package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public class C6433aY extends AbstractC10561zE {

    public static final boolean f46555k = true;

    public C6433aY(C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        super(c10340xw0, c10340xw02);
    }

    @Override
    public final boolean Y1() {
        return true;
    }

    @Override
    public Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final AbstractC8291lh a1() {
        if (f46555k || e2()) {
            return v2().f53886c.a1();
        }
        throw new AssertionError();
    }

    @Override
    public boolean b(AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.Y1();
    }

    @Override
    public final boolean d1() {
        return false;
    }

    @Override
    public boolean e2() {
        return v2().M();
    }

    @Override
    public C6433aY p0() {
        return this;
    }

    @Override
    public final int p2() {
        return 65535;
    }

    @Override
    public final int q2() {
        return 65535;
    }

    @Override
    public int r2() {
        return 43;
    }

    @Override
    public final String toString() {
        return super.toString() + " (" + ((Object) a()) + ")";
    }

    public C10340xw0 u2() {
        return this.f54320e;
    }

    public C10340xw0 v2() {
        return (C10340xw0) this.f54321f.get(0);
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return false;
    }

    @Override
    public void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C6113Vw0 c6113Vw0) {
        if (!(this instanceof C7130ej) && !f46555k && !v2().u().equals(a())) {
            throw new AssertionError();
        }
    }

    @Override
    public final boolean a(C4798y c4798y, C10340xw0 c10340xw0) {
        throw new C5417Jv0("as long as we're analyzing SSA IR.");
    }

    @Override
    public void a(C5458Kn c5458Kn) {
        c5458Kn.getClass();
        c5458Kn.a(this, new C5226Gn(this));
    }

    @Override
    public void a(C7543h9 c7543h9) {
        throw new C5417Jv0("This DEX-specific instruction should not be seen in the CF backend");
    }

    @Override
    public void a(PS ps) {
        throw new C5417Jv0("This DEX-specific instruction should not be seen in the CF backend");
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        return v2().u();
    }

    @Override
    public void a(NT nt) {
        throw new C5417Jv0("This DEX-specific instruction should not be seen in the CF backend");
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.f54787d;
    }
}
