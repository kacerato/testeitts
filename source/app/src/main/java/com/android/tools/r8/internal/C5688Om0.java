package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public class C5688Om0 extends AbstractC4935Bm0 {

    public static final boolean f43028d = true;

    public final com.android.tools.r8.graph.L2 f43029c;

    public C5688Om0(com.android.tools.r8.graph.L2 l22) {
        this.f43029c = l22;
    }

    @Override
    public final C5688Om0 P() {
        return this;
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
    public final boolean g0() {
        return true;
    }

    @Override
    public final int hashCode() {
        return this.f43029c.hashCode();
    }

    @Override
    public final boolean i0() {
        return true;
    }

    public com.android.tools.r8.graph.L2 j0() {
        return this.f43029c;
    }

    @Override
    public final String toString() {
        return "SingleStringValue(" + ((Object) this.f43029c) + ")";
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
        C6949de a10 = AbstractC8999pu0.a((C4798y<?>) c4798y, C8854p10.b());
        boolean z10 = f43028d;
        if (!z10 && !a10.a(dv.a(), (C4798y<?>) c4798y)) {
            throw new AssertionError();
        }
        boolean z11 = C9960vh.f53189m;
        C9793uh c9793uh = new C9793uh();
        c9793uh.f52321a = interfaceC10674zw0.a(a10, dv.q());
        c9793uh.f52322b = dv.getPosition();
        c9793uh.f52917d = this.f43029c;
        C9960vh c9960vh = new C9960vh(c9793uh.f52321a, c9793uh.f52917d);
        B60 b60 = c9793uh.f52322b;
        if (b60 != null) {
            c9960vh.b(b60);
        }
        if (!z10) {
            M1.a(c4798y, h52);
            if (c9960vh.v2()) {
                throw new AssertionError();
            }
        }
        return new AbstractC10561zE[]{c9960vh};
    }
}
