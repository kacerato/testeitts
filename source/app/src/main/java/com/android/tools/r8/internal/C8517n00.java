package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.function.Function;

public final class C8517n00 extends AbstractC7173ex0 {

    public final C4798y f50482b;

    public final C8570nJ f50483c;

    public C8517n00(C4798y c4798y) {
        this.f50482b = c4798y;
        this.f50483c = c4798y.E();
    }

    @Override
    public final boolean a(C8340lx0 c8340lx0) {
        return !a(c8340lx0.f50154b, c8340lx0.f50155c);
    }

    @Override
    public final String f() {
        return "NoInvokeSuperNoSuchMethodErrorsPolicy";
    }

    public final boolean a(final com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H2 h23) {
        if (!this.f50483c.f() || h22.isInterface() || h23.isInterface()) {
            return false;
        }
        return h23.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C8517n00.this.a(h22, (com.android.tools.r8.graph.H5) obj);
            }
        }, new u.P0()).c();
    }

    public final AbstractC6333Zs0 a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H5 h52) {
        C6596bW c6596bW = new C6596bW(this.f50482b, h52, h22);
        h52.a(c6596bW);
        return AbstractC6333Zs0.a(c6596bW.f37241e.booleanValue());
    }
}
