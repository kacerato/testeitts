package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4420e;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11447u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class C9103qZ extends NJ {

    public static final boolean f51804m = true;

    public final com.android.tools.r8.graph.M2 f51805l;

    public C9103qZ(com.android.tools.r8.graph.M2 m22, C10340xw0 c10340xw0, List list) {
        super(list, c10340xw0);
        this.f51805l = m22;
    }

    @Override
    public final void a(C11447u c11447u) {
    }

    @Override
    public final boolean a2() {
        return true;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.a2() && this.f51805l == abstractC10561zE.u0().f51805l;
    }

    @Override
    public final boolean d1() {
        return true;
    }

    @Override
    public final int r2() {
        return 36;
    }

    @Override
    public final String toString() {
        return super.toString() + "; type: " + this.f51805l.j0();
    }

    @Override
    public final C9103qZ u0() {
        return this;
    }

    @Override
    public final com.android.tools.r8.graph.M2 v2() {
        return this.f51805l;
    }

    @Override
    public final String x2() {
        return "NewArray";
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return false;
    }

    @Override
    public final boolean b(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        if (e1() && d().z()) {
            if (f51804m || c4798y.E().f50690i1) {
                return true;
            }
            throw new AssertionError();
        }
        return a(c4798y, h52, m12, c10394yE);
    }

    @Override
    public final void a(PS ps) {
        com.android.tools.r8.graph.M2 m22 = this.f51805l;
        ArrayList arrayList = this.f54321f;
        ps.getClass();
        ps.a(214, Collections.singletonList(m22), arrayList);
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        AbstractC5635Np c5518Lo;
        int y22 = y2();
        if (y22 > c5458Kn.f41776o) {
            c5458Kn.f41776o = y22;
        }
        if (b(c5458Kn)) {
            if (!f51804m) {
                c(c5458Kn);
            }
            c5518Lo = new C5575Mo(a(c5458Kn, b(0)), y22, this.f51805l);
        } else {
            int[] iArr = new int[5];
            c5518Lo = new C5518Lo(a(c5458Kn, iArr), this.f51805l, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
        }
        a(c5518Lo, c5458Kn);
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.a(x10.f54825a, this.f51805l, h52);
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        return AbstractC8999pu0.a(this.f51805l, C8854p10.b(), (C4798y<?>) c4798y);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        throw new C5417Jv0("InvokeNewArray (non-empty) not supported when compiling to classfiles.");
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4798y c4798y, C5473Ku0 c5473Ku0) {
        throw new C5417Jv0("InvokeNewArray (non-empty) not supported when compiling to classfiles.");
    }

    @Override
    public final void a(NT nt) {
        throw new C5417Jv0("InvokeNewArray (non-empty) not supported when compiling to classfiles.");
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        com.android.tools.r8.graph.M2 a10 = this.f51805l.E0() ? this.f51805l.a(c4798y.b()) : this.f51805l;
        if (a10.P0()) {
            if (f51804m || !this.f51805l.T0()) {
                return false;
            }
            throw new AssertionError((Object) "The array's contents must be single-word");
        }
        boolean z10 = f51804m;
        if (!z10 && !a10.Q0()) {
            throw new AssertionError();
        }
        if (a10 == h52.p()) {
            return false;
        }
        if (!c4798y.m()) {
            return true;
        }
        if (!z10 && !c4798y.f().h()) {
            throw new AssertionError();
        }
        C4798y L10 = c4798y.L();
        com.android.tools.r8.graph.E0 g10 = c4798y.g(a10);
        return g10 == null || !g10.d(c4798y) || AbstractC4420e.a(g10, h52, L10, (C4514j) L10.f()).b();
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        c10391yD.a(this);
        return null;
    }

    @Override
    public final F1 a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12) {
        if (!b(c4798y, h52, m12, C10394yE.f53978a)) {
            MQ a10 = c4798y.f38427t.a(this.f54321f.size());
            boolean z10 = C4997Co0.f39365c;
            a10.getClass();
            return new C4997Co0(a10);
        }
        return C10504yv0.f54195b;
    }
}
