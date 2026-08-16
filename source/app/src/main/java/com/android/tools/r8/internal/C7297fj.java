package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4798y;

public final class C7297fj extends AbstractC10561zE {

    public static final boolean f48075m = true;

    public final C6899dH f48076k;

    public final C6899dH f48077l;

    public C7297fj(C6899dH c6899dH, C6899dH c6899dH2) {
        super(null);
        if (!f48075m && c6899dH.isEmpty() && c6899dH2.isEmpty()) {
            throw new AssertionError();
        }
        this.f48076k = c6899dH;
        this.f48077l = c6899dH2;
    }

    @Override
    public final C7297fj M() {
        return this;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        if (!(abstractC10561zE instanceof C7297fj)) {
            return false;
        }
        C7297fj M10 = abstractC10561zE.M();
        return C4515j0.a(this.f48076k, M10.f48076k) && C4515j0.a(this.f48077l, M10.f48077l);
    }

    @Override
    public final boolean d1() {
        return true;
    }

    @Override
    public final boolean i1() {
        return true;
    }

    @Override
    public final int p2() {
        throw new C5417Jv0();
    }

    @Override
    public final int q2() {
        throw new C5417Jv0();
    }

    @Override
    public final int r2() {
        return 18;
    }

    @Override
    public final String toString() {
        StringBuilder sb2 = new StringBuilder(super.toString());
        sb2.append("ending: ");
        C10656zq0.a(sb2, this.f48076k.c());
        sb2.append(", starting: ");
        C10656zq0.a(sb2, this.f48077l.c());
        return sb2.toString();
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return false;
    }

    public final boolean a(SG sg2) {
        WG wg2 = new WG(((C6399aH) this.f48076k.c()).f46484b);
        boolean z10 = false;
        while (wg2.hasNext()) {
            RG rg2 = (RG) wg2.next();
            if (!f48075m && sg2.get(rg2.a()) != rg2.getValue()) {
                throw new AssertionError();
            }
            if (sg2.remove(rg2.a()) != null) {
                z10 = true;
            }
        }
        WG wg3 = new WG(((C6399aH) this.f48077l.c()).f46484b);
        while (wg3.hasNext()) {
            RG rg3 = (RG) wg3.next();
            if (!f48075m && sg2.a(rg3.a())) {
                throw new AssertionError();
            }
            C4515j0 c4515j0 = (C4515j0) sg2.a(rg3.a(), (C4515j0) rg3.getValue());
            z10 |= c4515j0 == null || c4515j0 != rg3.getValue();
        }
        return z10;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        c5458Kn.getClass();
        c5458Kn.a(this, new C4878An(this));
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.f54787d;
    }

    @Override
    public final com.android.tools.r8.ir.optimize.E a(C4798y c4798y, C7215fB c7215fB) {
        return com.android.tools.r8.ir.optimize.E.f54734b;
    }

    @Override
    public final void a(NT nt) {
        throw new C5417Jv0();
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        throw new C5417Jv0();
    }

    @Override
    public final void a(PS ps) {
        throw new C5417Jv0();
    }
}
