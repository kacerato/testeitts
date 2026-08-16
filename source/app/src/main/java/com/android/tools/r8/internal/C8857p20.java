package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C8857p20 extends AbstractC7519h1 {

    public final C9691u20 f51415b;

    public C8857p20(C9691u20 c9691u20) {
        this.f51415b = c9691u20;
    }

    @Override
    public final void clear() {
        this.f51415b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f51415b.containsKey(obj);
    }

    @Override
    public final A30 iterator() {
        return new C8690o20(this.f51415b);
    }

    @Override
    public final boolean remove(Object obj) {
        C9691u20 c9691u20 = this.f51415b;
        int i10 = c9691u20.f52768i;
        c9691u20.c(obj);
        return this.f51415b.f52768i != i10;
    }

    @Override
    public final int size() {
        return this.f51415b.f52768i;
    }

    @Override
    public final Iterator iterator() {
        return new C8690o20(this.f51415b);
    }
}
