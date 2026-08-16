package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;

public final class C6146Wk0 extends AbstractC10436yY {

    public final C4724u1 f45531b;

    public C6146Wk0(C4798y c4798y) {
        this.f45531b = c4798y.b();
    }

    @Override
    public final Object a(com.android.tools.r8.graph.H2 h22) {
        C8045kA c8045kA = new C8045kA();
        for (C4460g1 c4460g1 : h22.k1()) {
            c8045kA.a(new C6089Vk0(c4460g1.getAccessFlags(), c4460g1.getType().Q0() ? this.f45531b.f38068i2 : c4460g1.getType()), 1);
        }
        return c8045kA;
    }

    @Override
    public final String f() {
        return "SameInstanceFields";
    }
}
