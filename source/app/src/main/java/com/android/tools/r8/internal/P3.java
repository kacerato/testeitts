package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Collections;

public class P3 extends AbstractC10561zE {
    public P3(C10340xw0 c10340xw0, C10340xw0 c10340xw02) {
        super(c10340xw0, c10340xw02);
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
        return abstractC10561zE instanceof P3;
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
        return 15;
    }

    @Override
    public final int q2() {
        return 15;
    }

    @Override
    public final int r2() {
        return 7;
    }

    @Override
    public final boolean t2() {
        return true;
    }

    @Override
    public final P3 z() {
        return this;
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return false;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        c5458Kn.a(this, new C9477sn(c5458Kn.f41765d.b(this.f54320e, this.f54322g), c5458Kn.f41765d.b((C10340xw0) this.f54321f.get(0), this.f54322g)));
    }

    @Override
    public final void a(PS ps) {
        C10340xw0 c10340xw0 = (C10340xw0) this.f54321f.get(0);
        ps.getClass();
        ps.a(190, Collections.EMPTY_LIST, Collections.singletonList(c10340xw0));
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        return ((C10340xw0) this.f54321f.get(0)).f53896m.v();
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C10340xw0 c10340xw0) {
        return ((C10340xw0) this.f54321f.get(0)) == c10340xw0;
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.f54787d;
    }

    @Override
    public final boolean a(AbstractC10561zE abstractC10561zE, InterfaceC5381Je0 interfaceC5381Je0, EW ew) {
        return super.a(abstractC10561zE, interfaceC5381Je0, ew) && ((C10340xw0) this.f54321f.get(0)) == ((C10340xw0) abstractC10561zE.z().f54321f.get(0));
    }

    @Override
    public final void a(NT nt) {
        nt.a(this);
        nt.b(this);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new W8(), this);
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        return AbstractC8999pu0.k();
    }
}
