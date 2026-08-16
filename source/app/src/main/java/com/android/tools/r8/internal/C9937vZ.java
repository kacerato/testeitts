package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11447u;

public final class C9937vZ extends AbstractC10561zE {

    public static final boolean f53140m = true;

    public final com.android.tools.r8.graph.M2 f53141k;

    public final int f53142l;

    public C9937vZ(com.android.tools.r8.graph.M2 m22, int i10, C10340xw0 c10340xw0) {
        super(c10340xw0);
        if (!f53140m && m22 == null) {
            throw new AssertionError();
        }
        this.f53141k = m22;
        this.f53142l = i10;
    }

    @Override
    public final void a(C11447u c11447u) {
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C9937vZ) && abstractC10561zE.x0().f53141k == this.f53141k;
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
        if (f53140m) {
            return 0;
        }
        throw new AssertionError((Object) "NewUnboxedEnumInstance has no register arguments");
    }

    @Override
    public final int q2() {
        return 255;
    }

    @Override
    public final int r2() {
        return 50;
    }

    @Override
    public final String toString() {
        return super.toString() + " " + ((Object) this.f53141k);
    }

    @Override
    public final C9937vZ x0() {
        return this;
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return true;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        c5458Kn.a(this, new C7987jr(c5458Kn.f41765d.b(d(), this.f54322g), this.f53142l, this.f53141k));
    }

    @Override
    public final void a(NT nt) {
        nt.b(this);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new C10440ya(this.f53142l, this.f53141k), this);
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4798y c4798y, C5473Ku0 c5473Ku0) {
        return this.f53141k;
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        return AbstractC8999pu0.a(this.f53141k, C8854p10.b(), (C4798y<?>) c4798y);
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        if (C10391yD.f53972d) {
            return null;
        }
        throw new AssertionError();
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C6113Vw0 c6113Vw0) {
        AbstractC8999pu0 a10 = a();
        boolean z10 = f53140m;
        if (!z10 && !a10.s()) {
            throw new AssertionError();
        }
        if (!z10 && a10.b().E() != this.f53141k && !c4798y.E().f50599F1.f50836P) {
            throw new AssertionError();
        }
        if (!z10 && !a10.t()) {
            throw new AssertionError();
        }
    }

    @Override
    public final void a(PS ps) {
        ps.a(this.f53142l, this.f53141k);
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.f54787d;
    }
}
