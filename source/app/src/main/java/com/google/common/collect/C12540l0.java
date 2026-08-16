package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b
public final class C12540l0<K, V> extends C12536k0<K, V> implements InterfaceC12552o0<K, V> {

    public class a extends C12536k0<K, V>.c implements Set<Map.Entry<K, V>> {
        public a(C12540l0 c12540l0) {
            super();
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            return D2.g(this, obj);
        }

        @Override
        public int hashCode() {
            return D2.k(this);
        }
    }

    public C12540l0(C2<K, V> c22, w2.I<? super K> i10) {
        super(c22, i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Collection d(@InterfaceC12518f2 Object obj, Iterable iterable) {
        return d((C12540l0<K, V>) obj, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Collection y(@InterfaceC12518f2 Object obj) {
        return y((C12540l0<K, V>) obj);
    }

    @Override
    public Set<Map.Entry<K, V>> b() {
        return new a(this);
    }

    @Override
    public Set<V> c(@CheckForNull Object obj) {
        return (Set) super.c(obj);
    }

    @Override
    public Set<V> d(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable) {
        return (Set) super.d((C12540l0<K, V>) k10, (Iterable) iterable);
    }

    @Override
    public Set<V> y(@InterfaceC12518f2 K k10) {
        return (Set) super.y((C12540l0<K, V>) k10);
    }

    @Override
    public C2<K, V> o() {
        return (C2) this.f66700g;
    }

    @Override
    public Set<Map.Entry<K, V>> v() {
        return (Set) super.v();
    }
}
