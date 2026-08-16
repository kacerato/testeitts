package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4420e;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11447u;
import java.util.Collections;

public class C9603tZ extends AbstractC10561zE {

    public static final boolean f52626m = true;

    public final com.android.tools.r8.graph.M2 f52627k;

    public boolean f52628l;

    public C9603tZ(com.android.tools.r8.graph.M2 m22, C10340xw0 c10340xw0) {
        super(c10340xw0);
        this.f52628l = true;
        if (!f52626m && m22 == null) {
            throw new AssertionError();
        }
        this.f52627k = m22;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        c5458Kn.a(this, new C7821ir(c5458Kn.f41765d.b(this.f54320e, this.f54322g), this.f52627k));
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.c2() && abstractC10561zE.w0().f52627k == this.f52627k;
    }

    @Override
    public final boolean c2() {
        return true;
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
        if (f52626m) {
            return 0;
        }
        throw new AssertionError((Object) "NewInstance has no register arguments");
    }

    @Override
    public final int q2() {
        return 255;
    }

    @Override
    public final int r2() {
        return 49;
    }

    @Override
    public final String toString() {
        return super.toString() + " " + ((Object) this.f52627k);
    }

    public com.android.tools.r8.graph.M2 u2() {
        return this.f52627k;
    }

    @Override
    public final C9603tZ w0() {
        return this;
    }

    @Override
    public final boolean b(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        com.android.tools.r8.graph.A2 reference;
        C4724u1 b10 = c4798y.b();
        if (!c4798y.m()) {
            return (b10.f37830B6.contains(this.f52627k) && b10.f37838C6.contains(this.f52627k)) ? false : true;
        }
        boolean z10 = f52626m;
        if (!z10 && !c4798y.f().h()) {
            throw new AssertionError();
        }
        C4798y L10 = c4798y.L();
        if (this.f52627k.P0() || this.f52627k.E0()) {
            if (z10) {
                return true;
            }
            throw new AssertionError((Object) "Unexpected new-instance instruction with primitive or array type");
        }
        com.android.tools.r8.graph.E0 g10 = c4798y.g(this.f52627k);
        if (g10 == null || g10.l1() || !g10.d(c4798y) || AbstractC4420e.a(g10, h52, L10, (C4514j) L10.f()).b() || g10.a(L10, h52)) {
            return true;
        }
        com.android.tools.r8.graph.Z4 a10 = ((C4514j) L10.f()).a(this.f52627k, b10.f37859F4.f38229g);
        return (!a10.w() || (reference = a10.s().getReference()) == b10.f37943R4.f36493l || reference == b10.f37859F4.f38229g) ? false : true;
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.a(x10.f54825a, this.f52627k, h52);
    }

    @Override
    public final void a(NT nt) {
        nt.b(this);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new C10106wa(this.f52627k), this);
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4798y c4798y, C5473Ku0 c5473Ku0) {
        return this.f52627k;
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        return AbstractC8999pu0.a(this.f52627k, C8854p10.b(), (C4798y<?>) c4798y);
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        c10391yD.a(this.f52627k);
        return null;
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        if (c4798y.m()) {
            return this.f52627k.a(c4798y, h52);
        }
        return this.f52627k != h52.p();
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C6113Vw0 c6113Vw0) {
        AbstractC8999pu0 a10 = a();
        boolean z10 = f52626m;
        if (!z10 && !a10.s()) {
            throw new AssertionError();
        }
        if (!z10 && a10.b().E() != this.f52627k && !c4798y.E().f50599F1.f50836P) {
            throw new AssertionError();
        }
        if (!z10 && !a10.t()) {
            throw new AssertionError();
        }
    }

    @Override
    public final void a(C11447u c11447u) {
        c11447u.a((com.android.tools.r8.graph.J2) this.f52627k);
    }

    @Override
    public final void a(PS ps) {
        com.android.tools.r8.graph.M2 m22 = this.f52627k;
        ps.getClass();
        ps.a(187, Collections.singletonList(m22), Collections.EMPTY_LIST);
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52, C4798y c4798y, int i10, int i11) {
        com.android.tools.r8.graph.E0 g10;
        return (i11 == 2 || (g10 = c4798y.g(this.f52627k)) == null || !AbstractC5663Oc.a(this, m22, g10, c4798y, i10)) ? false : true;
    }
}
