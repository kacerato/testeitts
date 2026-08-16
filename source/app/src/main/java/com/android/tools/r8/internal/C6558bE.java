package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11447u;
import java.util.Collections;
import java.util.Set;

public class C6558bE extends AbstractC7670hw implements InterfaceC7169ew, WD {

    public static final boolean f46731m = true;

    public C6558bE(C10340xw0 c10340xw0, C10340xw0 c10340xw02, C4554l1 c4554l1) {
        super(c4554l1, c10340xw0, Collections.singletonList(c10340xw02));
    }

    @Override
    public final InterfaceC7169ew R() {
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
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        if (!(abstractC10561zE instanceof C6558bE)) {
            return false;
        }
        C6558bE c10 = abstractC10561zE.c();
        return c10.getField() == getField() && c10.u2() == u2();
    }

    @Override
    public final C6558bE c() {
        return this;
    }

    @Override
    public final boolean g1() {
        return true;
    }

    @Override
    public final C10340xw0 n() {
        if (f46731m || this.f54321f.size() == 1) {
            return (C10340xw0) this.f54321f.get(0);
        }
        throw new AssertionError();
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
        return 15;
    }

    @Override
    public final int r2() {
        return 28;
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
    public final C10340xw0 value() {
        return this.f54320e;
    }

    public static C6558bE a(C7215fB c7215fB, C6558bE c6558bE) {
        C10340xw0 a10 = c7215fB.a(c6558bE.a(), c6558bE.q());
        if (!f46731m && a10 == c6558bE.d()) {
            throw new AssertionError();
        }
        C6391aE c6391aE = new C6391aE();
        c6391aE.f46474d = c6558bE.getField();
        C10340xw0 n10 = c6558bE.n();
        c6391aE.f52321a = a10;
        C6558bE c6558bE2 = new C6558bE(a10, n10, c6391aE.f46474d);
        B60 b60 = c6391aE.f52322b;
        if (b60 != null) {
            c6558bE2.b(b60);
        }
        return c6558bE2;
    }

    @Override
    public final boolean a(Set set) {
        return getField().f37449i.F0();
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        AbstractC5635Np c5288Hp;
        int b10 = c5458Kn.f41765d.b(this.f54320e, this.f54322g);
        int b11 = c5458Kn.f41765d.b(n(), this.f54322g);
        C4554l1 field = getField();
        switch (u2().ordinal()) {
            case 0:
                c5288Hp = new C5288Hp(b10, b11, field);
                break;
            case 1:
                c5288Hp = new C5114Ep(b10, b11, field);
                break;
            case 2:
                c5288Hp = new C5172Fp(b10, b11, field);
                break;
            case 3:
                c5288Hp = new C5230Gp(b10, b11, field);
                break;
            case 4:
                c5288Hp = new C5462Kp(b10, b11, field);
                break;
            case 5:
            case 6:
                c5288Hp = new C5056Dp(b10, b11, field);
                break;
            case 7:
            case 8:
                c5288Hp = new C5520Lp(b10, b11, field);
                break;
            default:
                throw new C5417Jv0("Unexpected type: " + ((Object) u2()));
        }
        c5458Kn.a(this, c5288Hp);
    }

    @Override
    public final boolean a(C4798y c4798y, C10340xw0 c10340xw0) {
        boolean z10 = f46731m;
        if (!z10 && (c10340xw0 == null || !c10340xw0.u().y())) {
            throw new AssertionError();
        }
        if (z10 || this.f54320e != null) {
            return this.f54320e.u().y();
        }
        throw new AssertionError();
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return x10.a(getField(), h52);
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        c10391yD.a(this);
        return null;
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        return AbstractC8999pu0.a(getField().f37449i, C8854p10.h(), (C4798y<?>) c4798y);
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4798y c4798y, C5473Ku0 c5473Ku0) {
        return getField().f37449i;
    }

    @Override
    public final void a(NT nt) {
        nt.a(this);
        nt.b(this);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new T9(getField()), this);
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C10340xw0 c10340xw0) {
        return n() == c10340xw0;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52, C4798y c4798y, int i10, int i11) {
        return AbstractC5663Oc.a(this, m22, c4798y, i10, i11);
    }

    @Override
    public final void a(C11447u c11447u) {
        c11447u.a((com.android.tools.r8.graph.J2) getField());
    }

    @Override
    public final void a(PS ps) {
        C4554l1 field = getField();
        C10340xw0 n10 = n();
        ps.getClass();
        ps.a(180, Collections.singletonList(field), Collections.singletonList(n10));
    }
}
