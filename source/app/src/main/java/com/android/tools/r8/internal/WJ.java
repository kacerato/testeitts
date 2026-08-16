package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11295l;
import java.util.List;

public abstract class WJ extends VJ {

    public static final boolean f45364n = true;

    public WJ(com.android.tools.r8.graph.A2 a22, C10340xw0 c10340xw0, List list) {
        super(a22, c10340xw0, list);
    }

    public C10340xw0 C2() {
        if (f45364n || this.f54321f.size() > 0) {
            return (C10340xw0) this.f54321f.get(0);
        }
        throw new AssertionError();
    }

    @Override
    public final boolean Q1() {
        return true;
    }

    @Override
    public final C10340xw0 Z0() {
        return C2();
    }

    @Override
    public final com.android.tools.r8.ir.optimize.P a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.ir.optimize.H h10, C5721Pc c5721Pc, AbstractC5015Cx0 abstractC5015Cx0) {
        h10.getClass();
        C10340xw0 C22 = C2();
        if (C22.u().B().e()) {
            abstractC5015Cx0.r();
            return null;
        }
        if (C22.u().v()) {
            if (!com.android.tools.r8.ir.optimize.H.f54744i && C22.u().B().e()) {
                throw new AssertionError();
            }
            if (!h10.f54747c.f50777k) {
                abstractC5015Cx0.s();
                return null;
            }
        }
        com.android.tools.r8.ir.optimize.P p10 = new com.android.tools.r8.ir.optimize.P();
        p10.f54792b = this;
        p10.f54796f = h52;
        return p10;
    }

    @Override
    public final boolean b(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        boolean O12;
        if (c4798y.E().f50690i1) {
            return true;
        }
        C10340xw0 C22 = C2();
        if (!c10394yE.c() && C22.u().v()) {
            return true;
        }
        if (!B2().f38297f.E0() || !B2().c(c4798y.b().f37859F4.f38224b)) {
            C6588bS c6588bS = c4798y.f38433z;
            c6588bS.getClass();
            if (c6588bS.a(B2(), this.f54321f)) {
                return false;
            }
            if (!c4798y.m()) {
                return true;
            }
            boolean z10 = f45364n;
            if (!z10 && !c4798y.f().h()) {
                throw new AssertionError();
            }
            C4798y L10 = c4798y.L();
            Z4.c<?> o10 = b(L10).o();
            if (o10 == null || o10.a(h52, (C4798y<? extends C4514j>) L10).b()) {
                return true;
            }
            if (c10394yE.b()) {
                return false;
            }
            com.android.tools.r8.graph.H0 a10 = com.android.tools.r8.graph.H0.a(o10.f37021c, o10.f37022d);
            if (!c4798y.f38412e.a(B2()).f40089c) {
                C11295l c11295l = c4798y.f38412e;
                c11295l.getClass();
                if (!c11295l.a(a10.getReference()).f40089c) {
                    com.android.tools.r8.graph.H0 e10 = e(c4798y, h52);
                    TW a11 = o10.a(c4798y, this, e10);
                    c4798y.E();
                    if (!a11.a(this)) {
                        return false;
                    }
                    if (e10 == null) {
                        return true;
                    }
                    if ((e10 instanceof com.android.tools.r8.graph.A4) && c4798y.f38433z.a(this, e10.Z())) {
                        return false;
                    }
                    C11295l c11295l2 = c4798y.f38412e;
                    c11295l2.getClass();
                    if (c11295l2.a(e10.getReference()).f40089c) {
                        return false;
                    }
                    if ((c10394yE instanceof C9726uE) && e10.d().j1()) {
                        if (!z10 && !O1()) {
                            throw new AssertionError();
                        }
                        if (!a11.a(c0()).e()) {
                            O12 = O1();
                        }
                    }
                    return true;
                }
            }
            return false;
        }
        O12 = T1();
        return !O12;
    }

    public final boolean d(C5458Kn c5458Kn) {
        C4516j1 a10;
        com.android.tools.r8.graph.A2 B22 = B2();
        if (B22.s0() != c5458Kn.f41765d.f50293b.j().p() || (a10 = c5458Kn.f41765d.f50293b.j().getHolder().f36252l.f36638b.a(B22)) == null || a10.w0()) {
            return false;
        }
        boolean z10 = f45364n;
        if (!z10 && B22.f38297f != a10.B0()) {
            throw new AssertionError();
        }
        if (z10 || a10.getReference() == B22) {
            return true;
        }
        throw new AssertionError();
    }

    public final boolean e(C5458Kn c5458Kn) {
        com.android.tools.r8.graph.H0 b10;
        if (!c5458Kn.f41766e.i()) {
            return false;
        }
        com.android.tools.r8.graph.H2 holder = c5458Kn.f41765d.f50293b.j().getHolder();
        if (!holder.q1() || (b10 = c5458Kn.f41762a.f().b(B2())) == null || b10.getHolder().f0() || !b10.getAccessFlags().h()) {
            return false;
        }
        com.android.tools.r8.graph.E0 holder2 = b10.getHolder();
        return holder.q1() && holder2.q1() && holder.T0().a(holder2.T0());
    }

    @Override
    public final WJ f0() {
        return this;
    }

    @Override
    public final boolean t2() {
        return true;
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C10340xw0 c10340xw0) {
        return c10340xw0 == C2() || super.a(c4798y, h52, c10340xw0);
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C6113Vw0 c6113Vw0) {
        C4798y<C11245i> M10;
        C6949de a10;
        boolean z10 = f45364n;
        C10340xw0 C22 = C2();
        AbstractC8999pu0 u10 = C22.u();
        if (!z10 && !u10.w()) {
            throw new AssertionError();
        }
        if (!c4798y.f().i() || (a10 = C22.a((M10 = c4798y.M()), (AbstractC8999pu0) null, C8854p10.h())) == null) {
            return;
        }
        com.android.tools.r8.graph.M2 a11 = C8331lu0.a(C2().a(M10), B2(), M10);
        if (z10 || M10.f().c(a10.E(), a11) || c4798y.E().f50599F1.f50836P) {
            return;
        }
        AbstractC8999pu0 b10 = C22.b(M10);
        b10.getClass();
        if (!(b10 instanceof C6301Zd0) && !a10.a(M10) && !a(M10, a11, a10.E())) {
            throw new AssertionError((Object) "The receiver lower bound does not match the receiver type");
        }
    }

    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        com.android.tools.r8.graph.H2 b10;
        com.android.tools.r8.graph.E0 g10;
        return C2().i().H() && C2().d(new C9019q01()) && (b10 = c4798y.b(m22)) != null && !((C11245i) c4798y.f()).b(b10) && (g10 = c4798y.g(m23)) != null && g10.c(c4798y);
    }
}
