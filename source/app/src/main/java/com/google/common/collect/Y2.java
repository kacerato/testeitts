package com.google.common.collect;

import com.google.common.collect.Q1;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import javax.annotation.CheckForNull;
import w2.InterfaceC15902t;

@X
@v2.b(serializable = true)
public class Y2<R, C, V> extends P2<R, C, V> {

    public static final long f66382l = 0;

    public final Comparator<? super C> f66383k;

    public class a extends AbstractC12503c<C> {

        @CheckForNull
        public C f66384d;

        public final Iterator f66385e;

        public final Comparator f66386f;

        public a(Y2 y22, Iterator it, Comparator comparator) {
            this.f66385e = it;
            this.f66386f = comparator;
        }

        @Override
        @CheckForNull
        public C a() {
            while (this.f66385e.hasNext()) {
                C c10 = (C) this.f66385e.next();
                C c11 = this.f66384d;
                if (c11 == null || this.f66386f.compare(c10, c11) != 0) {
                    this.f66384d = c10;
                    return c10;
                }
            }
            this.f66384d = null;
            return b();
        }
    }

    public static class b<C, V> implements w2.Q<TreeMap<C, V>>, Serializable {

        public static final long f66387c = 0;

        public final Comparator<? super C> f66388b;

        public b(Comparator<? super C> comparator) {
            this.f66388b = comparator;
        }

        @Override
        public TreeMap<C, V> get() {
            return new TreeMap<>(this.f66388b);
        }
    }

    public class c extends Q2<R, C, V>.g implements SortedMap<C, V> {

        @CheckForNull
        public final C f66389e;

        @CheckForNull
        public final C f66390f;

        @CheckForNull
        public transient SortedMap<C, V> f66391g;

        public c(Y2 y22, R r10) {
            this(r10, null, null);
        }

        @Override
        public Comparator<? super C> comparator() {
            return Y2.this.v();
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            return p(obj) && super.containsKey(obj);
        }

        @Override
        public C firstKey() {
            k();
            Map<C, V> map = this.f66087c;
            if (map != null) {
                return (C) ((SortedMap) map).firstKey();
            }
            throw new NoSuchElementException();
        }

        @Override
        public SortedMap<C, V> headMap(C c10) {
            w2.H.d(p(w2.H.E(c10)));
            return new c(this.f66086b, this.f66389e, c10);
        }

        @Override
        public void j() {
            q();
            SortedMap<C, V> sortedMap = this.f66391g;
            if (sortedMap == null || !sortedMap.isEmpty()) {
                return;
            }
            Y2.this.f66059d.remove(this.f66086b);
            this.f66391g = null;
            this.f66087c = null;
        }

        @Override
        public C lastKey() {
            k();
            Map<C, V> map = this.f66087c;
            if (map != null) {
                return (C) ((SortedMap) map).lastKey();
            }
            throw new NoSuchElementException();
        }

        public int m(Object obj, Object obj2) {
            return comparator().compare(obj, obj2);
        }

        @Override
        @CheckForNull
        public SortedMap<C, V> i() {
            q();
            SortedMap<C, V> sortedMap = this.f66391g;
            if (sortedMap == null) {
                return null;
            }
            C c10 = this.f66389e;
            if (c10 != null) {
                sortedMap = sortedMap.tailMap(c10);
            }
            C c11 = this.f66390f;
            return c11 != null ? sortedMap.headMap(c11) : sortedMap;
        }

        @Override
        public SortedSet<C> o() {
            return new Q1.G(this);
        }

        public boolean p(@CheckForNull Object obj) {
            C c10;
            C c11;
            return obj != null && ((c10 = this.f66389e) == null || m(c10, obj) <= 0) && ((c11 = this.f66390f) == null || m(c11, obj) > 0);
        }

        @Override
        @CheckForNull
        public V put(C c10, V v10) {
            w2.H.d(p(w2.H.E(c10)));
            return (V) super.put(c10, v10);
        }

        public void q() {
            SortedMap<C, V> sortedMap = this.f66391g;
            if (sortedMap == null || (sortedMap.isEmpty() && Y2.this.f66059d.containsKey(this.f66086b))) {
                this.f66391g = (SortedMap) Y2.this.f66059d.get(this.f66086b);
            }
        }

        @Override
        public SortedMap<C, V> subMap(C c10, C c11) {
            w2.H.d(p(w2.H.E(c10)) && p(w2.H.E(c11)));
            return new c(this.f66086b, c10, c11);
        }

        @Override
        public SortedMap<C, V> tailMap(C c10) {
            w2.H.d(p(w2.H.E(c10)));
            return new c(this.f66086b, c10, this.f66390f);
        }

        public c(R r10, @CheckForNull C c10, @CheckForNull C c11) {
            super(r10);
            this.f66389e = c10;
            this.f66390f = c11;
            w2.H.d(c10 == null || c11 == null || m(c10, c11) <= 0);
        }
    }

    public Y2(Comparator<? super R> comparator, Comparator<? super C> comparator2) {
        super(new TreeMap(comparator), new b(comparator2));
        this.f66383k = comparator2;
    }

    public static Iterator C(Map map) {
        return map.o().iterator();
    }

    public static <R extends Comparable, C extends Comparable, V> Y2<R, C, V> w() {
        return new Y2<>(Ordering.A(), Ordering.A());
    }

    public static <R, C, V> Y2<R, C, V> y(Y2<R, C, ? extends V> y22) {
        Y2<R, C, V> y23 = new Y2<>(y22.E(), y22.v());
        y23.Y(y22);
        return y23;
    }

    public static <R, C, V> Y2<R, C, V> z(Comparator<? super R> comparator, Comparator<? super C> comparator2) {
        w2.H.E(comparator);
        w2.H.E(comparator2);
        return new Y2<>(comparator, comparator2);
    }

    @Override
    public Map A() {
        return super.A();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Map B(Object obj) {
        return super.B(obj);
    }

    @Override
    public SortedMap<C, V> i0(R r10) {
        return new c(this, r10);
    }

    @Deprecated
    public Comparator<? super R> E() {
        Comparator<? super R> comparator = x().comparator();
        Objects.requireNonNull(comparator);
        return comparator;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @I2.a
    @CheckForNull
    public Object L(Object obj, Object obj2, Object obj3) {
        return super.L(obj, obj2, obj3);
    }

    @Override
    public boolean Q(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.Q(obj, obj2);
    }

    @Override
    public void Y(S2 s22) {
        super.Y(s22);
    }

    @Override
    public Set c0() {
        return super.c0();
    }

    @Override
    public void clear() {
        super.clear();
    }

    @Override
    public boolean containsValue(@CheckForNull Object obj) {
        return super.containsValue(obj);
    }

    @Override
    public Set d0() {
        return super.d0();
    }

    @Override
    @CheckForNull
    public Object e(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.e(obj, obj2);
    }

    @Override
    public boolean e0(@CheckForNull Object obj) {
        return super.e0(obj);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    @Override
    public boolean g(@CheckForNull Object obj) {
        return super.g(obj);
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
    }

    @Override
    public Iterator<C> k() {
        Comparator<? super C> v10 = v();
        return new a(this, E1.O(D1.U(this.f66059d.values(), new InterfaceC15902t() {
            @Override
            public final Object apply(Object obj) {
                Iterator C10;
                C10 = Y2.C((Map) obj);
                return C10;
            }
        }), v10), v10);
    }

    @Override
    @I2.a
    @CheckForNull
    public Object remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override
    public int size() {
        return super.size();
    }

    @Override
    public String toString() {
        return super.toString();
    }

    @Deprecated
    public Comparator<? super C> v() {
        return this.f66383k;
    }

    @Override
    public Collection values() {
        return super.values();
    }

    @Override
    public SortedMap<R, Map<C, V>> u() {
        return super.u();
    }

    @Override
    public SortedSet<R> x() {
        return super.x();
    }
}
