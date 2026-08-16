package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Collections;

public final class WX extends AbstractC10561zE {

    public static final boolean f45442l = true;

    public final XX f45443k;

    public WX(XX xx, C10340xw0 c10340xw0) {
        super((C10340xw0) null, c10340xw0);
        this.f45443k = xx;
    }

    @Override
    public final String X0() {
        int i10 = VX.f45075a[this.f45443k.ordinal()];
        if (i10 == 1) {
            return "MonitorEnter";
        }
        if (i10 == 2) {
            return "MonitorExit";
        }
        throw new C5417Jv0("Unknown monitor type:" + ((Object) this.f45443k));
    }

    @Override
    public final boolean X1() {
        return this.f45443k == XX.f45732b;
    }

    @Override
    public final C10340xw0 Z0() {
        return (C10340xw0) this.f54321f.get(0);
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof WX) && abstractC10561zE.o0().f45443k == this.f45443k;
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
    public final WX o0() {
        return this;
    }

    @Override
    public final int p2() {
        return 255;
    }

    @Override
    public final int q2() {
        if (f45442l) {
            return 0;
        }
        throw new AssertionError((Object) "Monitor defines no values.");
    }

    @Override
    public final int r2() {
        return 42;
    }

    @Override
    public final boolean t2() {
        return true;
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return false;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        int a10 = c5458Kn.f41765d.a((C10340xw0) this.f54321f.get(0), this.f54322g);
        if (a10 > 255) {
            a10 = c5458Kn.f41765d.b((C10340xw0) this.f54321f.get(0), this.f54322g);
        }
        if (this.f45443k == XX.f45732b) {
            c5458Kn.a(this, new C5116Eq(a10));
        } else {
            c5458Kn.a(this, new C5174Fq(a10));
        }
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C10340xw0 c10340xw0) {
        return ((C10340xw0) this.f54321f.get(0)) == c10340xw0;
    }

    @Override
    public final void a(NT nt) {
        nt.a(this);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new C9438sa(this.f45443k), this);
    }

    @Override
    public final void a(PS ps) {
        XX xx = this.f45443k;
        C10340xw0 c10340xw0 = (C10340xw0) this.f54321f.get(0);
        ps.getClass();
        ps.a(xx == XX.f45732b ? 194 : 195, Collections.EMPTY_LIST, Collections.singletonList(c10340xw0));
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.f54787d;
    }
}
