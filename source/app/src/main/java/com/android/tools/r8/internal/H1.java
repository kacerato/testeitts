package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class H1 extends K1 {

    public static final boolean f40648c = true;

    public H1(C4798y c4798y) {
        super(c4798y);
    }

    public final F1 b(F1 f12, F1 f13, AbstractC8999pu0 abstractC8999pu0) {
        F1 a10 = a(f12, f13, abstractC8999pu0);
        if (f40648c || a10.equals(a(f13, f12, abstractC8999pu0))) {
            return a10;
        }
        throw new AssertionError();
    }
}
