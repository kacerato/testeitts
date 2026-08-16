package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11447u;
import java.util.Collections;

public class C8769oZ extends AbstractC10561zE {

    public static final boolean f51272l = true;

    public final com.android.tools.r8.graph.M2 f51273k;

    public C8769oZ(C10340xw0 c10340xw0, C10340xw0 c10340xw02, com.android.tools.r8.graph.M2 m22) {
        super(c10340xw0, c10340xw02);
        this.f51273k = m22;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C8769oZ) && abstractC10561zE.t0().f51273k == this.f51273k;
    }

    @Override
    public final boolean d1() {
        return true;
    }

    @Override
    public final boolean o() {
        return true;
    }

    @Override
    public final int p2() {
        return 15;
    }

    @Override
    public final int q2() {
        return 15;
    }

    @Override
    public final int r2() {
        return 47;
    }

    @Override
    public final C8769oZ t0() {
        return this;
    }

    @Override
    public final String toString() {
        return super.toString() + " " + this.f51273k.toString();
    }

    public final int u2() {
        C10340xw0 c10340xw0 = (C10340xw0) this.f54321f.get(0);
        if (c10340xw0.K()) {
            return c10340xw0.n().J().u2();
        }
        return -1;
    }

    @Override
    public final void a(C11447u c11447u) {
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return false;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        c5458Kn.a(this, new C7655hr(c5458Kn.f41765d.b(this.f54320e, this.f54322g), c5458Kn.f41765d.b((C10340xw0) this.f54321f.get(0), this.f54322g), this.f51273k));
    }

    @Override
    public final void a(PS ps) {
        C10340xw0 c10340xw0 = (C10340xw0) this.f54321f.get(0);
        com.android.tools.r8.graph.M2 m22 = this.f51273k;
        ps.getClass();
        ps.a(188, Collections.singletonList(m22), Collections.singletonList(c10340xw0));
    }

    @Override
    public final F1 a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12) {
        boolean z10 = f51272l;
        if (!z10 && !this.f51273k.E0()) {
            throw new AssertionError();
        }
        if (com.android.tools.r8.graph.P2.a(c4798y, this.f51273k.a(c4798y.b()), h52) && u2() >= 0) {
            AbstractC8999pu0 u10 = ((C10340xw0) this.f54321f.get(0)).u();
            u10.getClass();
            if (u10 instanceof C9736uI) {
                if (!z10) {
                    if (!z10 && !this.f51273k.E0()) {
                        throw new AssertionError();
                    }
                    if (!com.android.tools.r8.graph.P2.a(c4798y, this.f51273k.a(c4798y.b()), h52) || u2() < 0) {
                        throw new AssertionError();
                    }
                }
                MQ a10 = c4798y.f38427t.a(((C10340xw0) this.f54321f.get(0)).f53886c.J().u2());
                boolean z11 = C4997Co0.f39365c;
                a10.getClass();
                return new C4997Co0(a10);
            }
        }
        return C10504yv0.f54195b;
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        if (f51272l || this.f51273k.E0()) {
            return !com.android.tools.r8.graph.P2.a(c4798y, this.f51273k.a(c4798y.b()), h52) || u2() < 0;
        }
        throw new AssertionError();
    }

    @Override
    public final com.android.tools.r8.ir.optimize.E a(C4798y c4798y, C7215fB c7215fB) {
        com.android.tools.r8.graph.H5 j10 = c7215fB.j();
        M1.a(c4798y, j10);
        if (!f51272l && !this.f51273k.E0()) {
            throw new AssertionError();
        }
        if (com.android.tools.r8.graph.P2.a(c4798y, this.f51273k.a(c4798y.b()), j10) && u2() >= 0) {
            return com.android.tools.r8.ir.optimize.E.f54733a;
        }
        return com.android.tools.r8.ir.optimize.E.f54734b;
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.a(x10.f54825a, this.f51273k, h52);
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4798y c4798y, C5473Ku0 c5473Ku0) {
        return this.f51273k;
    }

    @Override
    public final void a(NT nt) {
        nt.a(this);
        nt.b(this);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        if (!f51272l && !this.f51273k.E0()) {
            throw new AssertionError();
        }
        c7543h9.a(new C10273xa(this.f51273k), this);
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        return AbstractC8999pu0.a(this.f51273k, C8854p10.b(), (C4798y<?>) c4798y);
    }
}
