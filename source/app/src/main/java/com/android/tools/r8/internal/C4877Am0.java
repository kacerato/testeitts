package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4420e;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;

public final class C4877Am0 extends AbstractC4935Bm0 {

    public static final boolean f38715d = true;

    public final com.android.tools.r8.graph.M2 f38716c;

    public C4877Am0(com.android.tools.r8.graph.M2 m22) {
        this.f38716c = m22;
    }

    @Override
    public final C4877Am0 K() {
        return this;
    }

    @Override
    public final SD a(com.android.tools.r8.graph.proto.c cVar) {
        return this;
    }

    @Override
    public final AbstractC5746Pm0 b(C4798y c4798y, com.android.tools.r8.graph.M2 m22, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        if (f38715d || abstractC5308Hz.c(abstractC5308Hz2, this.f38716c) == this.f38716c) {
            return this;
        }
        throw new AssertionError();
    }

    @Override
    public final boolean equals(Object obj) {
        return this == obj;
    }

    @Override
    public final int hashCode() {
        return this.f38716c.hashCode();
    }

    @Override
    public final boolean i0() {
        return true;
    }

    @Override
    public final String toString() {
        return "SingleConstClassValue(" + this.f38716c.j0() + ")";
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0075, code lost:
    
        if (r10 == r8.p()) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a9, code lost:
    
        if (com.android.tools.r8.graph.AbstractC4420e.a(r10, r8, r1, (com.android.tools.r8.graph.C4514j) r1.f()).b() == false) goto L36;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC10561zE[] a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, InterfaceC10674zw0 interfaceC10674zw0, DV dv) {
        C4515j0 q10 = dv.q();
        C8854p10 b10 = C8854p10.b();
        boolean z10 = AbstractC8999pu0.f51660a;
        C6949de b11 = AbstractC8999pu0.a(c4798y.b().f38180w2, b10, (C4798y<?>) c4798y).b();
        boolean z11 = f38715d;
        if (!z11 && !b11.a(dv.a(), (C4798y<?>) c4798y)) {
            throw new AssertionError();
        }
        boolean z12 = C7957jh.f49302n;
        C7791ih c7791ih = new C7791ih();
        c7791ih.f52321a = interfaceC10674zw0.a(b11, q10);
        c7791ih.f52322b = dv.getPosition();
        c7791ih.f49020d = this.f38716c;
        C7957jh c7957jh = new C7957jh(c7791ih.f52321a, c7791ih.f49020d, false);
        B60 b60 = c7791ih.f52322b;
        if (b60 != null) {
            c7957jh.b(b60);
        }
        if (!z11) {
            M1.a(c4798y, h52);
            com.android.tools.r8.graph.M2 a10 = c7957jh.f49303l.a(c4798y.b());
            if (!a10.P0()) {
                if (c4798y.m()) {
                    if (!z12 && !c4798y.f().h()) {
                        throw new AssertionError();
                    }
                    C4798y L10 = c4798y.L();
                    com.android.tools.r8.graph.E0 g10 = c4798y.g(a10);
                    if (g10 != null) {
                        if (g10.d(c4798y)) {
                        }
                    }
                    throw new AssertionError();
                }
            }
        }
        return new AbstractC10561zE[]{c7957jh};
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.M2 a10 = this.f38716c.a(c4798y.b());
        if (a10.I0()) {
            com.android.tools.r8.graph.E0 g10 = c4798y.g(a10);
            return g10 != null && g10.d(c4798y) && AbstractC4420e.a(g10, h52, c4798y, (C4514j) c4798y.f()).d();
        }
        if (f38715d || a10.P0()) {
            return true;
        }
        throw new AssertionError();
    }

    @Override
    public final boolean a(C4798y c4798y) {
        com.android.tools.r8.graph.M2 a10 = this.f38716c.a(c4798y.b());
        if (a10.P0()) {
            return true;
        }
        if (!f38715d && !a10.I0()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.E0 g10 = c4798y.g(a10);
        if (g10 == null || !g10.w1() || !g10.d(c4798y)) {
            return false;
        }
        ((C11245i) c4798y.f()).getClass();
        if (g10.e0() && C6300Zd.a(g10.d0(), c4798y)) {
            return false;
        }
        return G2.a(this, c4798y.f38405T, c4798y);
    }
}
