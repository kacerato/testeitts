package com.android.tools.r8.internal;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class GK implements Iterator {

    public Iterator f40462b;

    public Iterator f40463c = FK.f40177e;

    public Iterator f40464d;

    public ArrayDeque f40465e;

    public GK(Iterator it) {
        this.f40464d = it;
    }

    @Override
    public final boolean hasNext() {
        Iterator it;
        while (true) {
            Iterator it2 = this.f40463c;
            it2.getClass();
            if (it2.hasNext()) {
                return true;
            }
            while (true) {
                Iterator it3 = this.f40464d;
                if (it3 != null && it3.hasNext()) {
                    it = this.f40464d;
                    break;
                }
                ArrayDeque arrayDeque = this.f40465e;
                if (arrayDeque == null || arrayDeque.isEmpty()) {
                    break;
                }
                this.f40464d = (Iterator) this.f40465e.removeFirst();
            }
            it = null;
            this.f40464d = it;
            if (it == null) {
                return false;
            }
            Iterator it4 = (Iterator) it.next();
            this.f40463c = it4;
            if (it4 instanceof GK) {
                GK gk2 = (GK) it4;
                this.f40463c = gk2.f40463c;
                if (this.f40465e == null) {
                    this.f40465e = new ArrayDeque();
                }
                this.f40465e.addFirst(this.f40464d);
                if (gk2.f40465e != null) {
                    while (!gk2.f40465e.isEmpty()) {
                        this.f40465e.addFirst((Iterator) gk2.f40465e.removeLast());
                    }
                }
                this.f40464d = gk2.f40464d;
            }
        }
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Iterator it = this.f40463c;
        this.f40462b = it;
        return it.next();
    }

    @Override
    public final void remove() {
        Iterator it = this.f40462b;
        if (it == null) {
            throw new IllegalStateException("no calls to next() since the last call to remove()");
        }
        it.remove();
        this.f40462b = null;
    }
}
