package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C9732uG extends AbstractC10355y1 {

    public final AG f52829b;

    public C9732uG(AG ag2) {
        this.f52829b = ag2;
    }

    @Override
    public final void clear() {
        this.f52829b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f52829b.containsValue(obj);
    }

    @Override
    public final A30 iterator() {
        return new C10567zG(this.f52829b);
    }

    @Override
    public final int size() {
        return this.f52829b.size();
    }

    @Override
    public final Iterator iterator() {
        return new C10567zG(this.f52829b);
    }
}
