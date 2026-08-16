package com.android.tools.r8.internal;

import java.util.Iterator;

public final class IK implements Iterator {

    public final Iterator f41057b;

    public boolean f41058c;

    public Object f41059d;

    public IK(Iterator it) {
        it.getClass();
        this.f41057b = it;
    }

    @Override
    public final boolean hasNext() {
        return this.f41058c || this.f41057b.hasNext();
    }

    @Override
    public final Object next() {
        if (!this.f41058c) {
            return this.f41057b.next();
        }
        Object obj = this.f41059d;
        this.f41058c = false;
        this.f41059d = null;
        return obj;
    }

    @Override
    public final void remove() {
        if (this.f41058c) {
            throw new IllegalStateException("Can't remove after you've peeked at next");
        }
        this.f41057b.remove();
    }
}
