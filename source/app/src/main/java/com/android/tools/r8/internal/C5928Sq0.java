package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;

public final class C5928Sq0 extends AbstractC7173ex0 {

    public final C4798y f44319b;

    public C5928Sq0(C4798y c4798y) {
        this.f44319b = c4798y;
    }

    @Override
    public final boolean a(C8340lx0 c8340lx0) {
        C9406sK M12 = c8340lx0.f50154b.M1();
        CK a10 = JK.a(M12.f52337b.iterator(), M12.f52338c);
        while (a10.f43396b.hasNext()) {
            if (!((C11245i) this.f44319b.f()).d(c8340lx0.f50155c, ((com.android.tools.r8.graph.H5) a10.a(a10.f43396b.next())).getReference()).w()) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final String f() {
        return "SuccessfulVirtualMethodResolutionInTargetPolicy";
    }
}
