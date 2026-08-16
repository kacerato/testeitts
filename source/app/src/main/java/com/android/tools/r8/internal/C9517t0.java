package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class C9517t0 implements Iterator {

    public Map.Entry f52496b;

    public final Iterator f52497c;

    public final C9684u0 f52498d;

    public C9517t0(C9684u0 c9684u0, Iterator it) {
        this.f52498d = c9684u0;
        this.f52497c = it;
    }

    @Override
    public final boolean hasNext() {
        return this.f52497c.hasNext();
    }

    @Override
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.f52497c.next();
        this.f52496b = entry;
        return entry.getKey();
    }

    @Override
    public final void remove() {
        Map.Entry entry = this.f52496b;
        if (!(entry != null)) {
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
        Collection collection = (Collection) entry.getValue();
        this.f52497c.remove();
        this.f52498d.f52758c.f38498g -= collection.size();
        collection.clear();
        this.f52496b = null;
    }
}
