package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C8280ld0 extends C1 {

    public final C9115qd0 f50017b;

    public C8280ld0(C9115qd0 c9115qd0) {
        this.f50017b = c9115qd0;
    }

    @Override
    public final void clear() {
        this.f50017b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f50017b.containsKey(obj);
    }

    @Override
    public final A30 iterator() {
        return new C8113kd0(this.f50017b);
    }

    @Override
    public final boolean remove(Object obj) {
        C9115qd0 c9115qd0 = this.f50017b;
        int i10 = c9115qd0.f51828i;
        c9115qd0.c(obj);
        return this.f50017b.f51828i != i10;
    }

    @Override
    public final int size() {
        return this.f50017b.f51828i;
    }

    @Override
    public final Iterator iterator() {
        return new C8113kd0(this.f50017b);
    }
}
