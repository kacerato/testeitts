package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true)
public abstract class AbstractC12495a<K, V> extends C0<K, V> implements InterfaceC12582w<K, V>, Serializable {

    @v2.c
    public static final long f66400g = 0;

    public transient Map<K, V> f66401b;

    @q3.h
    public transient AbstractC12495a<V, K> f66402c;

    @CheckForNull
    public transient Set<K> f66403d;

    @CheckForNull
    public transient Set<V> f66404e;

    @CheckForNull
    public transient Set<Map.Entry<K, V>> f66405f;

    public class C0998a implements Iterator<Map.Entry<K, V>> {

        @CheckForNull
        public Map.Entry<K, V> f66406b;

        public final Iterator f66407c;

        public C0998a(Iterator it) {
            this.f66407c = it;
        }

        @Override
        public Map.Entry<K, V> next() {
            Map.Entry<K, V> entry = (Map.Entry) this.f66407c.next();
            this.f66406b = entry;
            return new b(entry);
        }

        @Override
        public boolean hasNext() {
            return this.f66407c.hasNext();
        }

        @Override
        public void remove() {
            Map.Entry<K, V> entry = this.f66406b;
            if (entry == null) {
                throw new IllegalStateException("no calls to next() since the last call to remove()");
            }
            V value = entry.getValue();
            this.f66407c.remove();
            AbstractC12495a.this.N0(value);
            this.f66406b = null;
        }
    }

    public class b extends D0<K, V> {

        public final Map.Entry<K, V> f66409b;

        public b(Map.Entry<K, V> entry) {
            this.f66409b = entry;
        }

        @Override
        public Map.Entry<K, V> k0() {
            return this.f66409b;
        }

        @Override
        public V setValue(V v10) {
            AbstractC12495a.this.G0(v10);
            w2.H.h0(AbstractC12495a.this.entrySet().contains(this), "entry no longer in map");
            if (w2.B.a(v10, getValue())) {
                return v10;
            }
            w2.H.u(!AbstractC12495a.this.containsValue(v10), "value already present: %s", v10);
            V value = this.f66409b.setValue(v10);
            w2.H.h0(w2.B.a(v10, AbstractC12495a.this.get(getKey())), "entry no longer in map");
            AbstractC12495a.this.Q0(getKey(), true, value, v10);
            return value;
        }
    }

    public class c extends K0<Map.Entry<K, V>> {

        public final Set<Map.Entry<K, V>> f66411b;

        public c() {
            this.f66411b = AbstractC12495a.this.f66401b.entrySet();
        }

        @Override
        public Set<Map.Entry<K, V>> k0() {
            return this.f66411b;
        }

        @Override
        public void clear() {
            AbstractC12495a.this.clear();
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return Q1.p(k0(), obj);
        }

        @Override
        public boolean containsAll(Collection<?> collection) {
            return u0(collection);
        }

        @Override
        public Iterator<Map.Entry<K, V>> iterator() {
            return AbstractC12495a.this.H0();
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            if (!this.f66411b.contains(obj) || !(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            AbstractC12495a.this.f66402c.f66401b.remove(entry.getValue());
            this.f66411b.remove(entry);
            return true;
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            return x0(collection);
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            return y0(collection);
        }

        @Override
        public Object[] toArray() {
            return z0();
        }

        @Override
        public <T> T[] toArray(T[] tArr) {
            return (T[]) B0(tArr);
        }

        public c(AbstractC12495a abstractC12495a, C0998a c0998a) {
            this();
        }
    }

    public static class d<K, V> extends AbstractC12495a<K, V> {

        @v2.c
        public static final long f66413h = 0;

        public d(Map<K, V> map, AbstractC12495a<V, K> abstractC12495a) {
            super(map, abstractC12495a, null);
        }

        @v2.c
        private void R0(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            P0((AbstractC12495a) objectInputStream.readObject());
        }

        @Override
        @InterfaceC12518f2
        public K F0(@InterfaceC12518f2 K k10) {
            return this.f66402c.G0(k10);
        }

        @Override
        @InterfaceC12518f2
        public V G0(@InterfaceC12518f2 V v10) {
            return this.f66402c.F0(v10);
        }

        @v2.c
        public Object U0() {
            return A8().A8();
        }

        @v2.c
        public final void V0(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(A8());
        }

        @Override
        public Object k0() {
            return super.k0();
        }

        @Override
        public Collection values() {
            return super.values();
        }
    }

    public class e extends K0<K> {
        public e() {
        }

        @Override
        public Set<K> k0() {
            return AbstractC12495a.this.f66401b.o();
        }

        @Override
        public void clear() {
            AbstractC12495a.this.clear();
        }

        @Override
        public Iterator<K> iterator() {
            return Q1.S(AbstractC12495a.this.entrySet().iterator());
        }

        @Override
        public boolean remove(@CheckForNull Object obj) {
            if (!contains(obj)) {
                return false;
            }
            AbstractC12495a.this.M0(obj);
            return true;
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            return x0(collection);
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            return y0(collection);
        }

        public e(AbstractC12495a abstractC12495a, C0998a c0998a) {
            this();
        }
    }

    public class f extends K0<V> {

        public final Set<V> f66415b;

        public f() {
            this.f66415b = AbstractC12495a.this.f66402c.o();
        }

        @Override
        public Set<V> k0() {
            return this.f66415b;
        }

        @Override
        public Iterator<V> iterator() {
            return Q1.O0(AbstractC12495a.this.entrySet().iterator());
        }

        @Override
        public Object[] toArray() {
            return z0();
        }

        @Override
        public String toString() {
            return C0();
        }

        @Override
        public <T> T[] toArray(T[] tArr) {
            return (T[]) B0(tArr);
        }

        public f(AbstractC12495a abstractC12495a, C0998a c0998a) {
            this();
        }
    }

    public AbstractC12495a(Map map, AbstractC12495a abstractC12495a, C0998a c0998a) {
        this(map, abstractC12495a);
    }

    @Override
    public InterfaceC12582w<V, K> A8() {
        return this.f66402c;
    }

    @I2.a
    @InterfaceC12518f2
    public K F0(@InterfaceC12518f2 K k10) {
        return k10;
    }

    @I2.a
    @InterfaceC12518f2
    public V G0(@InterfaceC12518f2 V v10) {
        return v10;
    }

    public Iterator<Map.Entry<K, V>> H0() {
        return new C0998a(this.f66401b.entrySet().iterator());
    }

    public AbstractC12495a<V, K> I0(Map<V, K> map) {
        return new d(map, this);
    }

    @CheckForNull
    public final V J0(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10, boolean z10) {
        F0(k10);
        G0(v10);
        boolean containsKey = containsKey(k10);
        if (containsKey && w2.B.a(v10, get(k10))) {
            return v10;
        }
        if (z10) {
            A8().remove(v10);
        } else {
            w2.H.u(!containsValue(v10), "value already present: %s", v10);
        }
        V put = this.f66401b.put(k10, v10);
        Q0(k10, containsKey, put, v10);
        return put;
    }

    @I2.a
    @InterfaceC12518f2
    public final V M0(@CheckForNull Object obj) {
        V v10 = (V) Z1.a(this.f66401b.remove(obj));
        N0(v10);
        return v10;
    }

    public final void N0(@InterfaceC12518f2 V v10) {
        this.f66402c.f66401b.remove(v10);
    }

    public void O0(Map<K, V> map, Map<V, K> map2) {
        w2.H.g0(this.f66401b == null);
        w2.H.g0(this.f66402c == null);
        w2.H.d(map.isEmpty());
        w2.H.d(map2.isEmpty());
        w2.H.d(map != map2);
        this.f66401b = map;
        this.f66402c = I0(map2);
    }

    public void P0(AbstractC12495a<V, K> abstractC12495a) {
        this.f66402c = abstractC12495a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void Q0(@InterfaceC12518f2 K k10, boolean z10, @CheckForNull V v10, @InterfaceC12518f2 V v11) {
        if (z10) {
            N0(Z1.a(v10));
        }
        this.f66402c.f66401b.put(v11, k10);
    }

    @Override
    @I2.a
    @CheckForNull
    public V U6(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10) {
        return J0(k10, v10, true);
    }

    @Override
    public void clear() {
        this.f66401b.clear();
        this.f66402c.f66401b.clear();
    }

    @Override
    public boolean containsValue(@CheckForNull Object obj) {
        return this.f66402c.containsKey(obj);
    }

    @Override
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f66405f;
        if (set != null) {
            return set;
        }
        c cVar = new c(this, null);
        this.f66405f = cVar;
        return cVar;
    }

    @Override
    public Set<K> o() {
        Set<K> set = this.f66403d;
        if (set != null) {
            return set;
        }
        e eVar = new e(this, null);
        this.f66403d = eVar;
        return eVar;
    }

    @Override
    public Map<K, V> k0() {
        return this.f66401b;
    }

    @Override
    @I2.a
    @CheckForNull
    public V put(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10) {
        return J0(k10, v10, false);
    }

    @Override
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override
    @I2.a
    @CheckForNull
    public V remove(@CheckForNull Object obj) {
        if (containsKey(obj)) {
            return M0(obj);
        }
        return null;
    }

    public AbstractC12495a(Map<K, V> map, Map<V, K> map2) {
        O0(map, map2);
    }

    @Override
    public Set<V> values() {
        Set<V> set = this.f66404e;
        if (set != null) {
            return set;
        }
        f fVar = new f(this, null);
        this.f66404e = fVar;
        return fVar;
    }

    public AbstractC12495a(Map<K, V> map, AbstractC12495a<V, K> abstractC12495a) {
        this.f66401b = map;
        this.f66402c = abstractC12495a;
    }
}
