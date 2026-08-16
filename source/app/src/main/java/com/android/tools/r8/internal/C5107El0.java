package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Set;
import java.util.function.Predicate;
import java.util.stream.Stream;

public final class C5107El0 extends AbstractC5455Kl0 {

    public final Set f40010b;

    public final Set f40011c;

    public C5107El0(Set set, Set set2) {
        this.f40010b = set;
        this.f40011c = set2;
    }

    public static boolean a(Set set, Object obj) {
        return !set.contains(obj);
    }

    public static boolean b(Set set, Object obj) {
        return !set.contains(obj);
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f40010b.contains(obj) && !this.f40011c.contains(obj);
    }

    @Override
    public final boolean isEmpty() {
        return this.f40011c.containsAll(this.f40010b);
    }

    @Override
    public final Iterator iterator() {
        return new C5049Dl0(this);
    }

    @Override
    public final Stream parallelStream() {
        Stream<E> parallelStream = this.f40010b.parallelStream();
        final Set set = this.f40011c;
        return parallelStream.filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C5107El0.a(Set.this, obj);
            }
        });
    }

    @Override
    public final int size() {
        Iterator it = this.f40010b.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (!this.f40011c.contains(it.next())) {
                i10++;
            }
        }
        return i10;
    }

    @Override
    public final Stream stream() {
        Stream<E> stream = this.f40010b.stream();
        final Set set = this.f40011c;
        return stream.filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C5107El0.b(Set.this, obj);
            }
        });
    }
}
