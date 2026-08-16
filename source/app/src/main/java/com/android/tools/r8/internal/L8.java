package com.android.tools.r8.internal;

import java.util.Iterator;

public final class L8 implements Iterator {

    public int f41874b = 0;

    public final N8 f41875c;

    public L8(N8 n82) {
        this.f41875c = n82;
    }

    @Override
    public final boolean hasNext() {
        return this.f41874b < this.f41875c.size();
    }

    @Override
    public final Object next() {
        com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) this.f41875c.f42510b.get(this.f41874b);
        Object obj = this.f41875c.f42511c.get(this.f41874b);
        this.f41874b++;
        return new M8(m22, obj);
    }
}
