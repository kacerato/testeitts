package com.android.tools.r8.internal;

import java.util.Iterator;

public final class W20 extends AbstractC6519b1 {

    public final C6692c30 f45269b;

    public W20(C6692c30 c6692c30) {
        this.f45269b = c6692c30;
    }

    @Override
    public final void clear() {
        this.f45269b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f45269b.containsValue(obj);
    }

    @Override
    public final A30 iterator() {
        return new C6526b30(this.f45269b);
    }

    @Override
    public final int size() {
        return this.f45269b.size();
    }

    @Override
    public final Iterator iterator() {
        return new C6526b30(this.f45269b);
    }
}
