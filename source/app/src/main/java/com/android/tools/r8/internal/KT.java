package com.android.tools.r8.internal;

import com.android.tools.r8.ir.optimize.C10696a;
import java.util.List;

public final class KT implements InterfaceC6534b6 {

    public static final boolean f41676d = true;

    public final C9202r60 f41677a;

    public final C9202r60 f41678b;

    public final V50 f41679c;

    public KT() {
        C9202r60 c9202r60 = new C9202r60(U50.a(new C9741uK0()));
        this.f41677a = c9202r60;
        C9202r60 c9202r602 = new C9202r60(U50.a(new C9741uK0()));
        this.f41678b = c9202r602;
        this.f41679c = new V50(true, c9202r60, c9202r602);
    }

    @Override
    public final boolean a(C7920jS c7920jS) {
        C10430yV a10 = this.f41679c.a(c7920jS);
        if (a10 == null) {
            return false;
        }
        C9202r60 c9202r60 = this.f41677a;
        c9202r60.getClass();
        JT m02 = ((AbstractC10561zE) ((List) a10.f54035a.get(c9202r60.f51967b)).get(0)).m0();
        C9202r60 c9202r602 = this.f41678b;
        c9202r602.getClass();
        JT m03 = ((AbstractC10561zE) ((List) a10.f54035a.get(c9202r602.f51967b)).get(0)).m0();
        if (((C10340xw0) m03.f54321f.get(0)) != ((C10340xw0) m02.f54321f.get(0))) {
            return false;
        }
        boolean z10 = f41676d;
        if (!z10 && ((C10340xw0) m03.f54321f.get(0)).z()) {
            throw new AssertionError();
        }
        if (!z10 && ((C10340xw0) m02.f54321f.get(0)).z()) {
            throw new AssertionError();
        }
        C8146ko0 c8146ko0 = (C8146ko0) m03.d();
        c8146ko0.f53887d.remove(m02);
        c8146ko0.f53888e = null;
        int i10 = c8146ko0.f49762p;
        C8146ko0 c8146ko02 = new C8146ko0(c8146ko0.f49763q, c8146ko0.u(), i10);
        C8146ko0 c8146ko03 = new C8146ko0(c8146ko0.f49763q, c8146ko0.u(), i10 + 1);
        m03.d().f(c8146ko02);
        m02.d().f(c8146ko03);
        c7920jS.a(new C9662tt(c8146ko02, c8146ko03, c8146ko0), (C10696a) null);
        return true;
    }
}
