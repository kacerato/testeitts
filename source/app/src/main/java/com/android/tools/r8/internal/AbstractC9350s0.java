package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

public abstract class AbstractC9350s0 implements Iterator {

    public final Iterator f52241b;

    public Object f52242c = null;

    public Collection f52243d = null;

    public Iterator f52244e = HK.f40735b;

    public final A0 f52245f;

    public AbstractC9350s0(A0 a02) {
        this.f52245f = a02;
        this.f52241b = a02.f38497f.entrySet().iterator();
    }

    @Override
    public final boolean hasNext() {
        return this.f52241b.hasNext() || this.f52244e.hasNext();
    }

    @Override
    public final Object next() {
        if (!this.f52244e.hasNext()) {
            Map.Entry entry = (Map.Entry) this.f52241b.next();
            this.f52242c = entry.getKey();
            Collection collection = (Collection) entry.getValue();
            this.f52243d = collection;
            this.f52244e = collection.iterator();
        }
        return new ZB(this.f52242c, this.f52244e.next());
    }

    @Override
    public final void remove() {
        this.f52244e.remove();
        Collection collection = this.f52243d;
        Objects.requireNonNull(collection);
        if (collection.isEmpty()) {
            this.f52241b.remove();
        }
        A0 a02 = this.f52245f;
        a02.f38498g--;
    }
}
