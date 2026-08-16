package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11447u;
import java.util.Collections;
import java.util.Set;

public class C5576Mo0 extends AbstractC7670hw implements InterfaceC7169ew {

    public static final boolean f42407m = true;

    public C5576Mo0(C4554l1 c4554l1, C10340xw0 c10340xw0) {
        super(c4554l1, c10340xw0, Collections.singletonList(null));
    }

    public static C5576Mo0 a(C7215fB c7215fB, C5576Mo0 c5576Mo0) {
        C10340xw0 a10 = c7215fB.a(c5576Mo0.a(), c5576Mo0.q());
        if (f42407m || a10 != c5576Mo0.d()) {
            return new C5576Mo0(c5576Mo0.getField(), a10);
        }
        throw new AssertionError();
    }

    @Override
    public final boolean D1() {
        return true;
    }

    @Override
    public final C5576Mo0 K0() {
        return this;
    }

    @Override
    public final InterfaceC7169ew R() {
        return this;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        if (!(abstractC10561zE instanceof C5576Mo0)) {
            return false;
        }
        C5576Mo0 K02 = abstractC10561zE.K0();
        return K02.getField() == getField() && K02.u2() == u2();
    }

    @Override
    public final boolean g1() {
        return true;
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
        return 59;
    }

    @Override
    public final String toString() {
        return super.toString() + "; field: " + getField().j0();
    }

    @Override
    public final C10340xw0 value() {
        return this.f54320e;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        AbstractC5635Np c6159Wr;
        int b10 = c5458Kn.f41765d.b(this.f54320e, this.f54322g);
        C4554l1 field = getField();
        switch (u2().ordinal()) {
            case 0:
                c6159Wr = new C6159Wr(b10, field);
                break;
            case 1:
                c6159Wr = new C5987Tr(b10, field);
                break;
            case 2:
                c6159Wr = new C6045Ur(b10, field);
                break;
            case 3:
                c6159Wr = new C6102Vr(b10, field);
                break;
            case 4:
                c6159Wr = new C6273Yr(b10, field);
                break;
            case 5:
            case 6:
                c6159Wr = new C5929Sr(b10, field);
                break;
            case 7:
            case 8:
                c6159Wr = new C6330Zr(b10, field);
                break;
            default:
                throw new C5417Jv0("Unexpected type: " + ((Object) u2()));
        }
        c5458Kn.a(this, c6159Wr);
    }

    @Override
    public final boolean a(C4798y c4798y, C10340xw0 c10340xw0) {
        boolean z10 = f42407m;
        if (!z10 && (c10340xw0 == null || !c10340xw0.u().y())) {
            throw new AssertionError();
        }
        if (!z10 && this.f54320e == null) {
            throw new AssertionError();
        }
        AbstractC8999pu0 u10 = this.f54320e.u();
        if (u10.x()) {
            return false;
        }
        if (c4798y.f().i() && u10.s() && c10340xw0.u().s() && c4798y.f().m().a(u10.b().E(), c10340xw0.u().b().E())) {
            return false;
        }
        return u10.y();
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return x10.a(getField(), h52);
    }

    @Override
    public final void a(NT nt) {
        nt.b(this);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new C9942vb(getField()), this);
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4798y c4798y, C5473Ku0 c5473Ku0) {
        return getField().f37449i;
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        return AbstractC8999pu0.a(getField().f37449i, C8854p10.h(), (C4798y<?>) c4798y);
    }

    @Override
    public final boolean a(Set set) {
        return getField().f37449i.F0();
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.M2 m22 = getField().f38297f;
        if (c4798y.m()) {
            return m22.a(c4798y, h52);
        }
        return m22 != h52.p();
    }

    @Override
    public final void a(C11447u c11447u) {
        c11447u.a((com.android.tools.r8.graph.J2) getField());
    }

    @Override
    public final void a(PS ps) {
        C4554l1 field = getField();
        ps.getClass();
        ps.a(178, Collections.singletonList(field), Collections.EMPTY_LIST);
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        c10391yD.a(this);
        return null;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52, C4798y c4798y, int i10, int i11) {
        return AbstractC5663Oc.b(this, m22, c4798y, i10, i11);
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        if (c4798y.f38412e.a(getField()).f40089c) {
            return false;
        }
        return super.a(c4798y, h52, m12, c10394yE);
    }
}
