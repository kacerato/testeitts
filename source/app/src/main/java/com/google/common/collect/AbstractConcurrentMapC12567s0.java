package com.google.common.collect;

import java.util.concurrent.ConcurrentMap;
import javax.annotation.CheckForNull;

@X
@v2.b
public abstract class AbstractConcurrentMapC12567s0<K, V> extends C0<K, V> implements ConcurrentMap<K, V> {
    @Override
    public abstract ConcurrentMap<K, V> k0();

    @Override
    @I2.a
    @CheckForNull
    public V putIfAbsent(K k10, V v10) {
        return k0().putIfAbsent(k10, v10);
    }

    @Override
    @I2.a
    public boolean remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return k0().remove(obj, obj2);
    }

    @Override
    @I2.a
    @CheckForNull
    public V replace(K k10, V v10) {
        return k0().replace(k10, v10);
    }

    @Override
    @I2.a
    public boolean replace(K k10, V v10, V v11) {
        return k0().replace(k10, v10, v11);
    }
}
