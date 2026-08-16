package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.stream.Stream;

public final class C4991Cl0 extends AbstractC5455Kl0 {

    public final Set f39350b;

    public final Set f39351c;

    public C4991Cl0(Set set, Set set2) {
        this.f39350b = set;
        this.f39351c = set2;
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f39350b.contains(obj) && this.f39351c.contains(obj);
    }

    @Override
    public final boolean containsAll(Collection collection) {
        return this.f39350b.containsAll(collection) && this.f39351c.containsAll(collection);
    }

    @Override
    public final boolean isEmpty() {
        return Collections.disjoint(this.f39351c, this.f39350b);
    }

    @Override
    public final Iterator iterator() {
        return new C4933Bl0(this);
    }

    @Override
    public final Stream parallelStream() {
        Stream<E> parallelStream = this.f39350b.parallelStream();
        Set set = this.f39351c;
        Objects.requireNonNull(set);
        return parallelStream.filter(new LB0(set));
    }

    @Override
    public final int size() {
        Iterator it = this.f39350b.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (this.f39351c.contains(it.next())) {
                i10++;
            }
        }
        return i10;
    }

    @Override
    public final Stream stream() {
        Stream<E> stream = this.f39350b.stream();
        Set set = this.f39351c;
        Objects.requireNonNull(set);
        return stream.filter(new LB0(set));
    }
}
