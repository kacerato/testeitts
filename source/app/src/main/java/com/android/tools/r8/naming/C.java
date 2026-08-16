package com.android.tools.r8.naming;

import com.android.tools.r8.graph.C4798y;
import java.util.IdentityHashMap;
import java.util.function.Function;

public abstract class C {

    public final C4798y f55581b;

    public final IdentityHashMap f55582c;

    public C(C4798y c4798y, IdentityHashMap identityHashMap) {
        this.f55581b = c4798y;
        this.f55582c = identityHashMap;
    }

    public abstract Object a();

    public final Object a(com.android.tools.r8.graph.M2 m22) {
        return a();
    }

    public final Object b() {
        return this.f55582c.computeIfAbsent(this.f55581b.b().f37905M1, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C.this.a((com.android.tools.r8.graph.M2) obj);
            }
        });
    }
}
