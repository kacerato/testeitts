package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C5127Ev0 implements Iterator {

    public final Iterator f40050b;

    public C5127Ev0(C5243Gv0 c5243Gv0) {
        this.f40050b = c5243Gv0.f40622b.iterator();
    }

    @Override
    public final boolean hasNext() {
        return this.f40050b.hasNext();
    }

    @Override
    public final Object next() {
        return (String) this.f40050b.next();
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
