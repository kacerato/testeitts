package com.android.tools.r8.graph;

import java.util.Map;
import java.util.function.Consumer;

public final class C4550kg implements Consumer {

    public final Map f37438b;

    public C4550kg(Map map) {
        this.f37438b = map;
    }

    @Override
    public final void accept(Object obj) {
        this.f37438b.remove((M2) obj);
    }
}
