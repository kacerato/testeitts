package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;

public final class C5893Sb0 extends AbstractC6295Zb0 {

    public final C4554l1 f44239E;

    public final int f44240F;

    public C5893Sb0(C4554l1 c4554l1) {
        this.f44239E = c4554l1;
        this.f44240F = -1;
    }

    @Override
    public final Object a() {
        return C5893Sb0.class;
    }

    public final String toString() {
        String str;
        C4554l1 c4554l1 = this.f44239E;
        if (c4554l1 != null) {
            str = c4554l1.j0();
        } else {
            str = "ordinal=" + this.f44240F;
        }
        return "MissingDynamicType(" + str + ")";
    }

    public C5893Sb0(int i10) {
        this.f44240F = i10;
        this.f44239E = null;
    }
}
