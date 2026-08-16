package io.reactivex.internal.util;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public final class v<T> implements Fe.o<List<T>, List<T>> {

    public final Comparator<? super T> f92462b;

    public v(Comparator<? super T> comparator) {
        this.f92462b = comparator;
    }

    @Override
    public List<T> apply(List<T> list) throws Exception {
        Collections.sort(list, this.f92462b);
        return list;
    }
}
