package com.google.common.collect;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import javax.annotation.CheckForNull;

@X
@v2.b
public interface L1<K, V> extends S1<K, V> {
    @Override
    @I2.a
    List<V> c(@CheckForNull Object obj);

    /* JADX WARN: Multi-variable type inference failed */
    @I2.a
    default Collection d(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return d((L1<K, V>) obj, iterable);
    }

    @Override
    @I2.a
    List<V> d(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable);

    @Override
    boolean equals(@CheckForNull Object obj);

    /* JADX WARN: Multi-variable type inference failed */
    default Collection get(@InterfaceC12518f2 Object obj) {
        return get((L1<K, V>) obj);
    }

    @Override
    List<V> get(@InterfaceC12518f2 K k10);

    @Override
    Map<K, Collection<V>> k();
}
