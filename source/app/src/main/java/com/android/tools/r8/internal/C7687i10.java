package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;

public final class C7687i10 extends I4 {

    public final C4798y f48750b;

    public C7687i10(C4798y c4798y) {
        this.f48750b = c4798y;
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H2 h22) {
        C9406sK K12 = h22.K1();
        CK a10 = JK.a(K12.f52337b.iterator(), K12.f52338c);
        while (a10.f43396b.hasNext()) {
            C4516j1 d10 = ((com.android.tools.r8.graph.H5) a10.a(a10.f43396b.next())).d();
            if (d10.f37314g.L() || d10.Q0().s0()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final String f() {
        return "NotTwoInitsWithMonitors";
    }

    @Override
    public final boolean l() {
        this.f48750b.E().getClass();
        return !r0.a(C2.N);
    }
}
