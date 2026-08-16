package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8106kb;

public final class C9495st extends AbstractC10561zE {

    public static final boolean f52478k = true;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C9495st(C8146ko0 c8146ko0, C8146ko0 c8146ko02, C8146ko0 c8146ko03, C8146ko0 c8146ko04, C8146ko0 c8146ko05, C8146ko0 c8146ko06) {
        super(AbstractC7552hC.a(c8146ko05, c8146ko06), r0);
        C8313lo0 c8313lo0 = new C8313lo0(c8146ko0, c8146ko02, c8146ko03, c8146ko04);
        boolean z10 = f52478k;
        if (!z10 && c8146ko05.u().A()) {
            throw new AssertionError();
        }
        if (!z10 && c8146ko06.u().A()) {
            throw new AssertionError();
        }
        if (!z10 && c8313lo0.f50108p.length != 4) {
            throw new AssertionError();
        }
        if (!z10) {
            c8146ko05.getClass();
        }
        if (z10) {
            return;
        }
        c8146ko06.getClass();
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return abstractC10561zE instanceof C9495st;
    }

    @Override
    public final C10340xw0 d(C10340xw0 c10340xw0) {
        if (!f52478k && !(c10340xw0 instanceof C8313lo0)) {
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
        return 23;
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
        c7543h9.a(new C8106kb(C8106kb.a.Dup2), this);
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.f54787d;
    }
}
