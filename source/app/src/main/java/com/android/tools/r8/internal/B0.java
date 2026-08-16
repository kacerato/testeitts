package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;

public final class B0 implements Iterator {

    public Map.Entry f38764b;

    public final Iterator f38765c;

    public final F0 f38766d;

    public B0(F0 f02, Iterator it) {
        this.f38766d = f02;
        this.f38765c = it;
    }

    @Override
    public final boolean hasNext() {
        return this.f38765c.hasNext();
    }

    @Override
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.f38765c.next();
        this.f38764b = entry;
        return entry.getKey();
    }

    @Override
    public final void remove() {
        Map.Entry entry = this.f38764b;
        if (!(entry != null)) {
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
        F0 f02 = this.f38766d;
        C8127ki c8127ki = (C8127ki) entry.getValue();
        int i10 = c8127ki.f49730b;
        c8127ki.f49730b = 0;
        f02.f40063e -= i10;
        this.f38765c.remove();
        this.f38764b = null;
    }
}
