package com.android.tools.r8.graph;

import java.util.IdentityHashMap;
import java.util.function.Supplier;

public final class Ra implements Supplier {
    @Override
    public final Object get() {
        return new IdentityHashMap();
    }
}
