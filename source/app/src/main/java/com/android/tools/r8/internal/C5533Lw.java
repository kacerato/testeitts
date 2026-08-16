package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;

public final class C5533Lw extends AbstractC7500gv {

    public static final C5533Lw f42102a = new C5533Lw();

    @Override
    public final boolean a(Object obj, Object obj2) {
        C4554l1 c4554l1 = (C4554l1) obj;
        C4554l1 c4554l12 = (C4554l1) obj2;
        return c4554l1.f38298g.equals(c4554l12.f38298g) && c4554l1.f37449i.equals(c4554l12.f37449i);
    }

    @Override
    public final int a(Object obj) {
        C4554l1 c4554l1 = (C4554l1) obj;
        return c4554l1.f37449i.hashCode() + (c4554l1.f38298g.hashCode() * 31);
    }
}
