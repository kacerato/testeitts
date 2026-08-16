package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;

public final class D0 implements Iterator {

    public Map.Entry f39404b;

    public final Iterator f39405c;

    public final F0 f39406d;

    public D0(F0 f02, Iterator it) {
        this.f39406d = f02;
        this.f39405c = it;
    }

    @Override
    public final boolean hasNext() {
        return this.f39405c.hasNext();
    }

    @Override
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.f39405c.next();
        this.f39404b = entry;
        return new C0(this, entry);
    }

    @Override
    public final void remove() {
        Map.Entry entry = this.f39404b;
        if (!(entry != null)) {
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
        F0 f02 = this.f39406d;
        C8127ki c8127ki = (C8127ki) entry.getValue();
        int i10 = c8127ki.f49730b;
        c8127ki.f49730b = 0;
        f02.f40063e -= i10;
        this.f39405c.remove();
        this.f39404b = null;
    }
}
