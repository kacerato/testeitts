package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4420e;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11447u;
import java.util.Collections;
import org.apache.commons.math3.geometry.VectorFormat;

public class C7942jc extends AbstractC10561zE {

    public static final boolean f49273m = true;

    public final com.android.tools.r8.graph.M2 f49274k;

    public final boolean f49275l;

    public C7942jc(C10340xw0 c10340xw0, C10340xw0 c10340xw02, com.android.tools.r8.graph.M2 m22) {
        super(c10340xw0, c10340xw02);
        this.f49274k = m22;
        this.f49275l = false;
    }

    @Override
    public final C7942jc D() {
        return this;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    public C5516Ln b(int i10) {
        return new C5516Ln(i10, this.f49274k, this.f49275l);
    }

    @Override
    public final boolean d1() {
        return false;
    }

    public final C10340xw0 n() {
        return (C10340xw0) this.f54321f.get(0);
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
        return 10;
    }

    @Override
    public final boolean t1() {
        return true;
    }

    @Override
    public final String toString() {
        return super.toString() + VectorFormat.DEFAULT_SEPARATOR + ((Object) this.f49274k);
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return false;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        int b10 = c5458Kn.f41765d.b((C10340xw0) this.f54321f.get(0), this.f54322g);
        C10340xw0 c10340xw0 = this.f54320e;
        if (c10340xw0 == null) {
            c5458Kn.a(this, b(b10));
            return;
        }
        int b11 = c5458Kn.f41765d.b(c10340xw0, this.f54322g);
        if (b10 == b11) {
            c5458Kn.a(this, b(b11));
            return;
        }
        C5516Ln b12 = b(b11);
        if (b11 > 15 || b10 > 15) {
            c5458Kn.a(this, new C5579Mq(b11, b10), b12);
        } else {
            c5458Kn.a(this, new C5522Lq(b11, b10), b12);
        }
    }

    public C7942jc(C10340xw0 c10340xw0, C10340xw0 c10340xw02, com.android.tools.r8.graph.M2 m22, boolean z10) {
        super(c10340xw0, c10340xw02);
        this.f49274k = m22;
        this.f49275l = z10;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.t1() && abstractC10561zE.D().f49274k == this.f49274k;
    }

    @Override
    public boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        com.android.tools.r8.graph.E0 g10;
        if (c4798y.E().f50690i1 || !c4798y.f().i() || this.f49274k.P0()) {
            return true;
        }
        C4798y<C11245i> M10 = c4798y.M();
        com.android.tools.r8.graph.M2 a10 = this.f49274k.a(c4798y.b());
        if (!(a10.I0() && ((g10 = c4798y.g(a10)) == null || !g10.d(c4798y) || AbstractC4420e.a(g10, h52, M10, M10.f()).b())) && c4798y.f38395J.a(M10, n())) {
            return !n().b(M10).b(AbstractC8999pu0.a(this.f49274k, C8854p10.b(), (C4798y<?>) c4798y), c4798y);
        }
        return true;
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.a(x10.f54825a, this.f49274k, h52);
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        return AbstractC8999pu0.a(this.f49274k, n().u().B(), (C4798y<?>) c4798y);
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C6113Vw0 c6113Vw0) {
        boolean z10 = f49273m;
        AbstractC8999pu0 u10 = n().u();
        if (!z10 && !u10.w()) {
            throw new AssertionError();
        }
        AbstractC8999pu0 a10 = a();
        AbstractC8999pu0 a11 = AbstractC8999pu0.a(this.f49274k, u10.B(), (C4798y<?>) c4798y);
        if (!z10 && !a10.a(a11)) {
            throw new AssertionError();
        }
        if (z10 || u10.B() == a10.B() || (u10 instanceof C6301Zd0)) {
            return;
        }
        C10340xw0 d10 = d();
        C8854p10 B10 = u10.B();
        C8854p10 B11 = a10.B();
        throw new AssertionError((Object) ("Expected nullability of value " + ((Object) d10) + " defined by " + ((Object) this) + " to be " + ((Object) B10) + ", but was " + ((Object) B11) + "(context: " + h52.r() + ")"));
    }

    @Override
    public final void a(NT nt) {
        nt.a(this);
        nt.b(this);
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4798y c4798y, C5473Ku0 c5473Ku0) {
        return this.f49274k;
    }

    @Override
    public void a(C7543h9 c7543h9) {
        c7543h9.a(new C7710i9(this.f49274k), this);
    }

    @Override
    public final void a(C11447u c11447u) {
        c11447u.a((com.android.tools.r8.graph.J2) this.f49274k);
    }

    @Override
    public void a(PS ps) {
        com.android.tools.r8.graph.M2 m22 = this.f49274k;
        C10340xw0 n10 = n();
        boolean z10 = this.f49275l;
        ps.getClass();
        ps.a(z10 ? 225 : 192, Collections.singletonList(m22), Collections.singletonList(n10));
    }
}
