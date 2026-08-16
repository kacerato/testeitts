package com.google.common.cache;

import com.google.common.collect.AbstractC12529i1;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import javax.annotation.CheckForNull;

@v2.b
@I2.f("Use CacheBuilder.newBuilder().build()")
@g
public interface c<K, V> {
    AbstractC12529i1<K, V> R(Iterable<? extends Object> iterable);

    void b0(@I2.c("K") Object obj);

    void cleanUp();

    void j0();

    @I2.b
    ConcurrentMap<K, V> k();

    V m(K k10, Callable<? extends V> callable) throws ExecutionException;

    void put(K k10, V v10);

    void putAll(Map<? extends K, ? extends V> map);

    @CheckForNull
    V r(@I2.c("K") Object obj);

    void s(Iterable<? extends Object> iterable);

    @I2.b
    long size();

    @I2.b
    f stats();
}
