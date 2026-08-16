package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.IdentityHashMap;

public final class K10 extends AbstractC8435mZ {

    public static final int f41552q = 0;

    public final IdentityHashMap f41553p;

    public K10(C4798y c4798y, C9201r6 c9201r6, IdentityHashMap identityHashMap, N10 n10) {
        super(c4798y, c9201r6, n10);
        this.f41553p = identityHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final com.android.tools.r8.graph.proto.j a(com.android.tools.r8.graph.proto.j jVar, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        return jVar.a((com.android.tools.r8.graph.proto.j) this.f41553p.getOrDefault(a23, com.android.tools.r8.graph.proto.j.f37620d));
    }
}
