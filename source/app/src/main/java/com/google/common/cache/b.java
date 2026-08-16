package com.google.common.cache;

import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.Q1;
import com.google.common.util.concurrent.UncheckedExecutionException;
import java.util.LinkedHashMap;
import java.util.concurrent.ExecutionException;

@v2.c
@g
public abstract class b<K, V> extends a<K, V> implements j<K, V> {
    @Override
    public AbstractC12529i1<K, V> V(Iterable<? extends K> iterable) throws ExecutionException {
        LinkedHashMap c02 = Q1.c0();
        for (K k10 : iterable) {
            if (!c02.containsKey(k10)) {
                c02.put(k10, get(k10));
            }
        }
        return AbstractC12529i1.n(c02);
    }

    @Override
    public final V apply(K k10) {
        return h(k10);
    }

    @Override
    public void f0(K k10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public V h(K k10) {
        try {
            return get(k10);
        } catch (ExecutionException e10) {
            throw new UncheckedExecutionException(e10.getCause());
        }
    }
}
