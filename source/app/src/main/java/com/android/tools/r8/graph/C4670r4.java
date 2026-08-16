package com.android.tools.r8.graph;

import java.util.ArrayList;
import java.util.function.BiFunction;

public final class C4670r4 implements BiFunction {

    public final C4595n4 f37701a;

    public int f37702b = 0;

    public C4670r4(C4595n4 c4595n4) {
        this.f37701a = c4595n4;
    }

    @Override
    public final Object apply(Object obj, Object obj2) {
        ArrayList arrayList = this.f37701a.f37510c;
        int i10 = this.f37702b;
        this.f37702b = i10 + 1;
        return ((AbstractC4497i0) arrayList.get(i10)).n0();
    }
}
