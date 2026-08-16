package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public abstract class AbstractC5746Pm0 extends F1 implements SD {

    public static final boolean f43366b = true;

    public abstract boolean a(C4798y c4798y);

    public abstract boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52);

    public abstract AbstractC10561zE[] a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, InterfaceC10674zw0 interfaceC10674zw0, DV dv);

    @Override
    public final boolean b0() {
        return true;
    }

    @Override
    public abstract AbstractC5746Pm0 b(C4798y c4798y, com.android.tools.r8.graph.M2 m22, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2);

    public abstract boolean i0();

    @Override
    public final boolean r() {
        return true;
    }

    @Override
    public final AbstractC5746Pm0 w() {
        return this;
    }

    public final boolean b(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        if (!c4798y.m()) {
            return true;
        }
        if (!f43366b && !c4798y.f().h()) {
            throw new AssertionError();
        }
        C4798y L10 = c4798y.L();
        return a(L10, h52) && G2.a(this, h52.d().f37322o, L10);
    }
}
