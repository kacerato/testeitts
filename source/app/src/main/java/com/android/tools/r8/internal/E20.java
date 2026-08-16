package com.android.tools.r8.internal;

import java.util.Iterator;

public final class E20 extends AbstractC6519b1 {

    public final M20 f39735b;

    public E20(M20 m20) {
        this.f39735b = m20;
    }

    @Override
    public final void clear() {
        this.f39735b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f39735b.containsValue(obj);
    }

    @Override
    public final A30 iterator() {
        return new L20(this.f39735b);
    }

    @Override
    public final int size() {
        return this.f39735b.f42144l;
    }

    @Override
    public final Iterator iterator() {
        return new L20(this.f39735b);
    }
}
