package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class I1 extends K1 {

    public static final boolean f40954c = true;

    public I1(C4798y c4798y) {
        super(c4798y);
    }

    public final F1 a(F1 f12, F1 f13, com.android.tools.r8.graph.F5 f52) {
        AbstractC8999pu0 b10 = f52.getReference().getType().b(this.f41551a);
        F1 a10 = a(f12, f13, b10);
        if (f40954c || a10.equals(a(f13, f12, b10))) {
            return a10;
        }
        throw new AssertionError();
    }
}
