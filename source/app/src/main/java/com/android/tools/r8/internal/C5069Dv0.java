package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C5069Dv0 implements Iterator {

    public final Iterator f39684b;

    public C5069Dv0(C5185Fv0 c5185Fv0) {
        this.f39684b = c5185Fv0.f40344b.iterator();
    }

    @Override
    public final boolean hasNext() {
        return this.f39684b.hasNext();
    }

    @Override
    public final Object next() {
        return (String) this.f39684b.next();
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
