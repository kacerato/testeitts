package com.google.android.gms.internal.auth;

import java.util.Iterator;

public final class K2 implements Iterator {

    public final Iterator f61636b;

    public final L2 f61637c;

    public K2(L2 l22) {
        L1 l12;
        this.f61637c = l22;
        l12 = l22.f61638b;
        this.f61636b = l12.iterator();
    }

    @Override
    public final boolean hasNext() {
        return this.f61636b.hasNext();
    }

    @Override
    public final Object next() {
        return (String) this.f61636b.next();
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
