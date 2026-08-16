package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11447u;
import java.util.Arrays;
import java.util.Collections;

public class C9225rE extends AbstractC7670hw implements InterfaceC10172ww, WD {

    public static final boolean f52012m = true;

    public C9225rE(C4554l1 c4554l1, C10340xw0 c10340xw0, C10340xw0 c10340xw02, boolean z10) {
        super(c4554l1, null, Arrays.asList(c10340xw0, c10340xw02));
        if (z10) {
            return;
        }
        boolean z11 = f52012m;
        if (!z11) {
            n().a(EnumC5477Kw0.f41824b);
        }
        if (z11) {
            return;
        }
        value().a(EnumC5477Kw0.a(c4554l1.f37449i));
    }

    @Override
    public final boolean J1() {
        return true;
    }

    @Override
    public final InterfaceC10172ww T() {
        return this;
    }

    @Override
    public final WD X() {
        return this;
    }

    @Override
    public final C10340xw0 Z0() {
        return n();
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return false;
    }

    @Override
    public final boolean b(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        if (c4798y.f().i()) {
            C4798y<C11245i> M10 = c4798y.M();
            C11245i f10 = M10.f();
            com.android.tools.r8.graph.D3 c10 = f10.c(getField());
            if (a(c4798y, h52, c10394yE, c10)) {
                return true;
            }
            com.android.tools.r8.graph.F0 p10 = c10.p();
            if (!f52012m && p10 == null) {
                throw new AssertionError((Object) "NoSuchFieldError (resolution failure) should be caught.");
            }
            if (p10.getReference().getType().a(M10) || c4798y.f38412e.a(M10, p10)) {
                return false;
            }
            if (!f10.a(p10) && !a(M10, p10)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final int g() {
        return 1;
    }

    @Override
    public final boolean i() {
        return true;
    }

    @Override
    public final C9225rE m() {
        return this;
    }

    @Override
    public C10340xw0 n() {
        return (C10340xw0) this.f54321f.get(0);
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
        if (f52012m) {
            return 0;
        }
        throw new AssertionError((Object) "InstancePut instructions define no values.");
    }

    @Override
    public final int r2() {
        return 30;
    }

    @Override
    public final boolean t2() {
        return true;
    }

    @Override
    public final String toString() {
        return super.toString() + "; field: " + getField().j0();
    }

    @Override
    public C10340xw0 value() {
        return (C10340xw0) this.f54321f.get(1);
    }

    @Override
    public final void a(C10340xw0 c10340xw0) {
        a(1, c10340xw0);
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        AbstractC5635Np c9319rq;
        int b10 = c5458Kn.f41765d.b(value(), this.f54322g);
        int b11 = c5458Kn.f41765d.b(n(), this.f54322g);
        C4554l1 field = getField();
        switch (u2().ordinal()) {
            case 0:
                c9319rq = new C9319rq(b10, b11, field);
                break;
            case 1:
                c9319rq = new C8819oq(b10, b11, field);
                break;
            case 2:
                c9319rq = new C8986pq(b10, b11, field);
                break;
            case 3:
                c9319rq = new C9153qq(b10, b11, field);
                break;
            case 4:
                c9319rq = new C9486sq(b10, b11, field);
                break;
            case 5:
            case 6:
                c9319rq = new C8652nq(b10, b11, field);
                break;
            case 7:
            case 8:
                c9319rq = new C9653tq(b10, b11, field);
                break;
            default:
                throw new C5417Jv0("Unexpected type: " + ((Object) u2()));
        }
        c5458Kn.a(this, c9319rq);
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        if (!abstractC10561zE.i()) {
            return false;
        }
        C9225rE m10 = abstractC10561zE.m();
        return m10.getField() == getField() && m10.u2() == u2();
    }

    @Override
    public final com.android.tools.r8.ir.optimize.E a(C4798y c4798y, C7215fB c7215fB) {
        if (n().d(new C7680hz0())) {
            com.android.tools.r8.graph.H5 j10 = c7215fB.j();
            if (!a(c4798y, j10, M1.a(c4798y, j10), C10394yE.f53978a)) {
                return new com.android.tools.r8.ir.optimize.D(n());
            }
        }
        return com.android.tools.r8.ir.optimize.E.f54734b;
    }

    @Override
    public final boolean a(AbstractC10561zE abstractC10561zE, InterfaceC5381Je0 interfaceC5381Je0, EW ew) {
        if (!super.a(abstractC10561zE, interfaceC5381Je0, ew)) {
            return false;
        }
        interfaceC5381Je0.e().getClass();
        return !value().u().r() || value() == abstractC10561zE.m().value();
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        c10391yD.a(this);
        return null;
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return x10.a(getField(), h52);
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52, C4798y c4798y, int i10, int i11) {
        return AbstractC5663Oc.a(this, m22, c4798y, i10, i11);
    }

    @Override
    public final void a(NT nt) {
        nt.a(this);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new U9(getField()), this);
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C10340xw0 c10340xw0) {
        return n() == c10340xw0;
    }

    @Override
    public final void a(C11447u c11447u) {
        c11447u.a((com.android.tools.r8.graph.J2) getField());
    }

    @Override
    public final void a(PS ps) {
        C4554l1 field = getField();
        C10340xw0 n10 = n();
        C10340xw0 value = value();
        ps.getClass();
        ps.a(181, Collections.singletonList(field), AbstractC7552hC.a(n10, value));
    }
}
