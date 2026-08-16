package com.android.tools.r8.internal;

import java.util.Iterator;

public final class TF extends AbstractC6519b1 {

    public final C7731iG f44427b;

    public TF(C7731iG c7731iG) {
        this.f44427b = c7731iG;
    }

    @Override
    public final void clear() {
        this.f44427b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f44427b.containsValue(obj);
    }

    @Override
    public final A30 iterator() {
        return new C7564hG(this.f44427b);
    }

    @Override
    public final int size() {
        return this.f44427b.f48898c;
    }

    @Override
    public final Iterator iterator() {
        return new C7564hG(this.f44427b);
    }
}
