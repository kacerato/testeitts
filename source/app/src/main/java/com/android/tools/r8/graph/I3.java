package com.android.tools.r8.graph;

import com.android.tools.r8.graph.H3;

public final class I3 extends H3.i {

    public static final boolean f36442b = true;

    public final M2 f36443a;

    public I3(M2 m22) {
        boolean z10 = f36442b;
        if (!z10 && m22 == null) {
            throw new AssertionError();
        }
        if (!z10 && !m22.P0()) {
            throw new AssertionError((Object) m22.V0());
        }
        this.f36443a = m22;
    }

    @Override
    public final I3 c() {
        return this;
    }

    @Override
    public final H3.a f() {
        if (f36442b || !this.f36443a.S0()) {
            return new H3.a(this, H3.k.f36403b);
        }
        throw new AssertionError();
    }
}
