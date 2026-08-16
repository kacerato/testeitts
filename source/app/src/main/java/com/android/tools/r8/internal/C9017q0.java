package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class C9017q0 implements Iterator {

    public final Iterator f51690b;

    public Collection f51691c;

    public final C9183r0 f51692d;

    public C9017q0(C9183r0 c9183r0) {
        this.f51692d = c9183r0;
        this.f51690b = c9183r0.f51934d.entrySet().iterator();
    }

    @Override
    public final boolean hasNext() {
        return this.f51690b.hasNext();
    }

    @Override
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.f51690b.next();
        this.f51691c = (Collection) entry.getValue();
        return this.f51692d.a(entry);
    }

    @Override
    public final void remove() {
        if (!(this.f51691c != null)) {
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
        this.f51690b.remove();
        this.f51692d.f51935e.f38498g -= this.f51691c.size();
        this.f51691c.clear();
        this.f51691c = null;
    }
}
