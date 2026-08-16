package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.function.Function;

public final class C8183l00 extends AbstractC7173ex0 {

    public final C4798y f49862b;

    public C8183l00(C4798y c4798y) {
        this.f49862b = c4798y;
    }

    @Override
    public final boolean a(C8340lx0 c8340lx0) {
        com.android.tools.r8.graph.H2 h22 = c8340lx0.f50154b;
        com.android.tools.r8.graph.H2 h23 = c8340lx0.f50155c;
        if (!h22.isInterface() || h23.isInterface()) {
            return true;
        }
        return h22.c(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C8183l00.this.a((com.android.tools.r8.graph.H5) obj);
            }
        }).d();
    }

    @Override
    public final String f() {
        return "NoInterfacesWithInvokeSpecialToDefaultMethodIntoClassPolicy";
    }

    public final AbstractC6333Zs0 a(com.android.tools.r8.graph.H5 h52) {
        C6738cK c6738cK = new C6738cK(this.f49862b, h52);
        h52.a(c6738cK);
        return AbstractC6333Zs0.a(c6738cK.f37241e.booleanValue());
    }
}
