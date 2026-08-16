package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Spliterator;

public final class C9684u0 extends AbstractC9095qV {

    public final A0 f52758c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9684u0(A0 a02, HashMap hashMap) {
        super(hashMap);
        this.f52758c = a02;
    }

    @Override
    public final void clear() {
        Iterator it = iterator();
        while (true) {
            C9517t0 c9517t0 = (C9517t0) it;
            if (!c9517t0.hasNext()) {
                return;
            }
            c9517t0.next();
            c9517t0.remove();
        }
    }

    @Override
    public final boolean containsAll(Collection collection) {
        return this.f51794b.o().containsAll(collection);
    }

    @Override
    public final boolean equals(Object obj) {
        return this == obj || this.f51794b.o().equals(obj);
    }

    @Override
    public final int hashCode() {
        return this.f51794b.o().hashCode();
    }

    @Override
    public final Iterator iterator() {
        return new C9517t0(this, this.f51794b.entrySet().iterator());
    }

    @Override
    public final boolean remove(Object obj) {
        int i10;
        Collection collection = (Collection) this.f51794b.remove(obj);
        if (collection != null) {
            i10 = collection.size();
            collection.clear();
            this.f52758c.f38498g -= i10;
        } else {
            i10 = 0;
        }
        return i10 > 0;
    }

    @Override
    public final Spliterator spliterator() {
        return this.f51794b.o().spliterator();
    }
}
