package com.android.tools.r8.internal;

import java.util.Iterator;

public abstract class AbstractC5758Ps0 implements Iterator {

    public final Iterator f43396b;

    public AbstractC5758Ps0(Iterator it) {
        it.getClass();
        this.f43396b = it;
    }

    public abstract Object a(Object obj);

    @Override
    public final boolean hasNext() {
        return this.f43396b.hasNext();
    }

    @Override
    public final Object next() {
        return a(this.f43396b.next());
    }

    @Override
    public final void remove() {
        this.f43396b.remove();
    }
}
