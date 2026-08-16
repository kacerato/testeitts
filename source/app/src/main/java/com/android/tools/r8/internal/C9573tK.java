package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C9573tK implements Iterator {

    public boolean f52584b = true;

    public final Iterator f52585c;

    public C9573tK(Iterator it) {
        this.f52585c = it;
    }

    @Override
    public final boolean hasNext() {
        return this.f52585c.hasNext();
    }

    @Override
    public final Object next() {
        Object next = this.f52585c.next();
        this.f52584b = false;
        return next;
    }

    @Override
    public final void remove() {
        if (this.f52584b) {
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
        this.f52585c.remove();
    }
}
