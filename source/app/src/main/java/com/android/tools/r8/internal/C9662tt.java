package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8106kb;

public final class C9662tt extends AbstractC10561zE {

    public static final boolean f52712k = true;

    public C9662tt(C8146ko0 c8146ko0, C8146ko0 c8146ko02, C8146ko0 c8146ko03) {
        super(new C8313lo0(c8146ko0, c8146ko02), c8146ko03);
        if (f52712k) {
            return;
        }
        c8146ko03.getClass();
    }

    @Override
    public final C9662tt Q() {
        return this;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return abstractC10561zE instanceof C9662tt;
    }

    @Override
    public final C10340xw0 d(C10340xw0 c10340xw0) {
        if (!f52712k && !(c10340xw0 instanceof C8313lo0)) {
            throw new AssertionError();
        }
        for (C8146ko0 c8146ko0 : ((C8313lo0) c10340xw0).f50108p) {
            c8146ko0.f53886c = this;
        }
        return super.d(c10340xw0);
    }

    @Override
    public final boolean d1() {
        return false;
    }

    @Override
    public final int p2() {
        return 0;
    }

    @Override
    public final int q2() {
        throw new C5417Jv0();
    }

    @Override
    public final int r2() {
        return 22;
    }

    public final C8146ko0 u2() {
        return ((C8313lo0) d()).f50108p[0];
    }

    @Override
    public final void a(NT nt) {
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return false;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        throw new C5417Jv0("This classfile-specific IR should not be inserted in the Dex backend.");
    }

    @Override
    public final void a(PS ps) {
        throw new C5417Jv0("This classfile-specific IR should not be used before finalizing to CF.");
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        if (((C10340xw0) this.f54321f.get(0)).u().A()) {
            c7543h9.a(new C8106kb(C8106kb.a.Dup2), this);
        } else {
            c7543h9.a(new C8106kb(C8106kb.a.Dup), this);
        }
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.f54787d;
    }
}
