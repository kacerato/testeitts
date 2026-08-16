package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Collections;

public class C5698Or0 extends AbstractC9408sL {

    public static final boolean f43061l = true;

    public C5698Or0(C10340xw0 c10340xw0) {
        super(c10340xw0);
    }

    @Override
    public final C5698Or0 R0() {
        return this;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.m2();
    }

    @Override
    public final boolean m2() {
        return true;
    }

    @Override
    public final boolean o() {
        return true;
    }

    @Override
    public final int p2() {
        return 255;
    }

    @Override
    public final int q2() {
        if (f43061l) {
            return 0;
        }
        throw new AssertionError((Object) "Throw defines no values.");
    }

    @Override
    public final int r2() {
        return 65;
    }

    @Override
    public final void a(PS ps) {
        C10340xw0 c10340xw0 = (C10340xw0) this.f54321f.get(0);
        ps.getClass();
        ps.a(191, Collections.EMPTY_LIST, Collections.singletonList(c10340xw0));
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C10340xw0 c10340xw0) {
        if (((C10340xw0) this.f54321f.get(0)) == c10340xw0) {
            return true;
        }
        AbstractC8999pu0 u10 = ((C10340xw0) this.f54321f.get(0)).u();
        u10.getClass();
        if ((u10 instanceof C6301Zd0) || u10.B().e()) {
            return true;
        }
        C10340xw0 i10 = ((C10340xw0) this.f54321f.get(0)).i();
        if (!i10.j()) {
            AbstractC10561zE r10 = i10.r();
            if (r10.c2() && r10.w0().f52627k == c4798y.b().f37851E3) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        c5458Kn.a(this, new C5062Ds(c5458Kn.f41765d.b((C10340xw0) this.f54321f.get(0), this.f54322g)));
    }

    @Override
    public final void a(NT nt) {
        nt.a(this);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new C4965Cb(), this);
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.f54787d;
    }
}
