package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;

public final class HT extends AbstractC8772oa0 {

    public final C4554l1 f40770a;

    public HT(C4554l1 c4554l1) {
        this.f40770a = c4554l1;
    }

    @Override
    public final HT a() {
        return this;
    }

    public final String toString() {
        return "LiveProtoFieldObject(" + this.f40770a.j0() + ")";
    }

    @Override
    public final AbstractC10561zE a(C4798y c4798y, C7215fB c7215fB) {
        C10340xw0 a10 = c7215fB.a(AbstractC8999pu0.a((C4798y<?>) c4798y, C8854p10.b()), (C4515j0) null);
        if (c4798y.E().R()) {
            return new C9820uq(a10, this.f40770a, C8169kw.f49839b);
        }
        return new C9960vh(a10, this.f40770a.f38298g);
    }
}
