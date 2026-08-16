package com.google.common.collect;

import com.google.common.collect.AbstractC12511e;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b
public abstract class AbstractC12543m<K, V> extends AbstractC12511e<K, V> implements C2<K, V> {

    public static final long f66715j = 7431625294878419160L;

    public AbstractC12543m(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override
    public <E> Collection<E> H(Collection<E> collection) {
        return Collections.unmodifiableSet((Set) collection);
    }

    @Override
    public Collection<V> I(@InterfaceC12518f2 K k10, Collection<V> collection) {
        return new AbstractC12511e.n(k10, (Set) collection);
    }

    @Override
    public abstract Set<V> x();

    @Override
    public Set<V> C() {
        return Collections.emptySet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    public Collection d(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return d((AbstractC12543m<K, V>) obj, iterable);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Collection get(@InterfaceC12518f2 Object obj) {
        return get((AbstractC12543m<K, V>) obj);
    }

    @Override
    public Map<K, Collection<V>> k() {
        return super.k();
    }

    @Override
    @I2.a
    public boolean put(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10) {
        return super.put(k10, v10);
    }

    @Override
    @I2.a
    public Set<V> c(@CheckForNull Object obj) {
        return (Set) super.c(obj);
    }

    @Override
    @I2.a
    public Set<V> d(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable) {
        return (Set) super.d((AbstractC12543m<K, V>) k10, (Iterable) iterable);
    }

    @Override
    public Set<V> get(@InterfaceC12518f2 K k10) {
        return (Set) super.get((AbstractC12543m<K, V>) k10);
    }

    @Override
    public Set<Map.Entry<K, V>> v() {
        return (Set) super.v();
    }
}
