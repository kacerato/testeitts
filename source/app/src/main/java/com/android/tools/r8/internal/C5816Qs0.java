package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C5816Qs0 implements Iterator {

    public final Iterator f43744b;

    public final C5874Rs0 f43745c;

    public C5816Qs0(C5874Rs0 c5874Rs0) {
        this.f43745c = c5874Rs0;
        this.f43744b = c5874Rs0.f44012a.iterator();
    }

    @Override
    public final boolean hasNext() {
        return this.f43744b.hasNext();
    }

    @Override
    public final Object next() {
        return this.f43745c.f44013b.a(this.f43744b.next());
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
