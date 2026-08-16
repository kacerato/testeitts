package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4798y;

public final class E extends F {

    public final C11416s2 f56418d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public E(C4798y c4798y, C11416s2 c11416s2) {
        super(c4798y);
        this.f56418d = c11416s2;
    }

    @Override
    public final boolean b(com.android.tools.r8.graph.D5 d52) {
        return this.f56418d.a(d52.getReference(), new M5());
    }
}
