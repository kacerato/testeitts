package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import javax.annotation.CheckForNull;

@X
@v2.b
public abstract class AbstractC12507d<K, V> extends AbstractC12511e<K, V> implements L1<K, V> {

    public static final long f66516j = 6588350623831699109L;

    public AbstractC12507d(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override
    public <E> Collection<E> H(Collection<E> collection) {
        return Collections.unmodifiableList((List) collection);
    }

    @Override
    public Collection<V> I(@InterfaceC12518f2 K k10, Collection<V> collection) {
        return J(k10, (List) collection, null);
    }

    @Override
    public abstract List<V> x();

    @Override
    public List<V> C() {
        return Collections.emptyList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    public Collection d(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return d((AbstractC12507d<K, V>) obj, iterable);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Collection get(@InterfaceC12518f2 Object obj) {
        return get((AbstractC12507d<K, V>) obj);
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
    public List<V> c(@CheckForNull Object obj) {
        return (List) super.c(obj);
    }

    @Override
    @I2.a
    public List<V> d(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable) {
        return (List) super.d((AbstractC12507d<K, V>) k10, (Iterable) iterable);
    }

    @Override
    public List<V> get(@InterfaceC12518f2 K k10) {
        return (List) super.get((AbstractC12507d<K, V>) k10);
    }
}
