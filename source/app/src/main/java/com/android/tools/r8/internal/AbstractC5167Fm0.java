package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Predicate;

public abstract class AbstractC5167Fm0 extends AbstractC5746Pm0 {

    public static final boolean f40305d = true;

    public final C4554l1 f40306c;

    public AbstractC5167Fm0(C4554l1 c4554l1) {
        this.f40306c = c4554l1;
    }

    @Override
    public final AbstractC5167Fm0 N() {
        return this;
    }

    @Override
    public abstract Q30 U();

    @Override
    public final SD a(com.android.tools.r8.graph.proto.c cVar) {
        return this;
    }

    @Override
    public final AbstractC5746Pm0 b(C4798y c4798y, com.android.tools.r8.graph.M2 m22, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        G1 g12 = c4798y.f38427t;
        if (c4798y.I().b(this.f40306c)) {
            return g12.a(r0.a(this.f40306c), AbstractC8999pu0.k());
        }
        C4554l1 e10 = abstractC5308Hz.e(abstractC5308Hz2, this.f40306c);
        Q30 a10 = U().a(c4798y, abstractC5308Hz, abstractC5308Hz2);
        if (e10 == this.f40306c && a10 == U()) {
            return this;
        }
        g12.getClass();
        return a10.e() ? new C5630Nm0(e10) : new C5572Mm0(e10, a10);
    }

    @Override
    public final boolean f0() {
        return true;
    }

    @Override
    public final boolean i0() {
        return true;
    }

    @Override
    public final AbstractC10561zE[] a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, InterfaceC10674zw0 interfaceC10674zw0, DV dv) {
        AbstractC8999pu0 a10 = AbstractC8999pu0.a(this.f40306c.getType(), C8854p10.h(), (C4798y<?>) c4798y);
        if (!f40305d && !a10.a(dv.a(), (C4798y<?>) c4798y) && c4798y.m() && !a10.a(c4798y.L())) {
            throw new AssertionError();
        }
        boolean z10 = C5576Mo0.f42407m;
        C5519Lo0 c5519Lo0 = new C5519Lo0();
        c5519Lo0.f42081d = this.f40306c;
        c5519Lo0.f52321a = interfaceC10674zw0.a(a10, dv.q());
        c5519Lo0.f52322b = dv.getPosition();
        C5576Mo0 c5576Mo0 = new C5576Mo0(c5519Lo0.f42081d, c5519Lo0.f52321a);
        B60 b60 = c5519Lo0.f52322b;
        if (b60 != null) {
            c5576Mo0.b(b60);
        }
        return new AbstractC10561zE[]{c5576Mo0};
    }

    @Override
    public final boolean a(final C4798y c4798y, final com.android.tools.r8.graph.H5 h52) {
        final com.android.tools.r8.graph.D3 c10 = ((C4514j) c4798y.f()).c(this.f40306c);
        Objects.requireNonNull(c10);
        return AbstractC6228Xx.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.graph.D3.this.a((Consumer<com.android.tools.r8.graph.D3>) obj);
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AbstractC5167Fm0.a(com.android.tools.r8.graph.H5.this, c4798y, (com.android.tools.r8.graph.D3) obj);
            }
        });
    }

    public static boolean a(com.android.tools.r8.graph.H5 h52, C4798y c4798y, com.android.tools.r8.graph.D3 d32) {
        if (d32.x()) {
            return false;
        }
        return d32.a(h52, c4798y).d();
    }

    @Override
    public final boolean a(C4798y c4798y) {
        C4460g1 q10 = ((C11245i) c4798y.f()).c(this.f40306c).q();
        if (q10 == null) {
            if (f40305d) {
                return false;
            }
            throw new AssertionError();
        }
        if (!q10.H0()) {
            return false;
        }
        com.android.tools.r8.graph.E0 g10 = c4798y.g(q10.B0());
        if (g10 == null) {
            if (f40305d) {
                return false;
            }
            throw new AssertionError();
        }
        if (!g10.w1()) {
            return false;
        }
        ((C11245i) c4798y.f()).getClass();
        if (g10.e0() && C6300Zd.a(g10.d0(), c4798y)) {
            return false;
        }
        return G2.a(this, c4798y.f38405T, c4798y);
    }
}
