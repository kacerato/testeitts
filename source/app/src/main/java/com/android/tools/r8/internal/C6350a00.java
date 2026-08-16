package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4709t5;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;

public final class C6350a00 extends AbstractC7173ex0 {

    public final AbstractC4709t5 f46393b;

    public C6350a00(C4798y c4798y) {
        this.f46393b = ((C11245i) c4798y.f()).f57405t;
    }

    @Override
    public final boolean a(C8340lx0 c8340lx0) {
        return !this.f46393b.c(c8340lx0.f50154b);
    }

    @Override
    public final String f() {
        return "NoDirectlyInstantiatedClassesPolicy";
    }
}
