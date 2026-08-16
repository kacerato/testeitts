package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;

public final class HZ extends AbstractC7173ex0 {

    public final C4798y f40785b;

    public HZ(C4798y c4798y) {
        this.f40785b = c4798y;
    }

    @Override
    public final boolean a(C8340lx0 c8340lx0) {
        if (c8340lx0.f50154b.l1() && !c8340lx0.f50155c.l1()) {
            C9406sK k10 = c8340lx0.f50154b.k(new C7233fH0());
            CK a10 = JK.a(k10.f52337b.iterator(), k10.f52338c);
            while (a10.f43396b.hasNext()) {
                com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) a10.a(a10.f43396b.next());
                if (((C11245i) this.f40785b.f()).d(c8340lx0.f50155c, h52.getReference()).p().d() == h52.d()) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override
    public final String f() {
        return "NoAbstractMethodsOnAbstractClassesPolicy";
    }
}
