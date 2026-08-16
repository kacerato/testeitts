package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;

public final class PY implements Iterator {

    public final C5038Dg f43258b;

    public final Iterator f43259c;

    public MY f43260d;

    public int f43261e;

    public int f43262f;

    public boolean f43263g;

    public PY(C5038Dg c5038Dg, Iterator it) {
        this.f43258b = c5038Dg;
        this.f43259c = it;
    }

    @Override
    public final boolean hasNext() {
        return this.f43261e > 0 || this.f43259c.hasNext();
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        if (this.f43261e == 0) {
            MY my = (MY) this.f43259c.next();
            this.f43260d = my;
            int a10 = my.a();
            this.f43261e = a10;
            this.f43262f = a10;
        }
        this.f43261e--;
        this.f43263g = true;
        MY my2 = this.f43260d;
        Objects.requireNonNull(my2);
        return my2.b();
    }

    @Override
    public final void remove() {
        if (!this.f43263g) {
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
        if (this.f43262f == 1) {
            this.f43259c.remove();
        } else {
            C5038Dg c5038Dg = this.f43258b;
            MY my = this.f43260d;
            Objects.requireNonNull(my);
            c5038Dg.remove(my.b());
        }
        this.f43262f--;
        this.f43263g = false;
    }
}
