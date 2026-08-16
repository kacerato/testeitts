package com.android.tools.r8.shaking;

import java.util.concurrent.ConcurrentHashMap;

public final class D {

    public final ConcurrentHashMap f56388a = new ConcurrentHashMap();

    public final String a(com.android.tools.r8.graph.L2 l22) {
        return (String) this.f56388a.computeIfAbsent(l22, new u.Z0());
    }
}
