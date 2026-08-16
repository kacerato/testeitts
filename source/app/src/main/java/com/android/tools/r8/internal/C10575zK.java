package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class C10575zK implements Iterator {

    public Iterator f54355b = HK.f40735b;

    public final ArrayList f54356c;

    public C10575zK(ArrayList arrayList) {
        this.f54356c = arrayList;
    }

    @Override
    public final boolean hasNext() {
        return this.f54355b.hasNext() || this.f54356c.iterator().hasNext();
    }

    @Override
    public final Object next() {
        if (!this.f54355b.hasNext()) {
            Iterator it = this.f54356c.iterator();
            this.f54355b = it;
            if (!it.hasNext()) {
                throw new NoSuchElementException();
            }
        }
        return this.f54355b.next();
    }

    @Override
    public final void remove() {
        this.f54355b.remove();
    }
}
