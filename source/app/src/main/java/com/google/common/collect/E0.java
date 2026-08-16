package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b
public abstract class E0<K, V> extends I0 implements S1<K, V> {
    @Override
    @I2.a
    public boolean Z(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable) {
        return k0().Z(k10, iterable);
    }

    @I2.a
    public Collection<V> c(@CheckForNull Object obj) {
        return k0().c(obj);
    }

    @Override
    public void clear() {
        k0().clear();
    }

    @Override
    public boolean containsKey(@CheckForNull Object obj) {
        return k0().containsKey(obj);
    }

    @Override
    public boolean containsValue(@CheckForNull Object obj) {
        return k0().containsValue(obj);
    }

    @I2.a
    public Collection<V> d(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable) {
        return k0().d(k10, iterable);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return obj == this || k0().equals(obj);
    }

    @Override
    public boolean g0(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return k0().g0(obj, obj2);
    }

    public Collection<V> y(@InterfaceC12518f2 K k10) {
        return k0().y(k10);
    }

    @Override
    public int hashCode() {
        return k0().hashCode();
    }

    @Override
    public boolean isEmpty() {
        return k0().isEmpty();
    }

    @Override
    public V1<K> j() {
        return k0().j();
    }

    @Override
    public Map<K, Collection<V>> k() {
        return k0().k();
    }

    @Override
    public Set<K> keySet() {
        return k0().keySet();
    }

    @Override
    public abstract S1<K, V> k0();

    @Override
    @I2.a
    public boolean put(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10) {
        return k0().put(k10, v10);
    }

    @Override
    @I2.a
    public boolean remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return k0().remove(obj, obj2);
    }

    @Override
    public int size() {
        return k0().size();
    }

    @Override
    public Collection<Map.Entry<K, V>> v() {
        return k0().v();
    }

    @Override
    public Collection<V> values() {
        return k0().values();
    }

    @Override
    @I2.a
    public boolean w(S1<? extends K, ? extends V> s12) {
        return k0().w(s12);
    }
}
