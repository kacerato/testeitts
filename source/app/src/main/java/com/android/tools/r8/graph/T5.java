package com.android.tools.r8.graph;

import com.android.tools.r8.graph.Z4;

public final class T5 extends AbstractC4481h3 {

    public static final boolean f36830c = true;

    public final H0 f36831b;

    public T5(H0 h02, Z4.c cVar) {
        super(cVar);
        if (!f36830c && h02 == null) {
            throw new AssertionError();
        }
        this.f36831b = h02;
    }

    @Override
    public final T5 a() {
        return this;
    }

    @Override
    public final H0 b() {
        return this.f36831b;
    }
}
