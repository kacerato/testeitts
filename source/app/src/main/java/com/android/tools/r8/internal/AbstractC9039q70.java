package com.android.tools.r8.internal;

import java.util.IdentityHashMap;
import java.util.LinkedHashSet;
import java.util.function.Function;

public abstract class AbstractC9039q70 {

    public final IdentityHashMap f51721a = new IdentityHashMap();

    public final C5058Dq a(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.E0 e03) {
        C5058Dq c5058Dq = new C5058Dq(new LinkedHashSet());
        a(c5058Dq, e02);
        return c5058Dq;
    }

    public abstract void a(C5058Dq c5058Dq, com.android.tools.r8.graph.E0 e02);

    /* JADX WARN: Multi-variable type inference failed */
    public final C5058Dq a(final com.android.tools.r8.graph.E0 e02) {
        return (C5058Dq) this.f51721a.computeIfAbsent(e02, new Function() {
            @Override
            public final Object apply(Object obj) {
                return AbstractC9039q70.this.a(e02, (com.android.tools.r8.graph.E0) obj);
            }
        });
    }
}
