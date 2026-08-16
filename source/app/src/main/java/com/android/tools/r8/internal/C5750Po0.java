package com.android.tools.r8.internal;

import java.util.List;

public final class C5750Po0 implements InterfaceC6534b6 {

    public final C9202r60 f43382a;

    public final C9202r60 f43383b;

    public final V50 f43384c;

    public C5750Po0() {
        C9202r60 c9202r60 = new C9202r60(U50.a(new FR0()));
        this.f43382a = c9202r60;
        C9202r60 c9202r602 = new C9202r60(new C9741uK0());
        this.f43383b = c9202r602;
        this.f43384c = new V50(false, c9202r60, c9202r602);
    }

    @Override
    public final boolean a(C7920jS c7920jS) {
        C10430yV a10 = this.f43384c.a(c7920jS);
        if (a10 == null) {
            return false;
        }
        C9202r60 c9202r60 = this.f43382a;
        c9202r60.getClass();
        C5692Oo0 M02 = ((AbstractC10561zE) ((List) a10.f54035a.get(c9202r60.f51967b)).get(0)).M0();
        C9202r60 c9202r602 = this.f43383b;
        c9202r602.getClass();
        JT m02 = ((AbstractC10561zE) ((List) a10.f54035a.get(c9202r602.f51967b)).get(0)).m0();
        if (((C10340xw0) m02.f54321f.get(0)) != M02.d() || M02.d().U() != 1) {
            return false;
        }
        m02.d().f((C10340xw0) M02.f54321f.get(0));
        C10340xw0 c10340xw0 = (C10340xw0) M02.f54321f.get(0);
        c10340xw0.f53887d.remove(M02);
        c10340xw0.f53888e = null;
        C10340xw0 c10340xw02 = (C10340xw0) m02.f54321f.get(0);
        c10340xw02.f53887d.remove(m02);
        c10340xw02.f53888e = null;
        c7920jS.i();
        c7920jS.next();
        c7920jS.i();
        U50.a(c7920jS, 1);
        return true;
    }
}
