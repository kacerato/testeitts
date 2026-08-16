package com.android.tools.r8.internal;

import java.util.Collections;

public class C10471yk0 extends AbstractC9408sL {

    public static final boolean f54132l = true;

    public C10471yk0() {
    }

    @Override
    public final C10471yk0 G0() {
        return this;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    public final AbstractC9644tn b(C5458Kn c5458Kn) {
        if (v2()) {
            return new C5639Nr();
        }
        int b10 = c5458Kn.f41765d.b(w2(), this.f54322g);
        if (!f54132l && v2()) {
            throw new AssertionError();
        }
        AbstractC8999pu0 u10 = w2().u();
        if (u10.y()) {
            return new C5581Mr(b10);
        }
        if (u10.z()) {
            return new Lr(b10);
        }
        if (u10.A()) {
            return new C5697Or(b10);
        }
        throw new C5417Jv0();
    }

    @Override
    public final boolean g2() {
        return true;
    }

    @Override
    public final boolean i1() {
        return true;
    }

    @Override
    public final int p2() {
        return 255;
    }

    @Override
    public final int q2() {
        if (f54132l) {
            return 0;
        }
        throw new AssertionError((Object) "Return defines no values.");
    }

    @Override
    public final int r2() {
        return 56;
    }

    public final boolean v2() {
        return this.f54321f.size() == 0;
    }

    public C10340xw0 w2() {
        if (f54132l || !v2()) {
            return (C10340xw0) this.f54321f.get(0);
        }
        throw new AssertionError();
    }

    public C10471yk0(C10340xw0 c10340xw0) {
        super(c10340xw0);
    }

    @Override
    public final void a(PS ps) {
        if (!v2()) {
            C10340xw0 w22 = w2();
            ps.getClass();
            ps.a(176, Collections.EMPTY_LIST, Collections.singletonList(w22));
            return;
        }
        ps.b();
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        if (!v2()) {
            if (w2().u().a(h52.E().b(x10.f54825a), x10.f54825a)) {
                return com.android.tools.r8.ir.optimize.O.f54787d;
            }
            return com.android.tools.r8.ir.optimize.O.f54786c;
        }
        return com.android.tools.r8.ir.optimize.O.f54787d;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        AbstractC9644tn b10 = b(c5458Kn);
        W5 w52 = c5458Kn.f41778q;
        if (w52 != null && a(w52.f45293f.a(), c5458Kn.f41765d, c5458Kn.f41767f)) {
            c5458Kn.a(this, new C4878An(this));
        } else {
            c5458Kn.a(this, b10);
        }
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        if (!abstractC10561zE.g2()) {
            return false;
        }
        C10471yk0 G02 = abstractC10561zE.G0();
        if (v2()) {
            return G02.v2();
        }
        boolean z10 = f54132l;
        if (!z10 && v2()) {
            throw new AssertionError();
        }
        AbstractC8999pu0 u10 = w2().u();
        if (!z10 && G02.v2()) {
            throw new AssertionError();
        }
        AbstractC8999pu0 u11 = G02.w2().u();
        if (u10.y() && u11.y()) {
            return true;
        }
        if (u10.z() && u11.z()) {
            return true;
        }
        return u10.A() && u11.A();
    }

    @Override
    public final void a(NT nt) {
        if (v2()) {
            return;
        }
        nt.a(this);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        W9 c6440ab;
        if (v2()) {
            c6440ab = new C6607bb();
        } else {
            if (!f54132l && v2()) {
                throw new AssertionError();
            }
            c6440ab = new C6440ab(EnumC5477Kw0.a(w2().u()));
        }
        c7543h9.a(c6440ab, this);
    }
}
