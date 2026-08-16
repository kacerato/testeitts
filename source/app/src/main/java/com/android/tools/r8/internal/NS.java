package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import java.util.Arrays;

public final class NS extends KS {

    public final C4554l1[] f42600b;

    public NS(C4554l1[] c4554l1Arr) {
        this.f42600b = c4554l1Arr;
    }

    @Override
    public final int R() {
        return 12;
    }

    @Override
    public final int a(YS ys, AbstractC8953pf abstractC8953pf) {
        C4554l1[] c4554l1Arr = this.f42600b;
        C4554l1[] c4554l1Arr2 = ((NS) ys).f42600b;
        abstractC8953pf.getClass();
        return abstractC8953pf.a(Arrays.asList(c4554l1Arr), Arrays.asList(c4554l1Arr2));
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        C4554l1[] c4554l1Arr = this.f42600b;
        abstractC9213rA.getClass();
        abstractC9213rA.a(Arrays.asList(c4554l1Arr));
    }
}
