package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Map;

public final class IY extends MY {

    public final Map.Entry f41118b;

    public IY(Map.Entry entry) {
        this.f41118b = entry;
    }

    @Override
    public final int a() {
        return ((Collection) this.f41118b.getValue()).size();
    }

    @Override
    public final Object b() {
        return this.f41118b.getKey();
    }
}
