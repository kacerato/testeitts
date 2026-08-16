package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Collections;

public final class C5800Qk0 extends C7942jc {

    public static final int f43725n = 0;

    public C5800Qk0(C10340xw0 c10340xw0, C10340xw0 c10340xw02, com.android.tools.r8.graph.M2 m22) {
        super(c10340xw0, c10340xw02, m22);
    }

    @Override
    public final C5800Qk0 H0() {
        return this;
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        return false;
    }

    @Override
    public final C5516Ln b(int i10) {
        return new C5871Rr(i10, this.f49274k);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new C6773cb(this.f49274k), this);
    }

    @Override
    public final void a(PS ps) {
        com.android.tools.r8.graph.M2 m22 = this.f49274k;
        C10340xw0 n10 = n();
        ps.getClass();
        ps.a(224, Collections.singletonList(m22), Collections.singletonList(n10));
    }
}
