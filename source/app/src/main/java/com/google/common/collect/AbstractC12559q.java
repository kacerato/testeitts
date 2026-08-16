package com.google.common.collect;

import com.google.common.collect.S2;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b
public abstract class AbstractC12559q<R, C, V> implements S2<R, C, V> {

    @CheckForNull
    @J2.b
    public transient Set<S2.a<R, C, V>> f66788b;

    @CheckForNull
    @J2.b
    public transient Collection<V> f66789c;

    public class a extends V2<S2.a<R, C, V>, V> {
        public a(AbstractC12559q abstractC12559q, Iterator it) {
            super(it);
        }

        @Override
        @InterfaceC12518f2
        public V a(S2.a<R, C, V> aVar) {
            return aVar.getValue();
        }
    }

    public class b extends AbstractSet<S2.a<R, C, V>> {
        public b() {
        }

        @Override
        public void clear() {
            AbstractC12559q.this.clear();
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof S2.a)) {
                return false;
            }
            S2.a aVar = (S2.a) obj;
            Map map = (Map) Q1.p0(AbstractC12559q.this.u(), aVar.b());
            return map != null && C.j(map.entrySet(), Q1.O(aVar.a(), aVar.getValue()));
        }

        @Override
        public Iterator<S2.a<R, C, V>> iterator() {
            return AbstractC12559q.this.a();
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            if (!(obj instanceof S2.a)) {
                return false;
            }
            S2.a aVar = (S2.a) obj;
            Map map = (Map) Q1.p0(AbstractC12559q.this.u(), aVar.b());
            return map != null && C.k(map.entrySet(), Q1.O(aVar.a(), aVar.getValue()));
        }

        @Override
        public int size() {
            return AbstractC12559q.this.size();
        }
    }

    public class c extends AbstractCollection<V> {
        public c() {
        }

        @Override
        public void clear() {
            AbstractC12559q.this.clear();
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return AbstractC12559q.this.containsValue(obj);
        }

        @Override
        public Iterator<V> iterator() {
            return AbstractC12559q.this.d();
        }

        @Override
        public int size() {
            return AbstractC12559q.this.size();
        }
    }

    @Override
    @I2.a
    @CheckForNull
    public V L(@InterfaceC12518f2 R r10, @InterfaceC12518f2 C c10, @InterfaceC12518f2 V v10) {
        return i0(r10).put(c10, v10);
    }

    @Override
    public boolean Q(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Map map = (Map) Q1.p0(u(), obj);
        return map != null && Q1.o0(map, obj2);
    }

    @Override
    public void Y(S2<? extends R, ? extends C, ? extends V> s22) {
        for (S2.a<? extends R, ? extends C, ? extends V> aVar : s22.c0()) {
            L(aVar.b(), aVar.a(), aVar.getValue());
        }
    }

    public abstract Iterator<S2.a<R, C, V>> a();

    public Set<S2.a<R, C, V>> b() {
        return new b();
    }

    public Collection<V> c() {
        return new c();
    }

    @Override
    public Set<S2.a<R, C, V>> c0() {
        Set<S2.a<R, C, V>> set = this.f66788b;
        if (set != null) {
            return set;
        }
        Set<S2.a<R, C, V>> b10 = b();
        this.f66788b = b10;
        return b10;
    }

    @Override
    public void clear() {
        E1.h(c0().iterator());
    }

    @Override
    public boolean containsValue(@CheckForNull Object obj) {
        Iterator<Map<C, V>> it = u().values().iterator();
        while (it.hasNext()) {
            if (it.next().containsValue(obj)) {
                return true;
            }
        }
        return false;
    }

    public Iterator<V> d() {
        return new a(this, c0().iterator());
    }

    @Override
    public Set<C> d0() {
        return A().o();
    }

    @Override
    @CheckForNull
    public V e(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Map map = (Map) Q1.p0(u(), obj);
        if (map == null) {
            return null;
        }
        return (V) Q1.p0(map, obj2);
    }

    @Override
    public boolean e0(@CheckForNull Object obj) {
        return Q1.o0(u(), obj);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return T2.b(this, obj);
    }

    @Override
    public boolean g(@CheckForNull Object obj) {
        return Q1.o0(A(), obj);
    }

    @Override
    public int hashCode() {
        return c0().hashCode();
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    @I2.a
    @CheckForNull
    public V remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Map map = (Map) Q1.p0(u(), obj);
        if (map == null) {
            return null;
        }
        return (V) Q1.q0(map, obj2);
    }

    public String toString() {
        return u().toString();
    }

    @Override
    public Collection<V> values() {
        Collection<V> collection = this.f66789c;
        if (collection != null) {
            return collection;
        }
        Collection<V> c10 = c();
        this.f66789c = c10;
        return c10;
    }

    @Override
    public Set<R> x() {
        return u().o();
    }
}
