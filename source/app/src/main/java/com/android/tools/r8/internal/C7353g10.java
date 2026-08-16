package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11297l1;

public final class C7353g10 extends AbstractC10644zm0 {

    public final C4798y f48168b;

    public C7353g10(C4798y c4798y) {
        this.f48168b = c4798y;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        C11297l1 a10 = this.f48168b.r().a(h22);
        C8570nJ E10 = this.f48168b.E();
        return a10.c(E10) && a10.e(E10) && a10.f57494l;
    }

    @Override
    public final String f() {
        return "NotMatchedByNoHorizontalClassMerging";
    }
}
