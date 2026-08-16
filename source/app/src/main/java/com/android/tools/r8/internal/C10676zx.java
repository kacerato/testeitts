package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;

public final class C10676zx implements Iterator {

    public final Iterator f54582b;

    public Iterator f54583c;

    public int f54584d;

    public final C4898Ax f54585e;

    public C10676zx(C4898Ax c4898Ax) {
        this.f54585e = c4898Ax;
        this.f54582b = c4898Ax.f38745a.iterator();
    }

    public final boolean a() {
        Iterator it = this.f54583c;
        if (it != null && it.hasNext()) {
            this.f54584d = 1;
            return true;
        }
        while (this.f54582b.hasNext()) {
            Object next = this.f54582b.next();
            C4898Ax c4898Ax = this.f54585e;
            Iterator it2 = (Iterator) c4898Ax.f38747c.a(c4898Ax.f38746b.a(next));
            if (it2.hasNext()) {
                this.f54583c = it2;
                this.f54584d = 1;
                return true;
            }
        }
        this.f54584d = 2;
        this.f54583c = null;
        return false;
    }

    @Override
    public final boolean hasNext() {
        int i10 = this.f54584d;
        if (i10 == 1) {
            return true;
        }
        if (i10 == 2) {
            return false;
        }
        return a();
    }

    @Override
    public final Object next() {
        int i10 = this.f54584d;
        if (i10 == 2) {
            throw new NoSuchElementException();
        }
        if (i10 == 0 && !a()) {
            throw new NoSuchElementException();
        }
        this.f54584d = 0;
        Iterator it = this.f54583c;
        GJ.a(it);
        return it.next();
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
