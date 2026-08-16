package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4554l1;
import java.util.IdentityHashMap;
import java.util.function.Function;

public final class M0 {

    public final IdentityHashMap f56719a = new IdentityHashMap();

    public static N0 b(C4554l1 c4554l1) {
        return new N0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final N0 a(C4554l1 c4554l1) {
        return (N0) this.f56719a.computeIfAbsent(c4554l1, new Function() {
            @Override
            public final Object apply(Object obj) {
                return M0.b((C4554l1) obj);
            }
        });
    }
}
