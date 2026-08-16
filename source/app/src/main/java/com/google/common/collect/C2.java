package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b
public interface C2<K, V> extends S1<K, V> {
    @Override
    @I2.a
    Set<V> c(@CheckForNull Object obj);

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    default Collection d(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return d((C2<K, V>) obj, iterable);
    }

    @Override
    @I2.a
    Set<V> d(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable);

    @Override
    boolean equals(@CheckForNull Object obj);

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    default Collection get(@InterfaceC12518f2 Object obj) {
        return get((C2<K, V>) obj);
    }

    @Override
    Set<V> get(@InterfaceC12518f2 K k10);

    @Override
    Map<K, Collection<V>> k();

    @Override
    Set<Map.Entry<K, V>> v();
}
