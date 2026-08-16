package com.google.common.collect;

import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

@X
@v2.b
public interface N2<K, V> extends C2<K, V> {
    @Override
    @I2.a
    SortedSet<V> c(@CheckForNull Object obj);

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    default Collection d(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return d((N2<K, V>) obj, iterable);
    }

    @Override
    @I2.a
    SortedSet<V> d(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable);

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    default Collection y(@InterfaceC12518f2 Object obj) {
        return y((N2<K, V>) obj);
    }

    @Override
    SortedSet<V> y(@InterfaceC12518f2 K k10);

    @Override
    Map<K, Collection<V>> k();

    @CheckForNull
    Comparator<? super V> z();

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    default Set d(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return d((N2<K, V>) obj, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    default Set y(@InterfaceC12518f2 Object obj) {
        return y((N2<K, V>) obj);
    }
}
