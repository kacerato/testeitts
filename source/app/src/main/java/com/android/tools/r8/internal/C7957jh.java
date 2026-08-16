package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4420e;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11447u;
import java.util.Collections;

public final class C7957jh extends AbstractC8291lh {

    public static final boolean f49302n = true;

    public final com.android.tools.r8.graph.M2 f49303l;

    public final boolean f49304m;

    public C7957jh(C10340xw0 c10340xw0, com.android.tools.r8.graph.M2 m22, boolean z10) {
        super(c10340xw0);
        if (!f49302n && m22.P0()) {
            throw new AssertionError();
        }
        this.f49303l = m22;
        this.f49304m = z10;
    }

    @Override
    public final C7957jh F() {
        return this;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C7957jh) && abstractC10561zE.F().f49303l == this.f49303l;
    }

    @Override
    public final boolean o() {
        return true;
    }

    @Override
    public final int p2() {
        if (f49302n) {
            return 0;
        }
        throw new AssertionError((Object) "ConstClass has no register arguments.");
    }

    @Override
    public final int q2() {
        return 255;
    }

    @Override
    public final int r2() {
        return 12;
    }

    @Override
    public final String toString() {
        return super.toString() + this.f49303l.j0();
    }

    @Override
    public final void a(PS ps) {
        com.android.tools.r8.graph.M2 m22 = this.f49303l;
        boolean z10 = this.f49304m;
        ps.getClass();
        ps.a(z10 ? 226 : 18, Collections.singletonList(m22), Collections.EMPTY_LIST);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0052, code lost:
    
        if (com.android.tools.r8.graph.AbstractC4420e.a(r5, r4, r0, (com.android.tools.r8.graph.C4514j) r0.f()).b() == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001b, code lost:
    
        if (r5 == r4.p()) goto L25;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final F1 a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12) {
        com.android.tools.r8.graph.M2 a10 = this.f49303l.a(c4798y.b());
        if (!a10.P0()) {
            if (c4798y.m()) {
                if (!f49302n && !c4798y.f().h()) {
                    throw new AssertionError();
                }
                C4798y L10 = c4798y.L();
                com.android.tools.r8.graph.E0 g10 = c4798y.g(a10);
                if (g10 != null) {
                    if (g10.d(c4798y)) {
                    }
                }
                return C10504yv0.f54195b;
            }
        }
        return c4798y.f38427t.c(this.f49303l);
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        com.android.tools.r8.graph.M2 a10 = this.f49303l.a(c4798y.b());
        if (a10.P0()) {
            return false;
        }
        if (!c4798y.m()) {
            return a10 != h52.p();
        }
        if (!f49302n && !c4798y.f().h()) {
            throw new AssertionError();
        }
        C4798y L10 = c4798y.L();
        com.android.tools.r8.graph.E0 g10 = c4798y.g(a10);
        return g10 == null || !g10.d(c4798y) || AbstractC4420e.a(g10, h52, L10, (C4514j) L10.f()).b();
    }

    public static C7957jh a(C10340xw0 c10340xw0, C7957jh c7957jh) {
        if (f49302n || c10340xw0 != c7957jh.d()) {
            return new C7957jh(c10340xw0, c7957jh.f49303l, false);
        }
        throw new AssertionError();
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        c5458Kn.a(this, new C7479go(c5458Kn.f41765d.b(this.f54320e, this.f54322g), this.f49303l, this.f49304m));
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.a(x10.f54825a, this.f49303l, h52);
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        C8854p10 b10 = C8854p10.b();
        boolean z10 = AbstractC8999pu0.f51660a;
        return AbstractC8999pu0.a(c4798y.b().f38180w2, b10, (C4798y<?>) c4798y).b();
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4798y c4798y, C5473Ku0 c5473Ku0) {
        return c4798y.b().f38180w2;
    }

    @Override
    public final void a(NT nt) {
        nt.b(this);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new C9544t9(this.f49303l, false), this);
    }

    @Override
    public final void a(C11447u c11447u) {
        c11447u.a((com.android.tools.r8.graph.J2) this.f49303l);
    }
}
