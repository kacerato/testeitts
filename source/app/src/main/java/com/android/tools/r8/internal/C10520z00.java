package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4552l;
import com.android.tools.r8.graph.C4798y;

public final class C10520z00 extends AbstractC7173ex0 {

    public final C4798y f54257b;

    public final C8570nJ f54258c;

    public C10520z00(C4798y c4798y) {
        this.f54257b = c4798y;
        this.f54258c = c4798y.E();
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.Map, java.lang.Object] */
    @Override
    public final boolean a(C8340lx0 c8340lx0) {
        com.android.tools.r8.graph.H2 h22 = c8340lx0.f50154b;
        com.android.tools.r8.graph.H2 h23 = c8340lx0.f50155c;
        C4552l c4552l = this.f54257b.f38410c;
        if (!C4552l.f37439d) {
            c4552l.b();
        }
        return (c4552l.f37442c.o().contains(h22.getType()) && this.f54257b.r().a(h23).d(this.f54258c)) ? false : true;
    }

    @Override
    public final String f() {
        return "NoServiceInterfacesPolicy";
    }
}
