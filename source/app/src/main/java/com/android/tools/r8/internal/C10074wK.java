package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.Predicate;

public final class C10074wK implements Iterator {

    public Object f53472b;

    public final Iterator f53473c;

    public final Predicate f53474d;

    public C10074wK(Iterator it, Predicate predicate) {
        Object obj;
        this.f53473c = it;
        this.f53474d = predicate;
        while (true) {
            if (!this.f53473c.hasNext()) {
                obj = null;
                break;
            } else {
                obj = this.f53473c.next();
                if (this.f53474d.test(obj)) {
                    break;
                }
            }
        }
        this.f53472b = obj;
    }

    @Override
    public final boolean hasNext() {
        return this.f53472b != null;
    }

    @Override
    public final Object next() {
        Object obj;
        Object obj2 = this.f53472b;
        if (obj2 == null) {
            throw new NoSuchElementException();
        }
        while (true) {
            if (!this.f53473c.hasNext()) {
                obj = null;
                break;
            }
            obj = this.f53473c.next();
            if (this.f53474d.test(obj)) {
                break;
            }
        }
        this.f53472b = obj;
        return obj2;
    }
}
