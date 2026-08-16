package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public class C10018w0 implements Iterator {

    public final Iterator f53393b;

    public final Collection f53394c;

    public final AbstractC10185x0 f53395d;

    public C10018w0(AbstractC10185x0 abstractC10185x0) {
        Iterator it;
        this.f53395d = abstractC10185x0;
        Collection collection = abstractC10185x0.f53658c;
        this.f53394c = collection;
        if (collection instanceof List) {
            it = ((List) collection).listIterator();
        } else {
            it = collection.iterator();
        }
        this.f53393b = it;
    }

    @Override
    public final boolean hasNext() {
        this.f53395d.b();
        if (this.f53395d.f53658c == this.f53394c) {
            return this.f53393b.hasNext();
        }
        throw new ConcurrentModificationException();
    }

    @Override
    public final Object next() {
        this.f53395d.b();
        if (this.f53395d.f53658c == this.f53394c) {
            return this.f53393b.next();
        }
        throw new ConcurrentModificationException();
    }

    @Override
    public final void remove() {
        this.f53393b.remove();
        AbstractC10185x0 abstractC10185x0 = this.f53395d;
        A0 a02 = abstractC10185x0.f53661f;
        a02.f38498g--;
        abstractC10185x0.c();
    }

    public C10018w0(C10519z0 c10519z0, ListIterator listIterator) {
        this.f53395d = c10519z0;
        this.f53394c = c10519z0.f53658c;
        this.f53393b = listIterator;
    }
}
