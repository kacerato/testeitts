package com.google.common.collect;

import java.util.Collection;
import java.util.List;
import javax.annotation.CheckForNull;

@X
@v2.b
public abstract class B0<K, V> extends E0<K, V> implements L1<K, V> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    public Collection d(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return d((B0<K, V>) obj, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Collection y(@InterfaceC12518f2 Object obj) {
        return y((B0<K, V>) obj);
    }

    @Override
    public abstract L1<K, V> k0();

    @Override
    @I2.a
    public List<V> c(@CheckForNull Object obj) {
        return k0().c(obj);
    }

    @Override
    @I2.a
    public List<V> d(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable) {
        return k0().d((L1<K, V>) k10, (Iterable) iterable);
    }

    @Override
    public List<V> y(@InterfaceC12518f2 K k10) {
        return k0().y((L1<K, V>) k10);
    }
}
