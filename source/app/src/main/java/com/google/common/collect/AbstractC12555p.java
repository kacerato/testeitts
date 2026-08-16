package com.google.common.collect;

import com.google.common.collect.AbstractC12511e;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

@X
@v2.b
public abstract class AbstractC12555p<K, V> extends AbstractC12543m<K, V> implements N2<K, V> {

    public static final long f66763k = 430848587173315748L;

    public AbstractC12555p(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override
    public Collection<V> I(@InterfaceC12518f2 K k10, Collection<V> collection) {
        return collection instanceof NavigableSet ? new AbstractC12511e.m(k10, (NavigableSet) collection, null) : new AbstractC12511e.o(k10, (SortedSet) collection, null);
    }

    @Override
    public abstract SortedSet<V> x();

    @Override
    public SortedSet<V> C() {
        return (SortedSet<V>) H(x());
    }

    @Override
    public <E> SortedSet<E> H(Collection<E> collection) {
        return collection instanceof NavigableSet ? D2.O((NavigableSet) collection) : Collections.unmodifiableSortedSet((SortedSet) collection);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    public Collection d(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return d((AbstractC12555p<K, V>) obj, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Collection y(@InterfaceC12518f2 Object obj) {
        return y((AbstractC12555p<K, V>) obj);
    }

    @Override
    public Map<K, Collection<V>> k() {
        return super.k();
    }

    @Override
    public Collection<V> values() {
        return super.values();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    public Set d(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return d((AbstractC12555p<K, V>) obj, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Set y(@InterfaceC12518f2 Object obj) {
        return y((AbstractC12555p<K, V>) obj);
    }

    @Override
    @I2.a
    public SortedSet<V> c(@CheckForNull Object obj) {
        return (SortedSet) super.c(obj);
    }

    @Override
    @I2.a
    public SortedSet<V> d(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable) {
        return (SortedSet) super.d((AbstractC12555p<K, V>) k10, (Iterable) iterable);
    }

    @Override
    public SortedSet<V> y(@InterfaceC12518f2 K k10) {
        return (SortedSet) super.y((AbstractC12555p<K, V>) k10);
    }
}
