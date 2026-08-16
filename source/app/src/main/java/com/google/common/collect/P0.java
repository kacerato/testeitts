package com.google.common.collect;

import java.util.Collection;
import java.util.Comparator;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

@X
@v2.b
public abstract class P0<K, V> extends L0<K, V> implements N2<K, V> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Collection d(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return d((P0<K, V>) obj, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Collection y(@InterfaceC12518f2 Object obj) {
        return y((P0<K, V>) obj);
    }

    @Override
    public abstract N2<K, V> k0();

    @Override
    @CheckForNull
    public Comparator<? super V> z() {
        return k0().z();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Set d(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return d((P0<K, V>) obj, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Set y(@InterfaceC12518f2 Object obj) {
        return y((P0<K, V>) obj);
    }

    @Override
    public SortedSet<V> c(@CheckForNull Object obj) {
        return k0().c(obj);
    }

    @Override
    public SortedSet<V> d(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable) {
        return k0().d((N2<K, V>) k10, (Iterable) iterable);
    }

    @Override
    public SortedSet<V> y(@InterfaceC12518f2 K k10) {
        return k0().y((N2<K, V>) k10);
    }
}
