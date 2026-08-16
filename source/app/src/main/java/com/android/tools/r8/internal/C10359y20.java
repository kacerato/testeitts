package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C10359y20 extends AbstractC7519h1 {

    public final D20 f53924b;

    public C10359y20(D20 d20) {
        this.f53924b = d20;
    }

    @Override
    public final void clear() {
        this.f53924b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f53924b.containsKey(obj);
    }

    @Override
    public final A30 iterator() {
        return new C10192x20(this.f53924b);
    }

    @Override
    public final boolean remove(Object obj) {
        D20 d20 = this.f53924b;
        int i10 = d20.f39420h;
        d20.b(obj);
        return this.f53924b.f39420h != i10;
    }

    @Override
    public final int size() {
        return this.f53924b.f39420h;
    }

    @Override
    public final Iterator iterator() {
        return new C10192x20(this.f53924b);
    }
}
