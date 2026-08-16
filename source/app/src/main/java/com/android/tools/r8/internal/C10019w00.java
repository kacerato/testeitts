package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;

public final class C10019w00 extends AbstractC7173ex0 {

    public final C4798y f53396b;

    public C10019w00(C4798y c4798y) {
        this.f53396b = c4798y;
    }

    @Override
    public final boolean a(C8340lx0 c8340lx0) {
        com.android.tools.r8.graph.H2 h22 = c8340lx0.f50154b;
        com.android.tools.r8.graph.H2 h23 = c8340lx0.f50155c;
        if (h22.isInterface()) {
            return true;
        }
        C4798y c4798y = this.f53396b;
        h23.getClass();
        C4514j c4514j = (C4514j) c4798y.f();
        if (!c4514j.c(h23.f36245e, c4514j.b().f38032d6)) {
            return true;
        }
        C4514j c4514j2 = (C4514j) this.f53396b.f();
        return c4514j2.c(h22.f36245e, c4514j2.b().f38032d6);
    }

    @Override
    public final String f() {
        return "NoNonSerializableClassIntoSerializableClassPolicy";
    }
}
