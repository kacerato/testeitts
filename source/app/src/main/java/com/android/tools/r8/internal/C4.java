package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Set;

public class C4 extends AbstractC10561zE {

    public static final boolean f39116m = true;

    public AbstractC10330xt f39117k;

    public final AbstractC10561zE f39118l;

    public C4(AbstractC10330xt abstractC10330xt, C10340xw0 c10340xw0, C10340xw0 c10340xw02, AbstractC10561zE abstractC10561zE) {
        super(c10340xw0, c10340xw02);
        boolean z10 = f39116m;
        if (!z10 && abstractC10330xt == null) {
            throw new AssertionError();
        }
        if (!z10 && abstractC10330xt.l()) {
            throw new AssertionError();
        }
        this.f39117k = abstractC10330xt;
        this.f39118l = abstractC10561zE;
    }

    @Override
    public final C4 B() {
        return this;
    }

    @Override
    public final String X0() {
        return "Assume";
    }

    @Override
    public final C10340xw0 Z0() {
        return v2();
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        if (!(abstractC10561zE instanceof C4)) {
            return false;
        }
        return this.f39117k.equals(abstractC10561zE.B().f39117k);
    }

    public final void c(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        boolean z10 = f39116m;
        if (!z10 && v2().M()) {
            C10340xw0 d10 = d();
            C10340xw0 v22 = v2();
            AbstractC10561zE r10 = v2().r();
            throw new AssertionError((Object) ("Unexpected Assume value " + ((Object) d10) + " for constant value " + ((Object) v22) + " defined by " + ((Object) r10) + " (context: " + h52.r() + ", type: " + ((Object) v2().u()) + ")"));
        }
        if (!z10 && v2().u().B().e()) {
            throw new AssertionError();
        }
        if (!z10) {
            AbstractC8999pu0 u10 = v2().u();
            u10.getClass();
            if (u10 instanceof C6301Zd0) {
                throw new AssertionError();
            }
        }
        if (!z10 && !e1()) {
            throw new AssertionError();
        }
        if (u2()) {
            if (!z10 && this.f39117k.g()) {
                throw new AssertionError();
            }
            if (!z10 && this.f39117k.j()) {
                throw new AssertionError();
            }
            if (!z10 && this.f39117k.k()) {
                throw new AssertionError();
            }
            if (!z10 && this.f39117k.l()) {
                throw new AssertionError();
            }
            C10664zt a10 = this.f39117k.a();
            if (!z10 && !a10.n().b(v2().u(), c4798y)) {
                throw new AssertionError();
            }
        } else {
            if (!z10 && !this.f39117k.j()) {
                throw new AssertionError();
            }
            if (!z10 && !this.f39117k.d().d()) {
                throw new AssertionError();
            }
            if (!z10 && v2().u().t()) {
                C10340xw0 v23 = v2();
                throw new AssertionError((Object) ("Unexpected AssumeNotNull instruction for non-null value " + ((Object) v23) + " defined by " + (v2().j() ? "phi" : v2().r()) + " (context: " + h52.r() + ", type: " + ((Object) v2().u()) + ")"));
            }
        }
        if (z10 || !this.f39117k.d().d() || d().u().t()) {
            return;
        }
        C10340xw0 d11 = d();
        C8854p10 B10 = d().u().B();
        C8854p10 b10 = C8854p10.b();
        throw new AssertionError((Object) ("Unexpected nullability for value " + ((Object) d11) + " defined by " + ((Object) this) + ": " + ((Object) B10) + ", but expected: " + ((Object) b10) + " (context: " + h52.r() + ")"));
    }

    @Override
    public final boolean d1() {
        return false;
    }

    @Override
    public final int p2() {
        throw new C5417Jv0("Expected Assume instructions to be removed after IR processing.");
    }

    @Override
    public final int q2() {
        throw new C5417Jv0("Expected Assume instructions to be removed after IR processing.");
    }

    @Override
    public final int r2() {
        return 9;
    }

    @Override
    public final boolean t2() {
        return this.f39117k.d().d();
    }

    @Override
    public final String toString() {
        StringBuilder sb2 = new StringBuilder(super.toString());
        if (this.f39117k.d().d()) {
            sb2.append("; not null");
        }
        if (u2()) {
            C10664zt a10 = this.f39117k.a();
            if (e1() && !a10.n().a(this.f54320e.u())) {
                sb2.append("; upper bound: ");
                sb2.append((Object) a10.n());
            }
            if (a10.e()) {
                sb2.append("; lower bound: ");
                sb2.append((Object) a10.b());
            }
        }
        return sb2.toString();
    }

    public final boolean u2() {
        if (this.f39117k.j()) {
            return false;
        }
        boolean z10 = f39116m;
        if (!z10 && this.f39117k.l()) {
            throw new AssertionError();
        }
        if (z10 || this.f39117k.h()) {
            return true;
        }
        throw new AssertionError();
    }

    public C10340xw0 v2() {
        return (C10340xw0) this.f54321f.get(0);
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return false;
    }

    public static C4 a(AbstractC10330xt abstractC10330xt, C10340xw0 c10340xw0, C10340xw0 c10340xw02, AbstractC10561zE abstractC10561zE, C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        C4 c42 = new C4(abstractC10330xt, c10340xw0, c10340xw02, abstractC10561zE);
        if (!f39116m) {
            c42.c(c4798y, h52);
        }
        return c42;
    }

    @Override
    public final boolean a(Set set) {
        return v2().a(set);
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        if (this.f39117k.d().d()) {
            if (f39116m || v2().u().y()) {
                return v2().u().d().D();
            }
            throw new AssertionError();
        }
        return v2().u();
    }

    @Override
    public final boolean a(C4798y c4798y, C10340xw0 c10340xw0) {
        boolean z10 = f39116m;
        if (!z10 && (c10340xw0 == null || !c10340xw0.u().y())) {
            throw new AssertionError();
        }
        if (!z10 && this.f54320e == null) {
            throw new AssertionError();
        }
        AbstractC8999pu0 u10 = this.f54320e.u();
        if (u10.x()) {
            return false;
        }
        if (u2()) {
            u10 = this.f39117k.a().n();
        }
        if (c4798y.f().i() && u10.s() && c10340xw0.u().s() && c4798y.f().m().a(u10.b().E(), c10340xw0.u().b().E())) {
            return false;
        }
        return u10.y();
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        throw new C5417Jv0("Expected Assume instructions to be removed after IR processing.");
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        throw new C5417Jv0("Expected Assume instructions to be removed after IR processing.");
    }

    @Override
    public final void a(PS ps) {
        throw new C5417Jv0("Expected Assume instructions to be removed after IR processing.");
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4798y c4798y, C5473Ku0 c5473Ku0) {
        return c5473Ku0.a(v2());
    }

    @Override
    public final void a(NT nt) {
        throw new C5417Jv0("Expected Assume instructions to be removed after IR processing.");
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C6113Vw0 c6113Vw0) {
        c(c4798y, h52);
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.f54787d;
    }
}
