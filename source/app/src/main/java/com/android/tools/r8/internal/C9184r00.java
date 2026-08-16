package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;

public final class C9184r00 extends AbstractC7173ex0 {

    public final C4798y f51936b;

    public C9184r00(C4798y c4798y) {
        this.f51936b = c4798y;
    }

    @Override
    public final boolean a(C8340lx0 c8340lx0) {
        com.android.tools.r8.graph.H2 h22 = c8340lx0.f50154b;
        com.android.tools.r8.graph.H2 h23 = c8340lx0.f50155c;
        return ((((C11245i) this.f51936b.f()).f57387B.contains(h22.getType()) || h22.h1()) && (((C11245i) this.f51936b.f()).f57387B.contains(h23.getType()) || h23.h1())) ? false : true;
    }

    @Override
    public final String f() {
        return "NoLockMergingPolicy";
    }
}
