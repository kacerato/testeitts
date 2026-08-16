package com.google.common.collect;

import java.util.Collection;
import java.util.List;
import javax.annotation.CheckForNull;

@X
@v2.b
public final class C12532j0<K, V> extends C12536k0<K, V> implements L1<K, V> {
    public C12532j0(L1<K, V> l12, w2.I<? super K> i10) {
        super(l12, i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Collection d(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return d((C12532j0<K, V>) obj, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Collection y(@InterfaceC12518f2 Object obj) {
        return y((C12532j0<K, V>) obj);
    }

    @Override
    public L1<K, V> o() {
        return (L1) super.o();
    }

    @Override
    public List<V> c(@CheckForNull Object obj) {
        return (List) super.c(obj);
    }

    @Override
    public List<V> d(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable) {
        return (List) super.d((C12532j0<K, V>) k10, (Iterable) iterable);
    }

    @Override
    public List<V> y(@InterfaceC12518f2 K k10) {
        return (List) super.y((C12532j0<K, V>) k10);
    }
}
