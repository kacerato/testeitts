package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C6971dl0 extends AbstractC10436yY {

    public static final boolean f47499d = true;

    public final C4798y f47500b;

    public final C8775ob0 f47501c;

    public C6971dl0(C4798y c4798y) {
        if (!f47499d && c4798y.E().f50596E1 == null) {
            throw new AssertionError();
        }
        this.f47500b = c4798y;
        this.f47501c = c4798y.E().f50596E1.a();
    }

    @Override
    public final Object a(com.android.tools.r8.graph.H2 h22) {
        return this.f47501c.a(this.f47500b, h22);
    }

    @Override
    public final String f() {
        return "SamePartialSubCompilation";
    }
}
