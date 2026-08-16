package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;

public final class C12040d implements Iterator {

    public final Iterator f62248b;

    public final Iterator f62249c;

    public C12040d(C12058f c12058f, Iterator it, Iterator it2) {
        this.f62248b = it;
        this.f62249c = it2;
        Objects.requireNonNull(c12058f);
    }

    @Override
    public final boolean hasNext() {
        if (this.f62248b.hasNext()) {
            return true;
        }
        return this.f62249c.hasNext();
    }

    @Override
    public final Object next() {
        Iterator it = this.f62248b;
        if (it.hasNext()) {
            return new C12192u(((Integer) it.next()).toString());
        }
        Iterator it2 = this.f62249c;
        if (it2.hasNext()) {
            return new C12192u((String) it2.next());
        }
        throw new NoSuchElementException();
    }
}
