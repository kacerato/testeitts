package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;

public final class DK implements Iterator {

    public int f39499b;

    public final int f39500c;

    public final C10575zK f39501d;

    public DK(int i10, C10575zK c10575zK) {
        this.f39500c = i10;
        this.f39501d = c10575zK;
    }

    @Override
    public final boolean hasNext() {
        return this.f39499b < this.f39500c && this.f39501d.hasNext();
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f39499b++;
        return this.f39501d.next();
    }

    @Override
    public final void remove() {
        this.f39501d.f54355b.remove();
    }
}
