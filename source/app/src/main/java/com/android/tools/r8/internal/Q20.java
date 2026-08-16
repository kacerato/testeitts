package com.android.tools.r8.internal;

import java.util.Iterator;

public final class Q20 extends AbstractC6519b1 {

    public final C7192f30 f43441b;

    public Q20(C7192f30 c7192f30) {
        this.f43441b = c7192f30;
    }

    @Override
    public final void clear() {
        this.f43441b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f43441b.containsValue(obj);
    }

    @Override
    public final A30 iterator() {
        return new C7025e30(this.f43441b);
    }

    @Override
    public final int size() {
        return this.f43441b.f47837c;
    }

    @Override
    public final Iterator iterator() {
        return new C7025e30(this.f43441b);
    }
}
