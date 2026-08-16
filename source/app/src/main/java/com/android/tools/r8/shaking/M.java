package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import java.util.Set;
import java.util.function.BiConsumer;

public final class M {

    public final Set f56716a = AbstractC5513Ll0.c();

    public final BiConsumer f56717b;

    public final N f56718c;

    public M(N n10, BiConsumer biConsumer) {
        this.f56718c = n10;
        this.f56717b = biConsumer;
    }

    public final boolean a(X1 x12, com.android.tools.r8.graph.H5 h52) {
        C4516j1 d10 = h52.d();
        this.f56717b.accept(d10, x12);
        this.f56718c.r(h52.getHolder());
        return this.f56716a.add(d10);
    }

    public final boolean a(com.android.tools.r8.graph.H5 h52) {
        return this.f56716a.contains(h52.d());
    }
}
