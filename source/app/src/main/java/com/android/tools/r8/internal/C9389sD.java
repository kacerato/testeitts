package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4420e;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11447u;
import java.util.Collections;
import org.apache.commons.math3.geometry.VectorFormat;

public final class C9389sD extends AbstractC10561zE {

    public static final boolean f52316l = true;

    public final com.android.tools.r8.graph.M2 f52317k;

    public C9389sD(com.android.tools.r8.graph.M2 m22, C10340xw0 c10340xw0) {
        super(c10340xw0);
        boolean z10 = f52316l;
        if (!z10 && !e1()) {
            throw new AssertionError();
        }
        if (!z10) {
            AbstractC8999pu0 u10 = c10340xw0.u();
            u10.getClass();
            if (!(u10 instanceof C9736uI)) {
                throw new AssertionError();
            }
        }
        if (!z10 && !m22.I0()) {
            throw new AssertionError();
        }
        this.f52317k = m22;
    }

    @Override
    public final boolean I1() {
        return true;
    }

    @Override
    public final C9389sD W() {
        return this;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.I1() && this.f52317k == abstractC10561zE.W().f52317k;
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
        return 255;
    }

    @Override
    public final int q2() {
        return 255;
    }

    @Override
    public final int r2() {
        return 27;
    }

    @Override
    public final String toString() {
        return super.toString() + VectorFormat.DEFAULT_SEPARATOR + this.f52317k.j0();
    }

    @Override
    public final void a(C11447u c11447u) {
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52, C4798y c4798y, int i10, int i11) {
        com.android.tools.r8.graph.E0 g10;
        return (i11 == 2 || (g10 = c4798y.g(this.f52317k)) == null || !AbstractC5663Oc.a(this, m22, g10, c4798y, i10)) ? false : true;
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        return AbstractC8999pu0.k();
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        throw new C5417Jv0();
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        throw new C5417Jv0();
    }

    @Override
    public final void a(PS ps) {
        com.android.tools.r8.graph.M2 m22 = this.f52317k;
        ps.getClass();
        ps.a(221, Collections.singletonList(m22), Collections.EMPTY_LIST);
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        if (!f52316l && !c4798y.m()) {
            throw new AssertionError();
        }
        C4798y<C11245i> M10 = c4798y.M();
        com.android.tools.r8.graph.E0 g10 = c4798y.g(this.f52317k);
        return g10 == null || AbstractC4420e.a(g10, h52, M10, M10.f()).b() || this.f52317k.a(c4798y, h52);
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        if (c4798y.m()) {
            return this.f52317k.a(c4798y, h52);
        }
        return this.f52317k != h52.p();
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.a(x10.f54825a, this.f52317k, h52);
    }

    @Override
    public final void a(NT nt) {
        nt.b(this);
    }
}
