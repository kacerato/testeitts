package com.android.tools.r8.internal;

import java.util.Iterator;

public final class WT extends AbstractC10355y1 {

    public final C7091eU f45420b;

    public WT(C7091eU c7091eU) {
        this.f45420b = c7091eU;
    }

    @Override
    public final void clear() {
        this.f45420b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f45420b.containsValue(obj);
    }

    @Override
    public final A30 iterator() {
        return new C6925dU(this.f45420b);
    }

    @Override
    public final int size() {
        return this.f45420b.f47697h;
    }

    @Override
    public final Iterator iterator() {
        return new C6925dU(this.f45420b);
    }
}
