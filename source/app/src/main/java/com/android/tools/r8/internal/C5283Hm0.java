package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C5283Hm0 extends AbstractC4935Bm0 {

    public static final C5283Hm0 f40867c = new C5283Hm0();

    public static final boolean f40868d = true;

    @Override
    public final C5283Hm0 O() {
        return this;
    }

    @Override
    public final SD a(com.android.tools.r8.graph.proto.c cVar) {
        return this;
    }

    @Override
    public final AbstractC5746Pm0 b(C4798y c4798y, com.android.tools.r8.graph.M2 m22, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        return m22.L0() ? c4798y.f38427t.a() : this;
    }

    @Override
    public final boolean equals(Object obj) {
        return this == obj;
    }

    @Override
    public final int hashCode() {
        return System.identityHashCode(this);
    }

    @Override
    public final boolean i0() {
        return true;
    }

    @Override
    public final String toString() {
        return "SingleNullValue";
    }

    @Override
    public final boolean a(C4798y c4798y) {
        return true;
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return true;
    }

    @Override
    public final AbstractC10561zE[] a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, InterfaceC10674zw0 interfaceC10674zw0, DV dv) {
        return new AbstractC10561zE[]{a(c4798y, interfaceC10674zw0, dv)};
    }

    public final C9126qh a(C4798y c4798y, InterfaceC10674zw0 interfaceC10674zw0, DV dv) {
        if (!f40868d && !dv.a().y()) {
            throw new AssertionError(dv.a());
        }
        boolean z10 = C9126qh.f51850m;
        C8959ph c8959ph = new C8959ph();
        c8959ph.f52321a = interfaceC10674zw0.a(AbstractC8999pu0.m(), dv.q());
        return ((C8959ph) c8959ph.a(dv.getPosition(), c4798y.E())).c();
    }
}
