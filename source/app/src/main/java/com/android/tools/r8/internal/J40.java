package com.android.tools.r8.internal;

import java.util.Map;

public final class J40 extends K40 {

    public final Map f41279c;

    public J40(Map map) {
        this.f41279c = map;
    }

    @Override
    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.H2 h22) {
        return (com.android.tools.r8.graph.L2) this.f41279c.get(h22);
    }
}
