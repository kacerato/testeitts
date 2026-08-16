package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4420e;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11447u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class XJ extends NJ {

    public static final boolean f45653m = true;

    public final com.android.tools.r8.graph.M2 f45654l;

    public XJ(com.android.tools.r8.graph.M2 m22, C10340xw0 c10340xw0, List list) {
        super(list, c10340xw0);
        this.f45654l = m22;
    }

    @Override
    public final void a(C11447u c11447u) {
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof XJ) && this.f45654l == abstractC10561zE.g0().f45654l;
    }

    @Override
    public final boolean d1() {
        return true;
    }

    @Override
    public final XJ g0() {
        return this;
    }

    @Override
    public final int r2() {
        return 35;
    }

    @Override
    public final com.android.tools.r8.graph.M2 v2() {
        return this.f45654l;
    }

    @Override
    public final String x2() {
        return "MultiNewArray";
    }

    public final boolean z2() {
        ArrayList arrayList = this.f54321f;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C10340xw0 c10340xw0 = (C10340xw0) obj;
            if (!c10340xw0.G() || c10340xw0.v().b() < 0) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return false;
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.a(x10.f54825a, this.f45654l, h52);
    }

    @Override
    public final boolean b(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        if (e1() && d().z()) {
            if (f45653m || c4798y.E().f50690i1) {
                return true;
            }
            throw new AssertionError();
        }
        return a(c4798y, h52, m12, c10394yE);
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        return AbstractC8999pu0.a(this.f45654l, C8854p10.b(), (C4798y<?>) c4798y);
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4798y c4798y, C5473Ku0 c5473Ku0) {
        return this.f45654l;
    }

    @Override
    public final void a(NT nt) {
        nt.a(this);
        nt.a(this.f45654l, this);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new C9605ta(this.f54321f.size(), this.f45654l), this);
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        throw new C5417Jv0("InvokeNewArray (non-empty) not supported when compiling to dex files.");
    }

    @Override
    public final void a(PS ps) {
        com.android.tools.r8.graph.M2 m22 = this.f45654l;
        ArrayList arrayList = this.f54321f;
        ps.getClass();
        ps.a(197, Collections.singletonList(m22), arrayList);
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        com.android.tools.r8.graph.M2 a10 = this.f45654l.E0() ? this.f45654l.a(c4798y.b()) : this.f45654l;
        if (a10.P0()) {
            if (f45653m || !this.f45654l.T0()) {
                return z2();
            }
            throw new AssertionError((Object) "The array's contents must be single-word");
        }
        boolean z10 = f45653m;
        if (!z10 && !a10.Q0()) {
            throw new AssertionError();
        }
        if (a10 == h52.p()) {
            return z2();
        }
        if (!c4798y.m()) {
            return true;
        }
        if (!z10 && !c4798y.f().h()) {
            throw new AssertionError();
        }
        C4798y L10 = c4798y.L();
        com.android.tools.r8.graph.E0 g10 = c4798y.g(a10);
        if (g10 == null || !g10.d(c4798y) || AbstractC4420e.a(g10, h52, L10, (C4514j) L10.f()).b()) {
            return true;
        }
        return z2();
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        c10391yD.a(this);
        return null;
    }
}
