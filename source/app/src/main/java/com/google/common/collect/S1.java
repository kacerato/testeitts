package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b
@I2.f("Use ImmutableMultimap, HashMultimap, or another implementation")
public interface S1<K, V> {
    @I2.a
    boolean Z(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable);

    @I2.a
    Collection<V> c(@CheckForNull @I2.c("K") Object obj);

    void clear();

    boolean containsKey(@CheckForNull @I2.c("K") Object obj);

    boolean containsValue(@CheckForNull @I2.c("V") Object obj);

    @I2.a
    Collection<V> d(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable);

    boolean equals(@CheckForNull Object obj);

    boolean g0(@CheckForNull @I2.c("K") Object obj, @CheckForNull @I2.c("V") Object obj2);

    Collection<V> get(@InterfaceC12518f2 K k10);

    int hashCode();

    boolean isEmpty();

    V1<K> j();

    Map<K, Collection<V>> k();

    Set<K> keySet();

    @I2.a
    boolean put(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10);

    @I2.a
    boolean remove(@CheckForNull @I2.c("K") Object obj, @CheckForNull @I2.c("V") Object obj2);

    int size();

    Collection<Map.Entry<K, V>> v();

    Collection<V> values();

    @I2.a
    boolean w(S1<? extends K, ? extends V> s12);
}
