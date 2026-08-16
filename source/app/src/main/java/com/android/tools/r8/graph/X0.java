package com.android.tools.r8.graph;

import com.android.tools.r8.AbstractC4291c;
import com.android.tools.r8.dex.C4320u;
import com.android.tools.r8.graph.O0;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC5754Pq0;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.BR;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C9380sA;
import com.android.tools.r8.internal.C9547tA;
import java.util.Objects;
import java.util.function.ToIntFunction;

public final class X0 extends W0 implements Z0 {

    public static final boolean f36946g = true;

    public final int f36947e;

    public final int f36948f;

    public X0(int i10, int i11) {
        this.f36947e = i10;
        this.f36948f = i11;
    }

    @Override
    public final W0 E() {
        return this;
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10) {
    }

    @Override
    public final int h0() {
        int i10 = this.f36947e;
        return (BR.d(0) * i10) + BR.d(i10) + BR.d(1) + 1 + this.f36948f + 1;
    }

    @Override
    public final int k0() {
        return Objects.hash(Integer.valueOf(this.f36947e), Integer.valueOf(this.f36948f));
    }

    @Override
    public final X0 m0() {
        return this;
    }

    @Override
    public final int n0() {
        return 2;
    }

    @Override
    public final int o0() {
        return this.f36947e;
    }

    @Override
    public final int p0() {
        return 1;
    }

    @Override
    public final W0 E() {
        return this;
    }

    public final String toString() {
        return "PcBasedDebugInfo (params: " + this.f36947e + ", max-pc: " + C10656zq0.a(this.f36948f, 2) + ")";
    }

    @Override
    public final int a(W0 w02, AbstractC8953pf abstractC8953pf) {
        W0 w03 = w02;
        int a10 = abstractC8953pf.a(AbstractC4291c.b(2), AbstractC4291c.b(w03.n0()));
        return a10 != 0 ? a10 : a(w03, abstractC8953pf);
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((X0) obj).f36947e;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((X0) obj).f36948f;
                return i10;
            }
        });
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        Pb pb2 = new Pb();
        C9547tA c9547tA = (C9547tA) abstractC9213rA;
        c9547tA.getClass();
        pb2.a(new C9380sA(this, c9547tA));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public final int a(W0 w02, AbstractC8953pf abstractC8953pf) {
        if (f36946g || w02.r0()) {
            return abstractC8953pf.a(this, w02.m0(), new Pb());
        }
        throw new AssertionError();
    }

    @Override
    public final void a(com.android.tools.r8.dex.X x10) {
        x10.a(this);
    }

    @Override
    public final void a(C4320u c4320u, C4766w5 c4766w5, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2) {
        c4320u.c(1);
        c4320u.c(this.f36947e);
        for (int i10 = 0; i10 < this.f36947e; i10++) {
            c4320u.c(0);
        }
        O0.b bVar = c4766w5.f38335b.b().f38137r;
        if (!O0.f36661c) {
            bVar.getClass();
        }
        bVar.a(c4320u, abstractC5308Hz, abstractC5308Hz2);
        for (int i11 = 0; i11 < this.f36948f; i11++) {
            O0.b bVar2 = c4766w5.f38335b.b().f38145s;
            if (!O0.f36661c) {
                bVar2.getClass();
            }
            bVar2.a(c4320u, abstractC5308Hz, abstractC5308Hz2);
        }
        c4320u.b(0);
    }
}
