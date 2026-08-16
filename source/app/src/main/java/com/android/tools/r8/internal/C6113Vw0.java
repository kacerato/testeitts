package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C6113Vw0 {

    public static final boolean f45224b = true;

    public final C4798y f45225a;

    public C6113Vw0(C4798y c4798y) {
        this.f45225a = c4798y;
    }

    public final boolean a(AbstractC8999pu0 abstractC8999pu0, AbstractC8999pu0 abstractC8999pu02) {
        if (abstractC8999pu0.x() != abstractC8999pu02.x()) {
            return false;
        }
        if (abstractC8999pu0.x()) {
            if (f45224b || abstractC8999pu02.x()) {
                return abstractC8999pu0.equals(abstractC8999pu02);
            }
            throw new AssertionError();
        }
        boolean z10 = f45224b;
        if (!z10 && (!abstractC8999pu0.y() || !abstractC8999pu02.y())) {
            throw new AssertionError();
        }
        if ((abstractC8999pu0 instanceof C6301Zd0) && abstractC8999pu02.y()) {
            return true;
        }
        if (abstractC8999pu0.r() != abstractC8999pu02.r()) {
            return abstractC8999pu0.r() && abstractC8999pu02.b().E() == this.f45225a.b().f38068i2;
        }
        if (abstractC8999pu0.r()) {
            if (z10 || abstractC8999pu02.r()) {
                return a(abstractC8999pu0.a().F(), abstractC8999pu02.a().F());
            }
            throw new AssertionError();
        }
        if (z10 || (abstractC8999pu0.s() && abstractC8999pu02.s())) {
            return this.f45225a.m() ? abstractC8999pu0.a(abstractC8999pu02, this.f45225a) || abstractC8999pu0.a(this.f45225a.L()) : abstractC8999pu0.b().E() != this.f45225a.b().f38068i2 || abstractC8999pu02.b().E() == this.f45225a.b().f38068i2;
        }
        throw new AssertionError();
    }
}
