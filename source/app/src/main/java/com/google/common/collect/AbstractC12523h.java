package com.google.common.collect;

import com.google.common.collect.U1;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b
public abstract class AbstractC12523h<K, V> implements S1<K, V> {

    @CheckForNull
    @J2.b
    public transient Collection<Map.Entry<K, V>> f66648b;

    @CheckForNull
    @J2.b
    public transient Set<K> f66649c;

    @CheckForNull
    @J2.b
    public transient V1<K> f66650d;

    @CheckForNull
    @J2.b
    public transient Collection<V> f66651e;

    @CheckForNull
    @J2.b
    public transient Map<K, Collection<V>> f66652f;

    public class a extends U1.f<K, V> {
        public a() {
        }

        @Override
        public S1<K, V> a() {
            return AbstractC12523h.this;
        }

        @Override
        public Iterator<Map.Entry<K, V>> iterator() {
            return AbstractC12523h.this.h();
        }
    }

    public class b extends AbstractC12523h<K, V>.a implements Set<Map.Entry<K, V>> {
        public b(AbstractC12523h abstractC12523h) {
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

    public class c extends AbstractCollection<V> {
        public c() {
        }

        @Override
        public void clear() {
            AbstractC12523h.this.clear();
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return AbstractC12523h.this.containsValue(obj);
        }

        @Override
        public Iterator<V> iterator() {
            return AbstractC12523h.this.i();
        }

        @Override
        public int size() {
            return AbstractC12523h.this.size();
        }
    }

    @Override
    @I2.a
    public boolean Z(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable) {
        w2.H.E(iterable);
        if (iterable instanceof Collection) {
            Collection<? extends V> collection = (Collection) iterable;
            return !collection.isEmpty() && get(k10).addAll(collection);
        }
        Iterator<? extends V> it = iterable.iterator();
        return it.hasNext() && E1.a(get(k10), it);
    }

    public abstract Map<K, Collection<V>> a();

    public abstract Collection<Map.Entry<K, V>> b();

    @Override
    public boolean containsValue(@CheckForNull Object obj) {
        Iterator<Collection<V>> it = k().values().iterator();
        while (it.hasNext()) {
            if (it.next().contains(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override
    @I2.a
    public Collection<V> d(@InterfaceC12518f2 K k10, Iterable<? extends V> iterable) {
        w2.H.E(iterable);
        Collection<V> c10 = c(k10);
        Z(k10, iterable);
        return c10;
    }

    public abstract Set<K> e();

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return U1.g(this, obj);
    }

    public abstract V1<K> f();

    public abstract Collection<V> g();

    @Override
    public boolean g0(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Collection<V> collection = k().get(obj);
        return collection != null && collection.contains(obj2);
    }

    public abstract Iterator<Map.Entry<K, V>> h();

    @Override
    public int hashCode() {
        return k().hashCode();
    }

    public Iterator<V> i() {
        return Q1.O0(v().iterator());
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public V1<K> j() {
        V1<K> v12 = this.f66650d;
        if (v12 != null) {
            return v12;
        }
        V1<K> f10 = f();
        this.f66650d = f10;
        return f10;
    }

    @Override
    public Map<K, Collection<V>> k() {
        Map<K, Collection<V>> map = this.f66652f;
        if (map != null) {
            return map;
        }
        Map<K, Collection<V>> a10 = a();
        this.f66652f = a10;
        return a10;
    }

    @Override
    public Set<K> keySet() {
        Set<K> set = this.f66649c;
        if (set != null) {
            return set;
        }
        Set<K> e10 = e();
        this.f66649c = e10;
        return e10;
    }

    @Override
    @I2.a
    public boolean put(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10) {
        return get(k10).add(v10);
    }

    @Override
    @I2.a
    public boolean remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Collection<V> collection = k().get(obj);
        return collection != null && collection.remove(obj2);
    }

    public String toString() {
        return k().toString();
    }

    @Override
    public Collection<Map.Entry<K, V>> v() {
        Collection<Map.Entry<K, V>> collection = this.f66648b;
        if (collection != null) {
            return collection;
        }
        Collection<Map.Entry<K, V>> b10 = b();
        this.f66648b = b10;
        return b10;
    }

    @Override
    public Collection<V> values() {
        Collection<V> collection = this.f66651e;
        if (collection != null) {
            return collection;
        }
        Collection<V> g10 = g();
        this.f66651e = g10;
        return g10;
    }

    @Override
    @I2.a
    public boolean w(S1<? extends K, ? extends V> s12) {
        boolean z10 = false;
        for (Map.Entry<? extends K, ? extends V> entry : s12.v()) {
            z10 |= put(entry.getKey(), entry.getValue());
        }
        return z10;
    }
}
