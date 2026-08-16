package com.google.common.collect;

import java.util.Comparator;
import java.util.Iterator;

@X
@v2.b
public interface G2<T> extends Iterable<T> {
    Comparator<? super T> comparator();

    @Override
    Iterator<T> iterator();
}
