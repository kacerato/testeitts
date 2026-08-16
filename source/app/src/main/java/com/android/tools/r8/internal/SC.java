package com.android.tools.r8.internal;

import java.util.AbstractMap;
import java.util.Comparator;
import java.util.Map;
import java.util.Spliterator;
import java.util.function.IntFunction;

public final class SC extends TB {

    public final TC f44156d;

    public SC(TC tc2) {
        this.f44156d = tc2;
    }

    @Override
    public final XB j() {
        return this.f44156d;
    }

    @Override
    public final Map.Entry get(int i10) {
        return new AbstractMap.SimpleImmutableEntry(this.f44156d.f44416e.f44698f.a().get(i10), this.f44156d.f44416e.f44699g.get(i10));
    }

    @Override
    public final Spliterator spliterator() {
        return AbstractC5901Se.a(((UC) this.f44156d.k()).size(), 1297, new IntFunction() {
            @Override
            public final Object apply(int i10) {
                return SC.this.get(i10);
            }
        }, (Comparator) null);
    }
}
