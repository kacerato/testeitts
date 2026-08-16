package com.android.tools.r8.internal;

import java.util.Iterator;

public final class C4922Bg extends AbstractC7175ey implements Iterator {

    public MY f38967b;

    public final C4864Ag f38968c;

    public final C5038Dg f38969d;

    public C4922Bg(C5038Dg c5038Dg, C4864Ag c4864Ag) {
        this.f38969d = c5038Dg;
        this.f38968c = c4864Ag;
    }

    @Override
    public final Object a() {
        return this.f38968c;
    }

    @Override
    public final boolean hasNext() {
        return this.f38968c.hasNext();
    }

    @Override
    public final Object next() {
        MY my = (MY) this.f38968c.next();
        this.f38967b = my;
        return my;
    }

    @Override
    public final void remove() {
        MY my = this.f38967b;
        if (!(my != null)) {
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
        this.f38969d.a(my.b());
        this.f38967b = null;
    }
}
