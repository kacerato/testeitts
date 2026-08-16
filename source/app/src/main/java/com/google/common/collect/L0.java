package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b
public abstract class L0<K, V> extends E0<K, V> implements C2<K, V> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    public Collection d(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return d((L0<K, V>) obj, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Collection y(@InterfaceC12518f2 Object obj) {
        return y((L0<K, V>) obj);
    }

    @Override
    public abstract C2<K, V> k0();

    @Override
    @I2.a
    public Set<V> c(@CheckForNull Object obj) {
        return k0().c(obj);
    }

    @Override
    @I2.a
    public Set<V> d(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable) {
        return k0().d((C2<K, V>) k10, (Iterable) iterable);
    }

    @Override
    public Set<V> y(@InterfaceC12518f2 K k10) {
        return k0().y((C2<K, V>) k10);
    }

    @Override
    public Set<Map.Entry<K, V>> v() {
        return k0().v();
    }
}
