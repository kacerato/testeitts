package com.google.common.cache;

import com.google.common.collect.AbstractC12529i1;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import w2.InterfaceC15902t;

@v2.b
@g
public interface j<K, V> extends c<K, V>, InterfaceC15902t<K, V> {
    AbstractC12529i1<K, V> V(Iterable<? extends K> iterable) throws ExecutionException;

    @Override
    @Deprecated
    V apply(K k10);

    void f0(K k10);

    V get(K k10) throws ExecutionException;

    V h(K k10);

    @Override
    ConcurrentMap<K, V> k();
}
