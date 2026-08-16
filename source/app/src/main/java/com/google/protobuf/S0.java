package com.google.protobuf;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class S0<K, V> implements InterfaceC12694m1 {

    public volatile boolean f68891b;

    public volatile d f68892c;

    public c<K, V> f68893d;

    public List<Y0> f68894e;

    public final a<K, V> f68895f;

    public interface a<K, V> {
        Y0 a(K key, V value);

        Y0 b();

        void c(Y0 message, Map<K, V> map);
    }

    public static class b<K, V> implements a<K, V> {

        public final Q0<K, V> f68896a;

        public b(Q0<K, V> defaultEntry) {
            this.f68896a = defaultEntry;
        }

        @Override
        public Y0 a(K key, V value) {
            return this.f68896a.newBuilderForType().w6(key).z6(value).buildPartial();
        }

        @Override
        public Y0 b() {
            return this.f68896a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void c(Y0 message, Map<K, V> map) {
            Q0 q02 = (Q0) message;
            map.put(q02.s6(), q02.u6());
        }
    }

    public static class c<K, V> implements Map<K, V> {

        public final InterfaceC12694m1 f68897b;

        public final Map<K, V> f68898c;

        public static class a<E> implements Collection<E> {

            public final InterfaceC12694m1 f68899b;

            public final Collection<E> f68900c;

            public a(InterfaceC12694m1 mutabilityOracle, Collection<E> delegate) {
                this.f68899b = mutabilityOracle;
                this.f68900c = delegate;
            }

            @Override
            public boolean add(E e10) {
                throw new UnsupportedOperationException();
            }

            @Override
            public boolean addAll(Collection<? extends E> c10) {
                throw new UnsupportedOperationException();
            }

            @Override
            public void clear() {
                this.f68899b.a();
                this.f68900c.clear();
            }

            @Override
            public boolean contains(Object o10) {
                return this.f68900c.contains(o10);
            }

            @Override
            public boolean containsAll(Collection<?> c10) {
                return this.f68900c.containsAll(c10);
            }

            @Override
            public boolean equals(Object o10) {
                return this.f68900c.equals(o10);
            }

            @Override
            public int hashCode() {
                return this.f68900c.hashCode();
            }

            @Override
            public boolean isEmpty() {
                return this.f68900c.isEmpty();
            }

            @Override
            public Iterator<E> iterator() {
                return new b(this.f68899b, this.f68900c.iterator());
            }

            @Override
            public boolean remove(Object o10) {
                this.f68899b.a();
                return this.f68900c.remove(o10);
            }

            @Override
            public boolean removeAll(Collection<?> c10) {
                this.f68899b.a();
                return this.f68900c.removeAll(c10);
            }

            @Override
            public boolean retainAll(Collection<?> c10) {
                this.f68899b.a();
                return this.f68900c.retainAll(c10);
            }

            @Override
            public int size() {
                return this.f68900c.size();
            }

            @Override
            public Object[] toArray() {
                return this.f68900c.toArray();
            }

            public String toString() {
                return this.f68900c.toString();
            }

            @Override
            public <T> T[] toArray(T[] tArr) {
                return (T[]) this.f68900c.toArray(tArr);
            }
        }

        public static class b<E> implements Iterator<E> {

            public final InterfaceC12694m1 f68901b;

            public final Iterator<E> f68902c;

            public b(InterfaceC12694m1 mutabilityOracle, Iterator<E> delegate) {
                this.f68901b = mutabilityOracle;
                this.f68902c = delegate;
            }

            public boolean equals(Object obj) {
                return this.f68902c.equals(obj);
            }

            @Override
            public boolean hasNext() {
                return this.f68902c.hasNext();
            }

            public int hashCode() {
                return this.f68902c.hashCode();
            }

            @Override
            public E next() {
                return this.f68902c.next();
            }

            @Override
            public void remove() {
                this.f68901b.a();
                this.f68902c.remove();
            }

            public String toString() {
                return this.f68902c.toString();
            }
        }

        public static class C1033c<E> implements Set<E> {

            public final InterfaceC12694m1 f68903b;

            public final Set<E> f68904c;

            public C1033c(InterfaceC12694m1 mutabilityOracle, Set<E> delegate) {
                this.f68903b = mutabilityOracle;
                this.f68904c = delegate;
            }

            @Override
            public boolean add(E e10) {
                this.f68903b.a();
                return this.f68904c.add(e10);
            }

            @Override
            public boolean addAll(Collection<? extends E> c10) {
                this.f68903b.a();
                return this.f68904c.addAll(c10);
            }

            @Override
            public void clear() {
                this.f68903b.a();
                this.f68904c.clear();
            }

            @Override
            public boolean contains(Object o10) {
                return this.f68904c.contains(o10);
            }

            @Override
            public boolean containsAll(Collection<?> c10) {
                return this.f68904c.containsAll(c10);
            }

            @Override
            public boolean equals(Object o10) {
                return this.f68904c.equals(o10);
            }

            @Override
            public int hashCode() {
                return this.f68904c.hashCode();
            }

            @Override
            public boolean isEmpty() {
                return this.f68904c.isEmpty();
            }

            @Override
            public Iterator<E> iterator() {
                return new b(this.f68903b, this.f68904c.iterator());
            }

            @Override
            public boolean remove(Object o10) {
                this.f68903b.a();
                return this.f68904c.remove(o10);
            }

            @Override
            public boolean removeAll(Collection<?> c10) {
                this.f68903b.a();
                return this.f68904c.removeAll(c10);
            }

            @Override
            public boolean retainAll(Collection<?> c10) {
                this.f68903b.a();
                return this.f68904c.retainAll(c10);
            }

            @Override
            public int size() {
                return this.f68904c.size();
            }

            @Override
            public Object[] toArray() {
                return this.f68904c.toArray();
            }

            public String toString() {
                return this.f68904c.toString();
            }

            @Override
            public <T> T[] toArray(T[] tArr) {
                return (T[]) this.f68904c.toArray(tArr);
            }
        }

        public c(InterfaceC12694m1 mutabilityOracle, Map<K, V> delegate) {
            this.f68897b = mutabilityOracle;
            this.f68898c = delegate;
        }

        @Override
        public void clear() {
            this.f68897b.a();
            this.f68898c.clear();
        }

        @Override
        public boolean containsKey(Object key) {
            return this.f68898c.containsKey(key);
        }

        @Override
        public boolean containsValue(Object value) {
            return this.f68898c.containsValue(value);
        }

        @Override
        public Set<Map.Entry<K, V>> entrySet() {
            return new C1033c(this.f68897b, this.f68898c.entrySet());
        }

        @Override
        public boolean equals(Object o10) {
            return this.f68898c.equals(o10);
        }

        @Override
        public V get(Object key) {
            return this.f68898c.get(key);
        }

        @Override
        public int hashCode() {
            return this.f68898c.hashCode();
        }

        @Override
        public boolean isEmpty() {
            return this.f68898c.isEmpty();
        }

        @Override
        public Set<K> o() {
            return new C1033c(this.f68897b, this.f68898c.o());
        }

        @Override
        public V put(K key, V value) {
            this.f68897b.a();
            D0.d(key);
            D0.d(value);
            return this.f68898c.put(key, value);
        }

        @Override
        public void putAll(Map<? extends K, ? extends V> m10) {
            this.f68897b.a();
            for (K k10 : m10.o()) {
                D0.d(k10);
                D0.d(m10.get(k10));
            }
            this.f68898c.putAll(m10);
        }

        @Override
        public V remove(Object key) {
            this.f68897b.a();
            return this.f68898c.remove(key);
        }

        @Override
        public int size() {
            return this.f68898c.size();
        }

        public String toString() {
            return this.f68898c.toString();
        }

        @Override
        public Collection<V> values() {
            return new a(this.f68897b, this.f68898c.values());
        }
    }

    public enum d {
        MAP,
        LIST,
        BOTH
    }

    public S0(a<K, V> converter, d mode, Map<K, V> mapData) {
        this.f68895f = converter;
        this.f68891b = true;
        this.f68892c = mode;
        this.f68893d = new c<>(this, mapData);
        this.f68894e = null;
    }

    public static <K, V> S0<K, V> h(Q0<K, V> defaultEntry) {
        return new S0<>(defaultEntry, d.MAP, Collections.emptyMap());
    }

    public static <K, V> S0<K, V> q(Q0<K, V> defaultEntry) {
        return new S0<>(defaultEntry, d.MAP, new LinkedHashMap());
    }

    @Override
    public void a() {
        if (!n()) {
            throw new UnsupportedOperationException();
        }
    }

    public void b() {
        this.f68893d = new c<>(this, new LinkedHashMap());
        this.f68892c = d.MAP;
    }

    public final Y0 c(K key, V value) {
        return this.f68895f.a(key, value);
    }

    public final c<K, V> d(List<Y0> listData) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Y0> it = listData.iterator();
        while (it.hasNext()) {
            f(it.next(), linkedHashMap);
        }
        return new c<>(this, linkedHashMap);
    }

    public final List<Y0> e(c<K, V> mapData) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<K, V> entry : mapData.entrySet()) {
            arrayList.add(c(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    public boolean equals(Object object) {
        if (object instanceof S0) {
            return T0.k(j(), ((S0) object).j());
        }
        return false;
    }

    public final void f(Y0 message, Map<K, V> map) {
        this.f68895f.c(message, map);
    }

    public S0<K, V> g() {
        return new S0<>(this.f68895f, d.MAP, T0.e(j()));
    }

    public int hashCode() {
        return T0.a(j());
    }

    public List<Y0> i() {
        d dVar = this.f68892c;
        d dVar2 = d.MAP;
        if (dVar == dVar2) {
            synchronized (this) {
                try {
                    if (this.f68892c == dVar2) {
                        this.f68894e = e(this.f68893d);
                        this.f68892c = d.BOTH;
                    }
                } finally {
                }
            }
        }
        return Collections.unmodifiableList(this.f68894e);
    }

    public Map<K, V> j() {
        d dVar = this.f68892c;
        d dVar2 = d.LIST;
        if (dVar == dVar2) {
            synchronized (this) {
                try {
                    if (this.f68892c == dVar2) {
                        this.f68893d = d(this.f68894e);
                        this.f68892c = d.BOTH;
                    }
                } finally {
                }
            }
        }
        return Collections.unmodifiableMap(this.f68893d);
    }

    public Y0 k() {
        return this.f68895f.b();
    }

    public List<Y0> l() {
        d dVar = this.f68892c;
        d dVar2 = d.LIST;
        if (dVar != dVar2) {
            if (this.f68892c == d.MAP) {
                this.f68894e = e(this.f68893d);
            }
            this.f68893d = null;
            this.f68892c = dVar2;
        }
        return this.f68894e;
    }

    public Map<K, V> m() {
        d dVar = this.f68892c;
        d dVar2 = d.MAP;
        if (dVar != dVar2) {
            if (this.f68892c == d.LIST) {
                this.f68893d = d(this.f68894e);
            }
            this.f68894e = null;
            this.f68892c = dVar2;
        }
        return this.f68893d;
    }

    public boolean n() {
        return this.f68891b;
    }

    public void o() {
        this.f68891b = false;
    }

    public void p(S0<K, V> other) {
        m().putAll(T0.e(other.j()));
    }

    public S0(Q0<K, V> defaultEntry, d mode, Map<K, V> mapData) {
        this(new b(defaultEntry), mode, mapData);
    }
}
