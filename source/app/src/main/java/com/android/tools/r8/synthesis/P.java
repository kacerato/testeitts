package com.android.tools.r8.synthesis;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.J2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.R00;
import com.android.tools.r8.synthesis.S;
import java.util.function.Function;

public final class P extends AbstractC11547a0 implements InterfaceC11576k {

    public static final boolean f58133e = true;

    public final A2 f58134d;

    public P(S.b bVar, C11579l c11579l, A2 a22) {
        super(bVar, c11579l);
        this.f58134d = a22;
    }

    @Override
    public final AbstractC11602t a(Function function) {
        com.android.tools.r8.graph.E0 e02 = (com.android.tools.r8.graph.E0) function.apply(this.f58134d.f38297f);
        if (e02 == null) {
            return null;
        }
        if (!f58133e && !e02.e0()) {
            throw new AssertionError();
        }
        H5 e10 = e02.d0().e(this.f58134d);
        if (e10 != null) {
            return new O(this.f58222a, this.f58223b, e10);
        }
        return null;
    }

    @Override
    public final J2 b() {
        return this.f58134d;
    }

    @Override
    public final M2 getHolder() {
        return this.f58134d.f38297f;
    }

    @Override
    public final AbstractC11547a0 a(C11579l c11579l, R00 r00) {
        A2 a22 = this.f58134d;
        r00.getClass();
        A2 d10 = r00.d(AbstractC5308Hz.g(), a22);
        if (this.f58134d.s0() == d10.s0() || r00.a(this.f58134d, d10)) {
            return (c11579l == this.f58223b && d10 == this.f58134d) ? this : new P(this.f58222a, c11579l, d10);
        }
        if (f58133e) {
            return null;
        }
        M2 m22 = d10.f38297f;
        boolean z10 = S.f58147a0;
        S.a(m22.V0());
        return null;
    }
}
