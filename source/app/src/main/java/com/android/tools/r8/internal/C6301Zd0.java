package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;

public final class C6301Zd0 extends AbstractC6450ae0 {
    public C6301Zd0(C8854p10 c8854p10) {
        super(c8854p10);
    }

    @Override
    public final AbstractC6450ae0 a(C8854p10 c8854p10) {
        return c8854p10.g() ? AbstractC6450ae0.f46571c : AbstractC6450ae0.f46572d;
    }

    @Override
    public final boolean equals(Object obj) {
        return this == obj;
    }

    @Override
    public final int hashCode() {
        return System.identityHashCode(this);
    }

    @Override
    public final String toString() {
        return this.f46573b.toString() + " " + C4724u1.f37808E6.toString();
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4724u1 c4724u1) {
        return C4724u1.f37808E6;
    }

    @Override
    public final AbstractC6450ae0 a(AbstractC6450ae0 abstractC6450ae0, C4798y c4798y) {
        return abstractC6450ae0.b(this.f46573b);
    }
}
