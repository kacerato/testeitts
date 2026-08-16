package com.google.common.collect;

import java.util.Comparator;
import java.util.SortedSet;

@X
@v2.b
public final class H2 {
    public static <E> Comparator<? super E> a(SortedSet<E> sortedSet) {
        Comparator<? super E> comparator = sortedSet.comparator();
        return comparator == null ? Ordering.A() : comparator;
    }

    public static boolean b(Comparator<?> comparator, Iterable<?> iterable) {
        Comparator comparator2;
        w2.H.E(comparator);
        w2.H.E(iterable);
        if (iterable instanceof SortedSet) {
            comparator2 = a((SortedSet) iterable);
        } else {
            if (!(iterable instanceof G2)) {
                return false;
            }
            comparator2 = ((G2) iterable).comparator();
        }
        return comparator.equals(comparator2);
    }
}
