package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C7399gH extends AbstractC10355y1 {

    public final C9901vH f48227b;

    public C7399gH(C9901vH c9901vH) {
        this.f48227b = c9901vH;
    }

    @Override
    public final void clear() {
        this.f48227b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f48227b.containsValue(obj);
    }

    @Override
    public final A30 iterator() {
        return new C9734uH(this.f48227b);
    }

    @Override
    public final int size() {
        return this.f48227b.f53066c;
    }

    @Override
    public final Iterator iterator() {
        return new C9734uH(this.f48227b);
    }
}
