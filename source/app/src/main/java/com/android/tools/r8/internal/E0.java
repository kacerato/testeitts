package com.android.tools.r8.internal;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

public final class E0 implements Iterator {

    public final Iterator f39729b;

    public Map.Entry f39730c;

    public int f39731d;

    public boolean f39732e;

    public final F0 f39733f;

    public E0(F0 f02) {
        this.f39733f = f02;
        this.f39729b = f02.f40062d.entrySet().iterator();
    }

    @Override
    public final boolean hasNext() {
        return this.f39731d > 0 || this.f39729b.hasNext();
    }

    @Override
    public final Object next() {
        if (this.f39731d == 0) {
            Map.Entry entry = (Map.Entry) this.f39729b.next();
            this.f39730c = entry;
            this.f39731d = ((C8127ki) entry.getValue()).f49730b;
        }
        this.f39731d--;
        this.f39732e = true;
        Map.Entry entry2 = this.f39730c;
        Objects.requireNonNull(entry2);
        return entry2.getKey();
    }

    @Override
    public final void remove() {
        if (!this.f39732e) {
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
        Map.Entry entry = this.f39730c;
        Objects.requireNonNull(entry);
        if (((C8127ki) entry.getValue()).f49730b <= 0) {
            throw new ConcurrentModificationException();
        }
        C8127ki c8127ki = (C8127ki) this.f39730c.getValue();
        int i10 = c8127ki.f49730b - 1;
        c8127ki.f49730b = i10;
        if (i10 == 0) {
            this.f39729b.remove();
        }
        this.f39733f.f40063e--;
        this.f39732e = false;
    }
}
