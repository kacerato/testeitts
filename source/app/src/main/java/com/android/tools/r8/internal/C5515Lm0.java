package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4798y;

public final class C5515Lm0 extends AbstractC4935Bm0 {

    public static final boolean f42078d = true;

    public final int f42079c;

    public C5515Lm0(int i10) {
        this.f42079c = i10;
    }

    @Override
    public final SD a(com.android.tools.r8.graph.proto.c cVar) {
        return this;
    }

    @Override
    public final F1 b(C4798y c4798y, com.android.tools.r8.graph.M2 m22, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        return this;
    }

    @Override
    public final AbstractC5746Pm0 b(C4798y c4798y, com.android.tools.r8.graph.M2 m22, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        return this;
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
        return "SingleResourceNumberValue(" + this.f42079c + ")";
    }

    @Override
    public final SD b(C4798y c4798y, com.android.tools.r8.graph.M2 m22, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        return this;
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
        AbstractC8999pu0 a10 = dv.a();
        C4515j0 q10 = dv.q();
        B60 position = dv.getPosition();
        if (!f42078d) {
            a10.getClass();
            if (!(a10 instanceof C9736uI)) {
                throw new AssertionError();
            }
        }
        boolean z10 = C5731Pf0.f43305m;
        C5673Of0 c5673Of0 = new C5673Of0();
        c5673Of0.f52321a = interfaceC10674zw0.a(a10, q10);
        C5673Of0 c5673Of02 = (C5673Of0) c5673Of0.a(position, c4798y.E());
        c5673Of02.f42948d = this.f42079c;
        C5731Pf0 c5731Pf0 = new C5731Pf0(c5673Of02.f52321a, c5673Of02.f42948d);
        B60 b60 = c5673Of02.f52322b;
        if (b60 != null) {
            c5731Pf0.b(b60);
        }
        return new AbstractC10561zE[]{c5731Pf0};
    }
}
