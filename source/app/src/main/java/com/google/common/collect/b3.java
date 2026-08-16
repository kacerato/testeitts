package com.google.common.collect;

import com.google.common.collect.Q1;
import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@v2.c
@X
@InterfaceC15800a
public final class b3<K extends Comparable, V> implements InterfaceC12542l2<K, V> {

    public static final InterfaceC12542l2<Comparable<?>, Object> f66455c = new a();

    public final NavigableMap<Q<K>, c<K, V>> f66456b = Q1.f0();

    public class a implements InterfaceC12542l2<Comparable<?>, Object> {
        @Override
        public void a(C12534j2<Comparable<?>> c12534j2) {
            w2.H.E(c12534j2);
        }

        @Override
        public C12534j2<Comparable<?>> c() {
            throw new NoSuchElementException();
        }

        @Override
        public void clear() {
        }

        @Override
        public InterfaceC12542l2<Comparable<?>, Object> d(C12534j2<Comparable<?>> c12534j2) {
            w2.H.E(c12534j2);
            return this;
        }

        @Override
        public Map<C12534j2<Comparable<?>>, Object> e() {
            return Collections.emptyMap();
        }

        @Override
        @CheckForNull
        public Map.Entry<C12534j2<Comparable<?>>, Object> f(Comparable<?> comparable) {
            return null;
        }

        @Override
        public Map<C12534j2<Comparable<?>>, Object> g() {
            return Collections.emptyMap();
        }

        @Override
        public void h(InterfaceC12542l2<Comparable<?>, Object> interfaceC12542l2) {
            if (!interfaceC12542l2.e().isEmpty()) {
                throw new IllegalArgumentException("Cannot putAll(nonEmptyRangeMap) into an empty subRangeMap");
            }
        }

        @Override
        public void i(C12534j2<Comparable<?>> c12534j2, Object obj) {
            w2.H.E(c12534j2);
            String valueOf = String.valueOf(c12534j2);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 46);
            sb2.append("Cannot insert range ");
            sb2.append(valueOf);
            sb2.append(" into an empty subRangeMap");
            throw new IllegalArgumentException(sb2.toString());
        }

        @Override
        @CheckForNull
        public Object j(Comparable<?> comparable) {
            return null;
        }

        @Override
        public void k(C12534j2<Comparable<?>> c12534j2, Object obj) {
            w2.H.E(c12534j2);
            String valueOf = String.valueOf(c12534j2);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 46);
            sb2.append("Cannot insert range ");
            sb2.append(valueOf);
            sb2.append(" into an empty subRangeMap");
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    public final class b extends Q1.A<C12534j2<K>, V> {

        public final Iterable<Map.Entry<C12534j2<K>, V>> f66457b;

        public b(Iterable<c<K, V>> iterable) {
            this.f66457b = iterable;
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            return get(obj) != null;
        }

        @Override
        public Iterator<Map.Entry<C12534j2<K>, V>> e() {
            return this.f66457b.iterator();
        }

        @Override
        @CheckForNull
        public V get(@CheckForNull Object obj) {
            if (!(obj instanceof C12534j2)) {
                return null;
            }
            C12534j2 c12534j2 = (C12534j2) obj;
            c cVar = (c) b3.this.f66456b.get(c12534j2.f66693b);
            if (cVar == null || !cVar.getKey().equals(c12534j2)) {
                return null;
            }
            return (V) cVar.getValue();
        }

        @Override
        public int size() {
            return b3.this.f66456b.size();
        }
    }

    public static final class c<K extends Comparable, V> extends AbstractC12519g<C12534j2<K>, V> {

        public final C12534j2<K> f66459b;

        public final V f66460c;

        public c(Q<K> q10, Q<K> q11, V v10) {
            this(C12534j2.k(q10, q11), v10);
        }

        public boolean a(K k10) {
            return this.f66459b.i(k10);
        }

        @Override
        public C12534j2<K> getKey() {
            return this.f66459b;
        }

        public Q<K> f() {
            return this.f66459b.f66693b;
        }

        @Override
        public V getValue() {
            return this.f66460c;
        }

        public Q<K> h() {
            return this.f66459b.f66694c;
        }

        public c(C12534j2<K> c12534j2, V v10) {
            this.f66459b = c12534j2;
            this.f66460c = v10;
        }
    }

    public class d implements InterfaceC12542l2<K, V> {

        public final C12534j2<K> f66461b;

        public class a extends b3<K, V>.d.b {

            public class C0999a extends AbstractC12503c<Map.Entry<C12534j2<K>, V>> {

                public final Iterator f66464d;

                public C0999a(Iterator it) {
                    this.f66464d = it;
                }

                @Override
                @CheckForNull
                public Map.Entry<C12534j2<K>, V> a() {
                    if (!this.f66464d.hasNext()) {
                        return (Map.Entry) b();
                    }
                    c cVar = (c) this.f66464d.next();
                    return cVar.h().compareTo(d.this.f66461b.f66693b) <= 0 ? (Map.Entry) b() : Q1.O(cVar.getKey().s(d.this.f66461b), cVar.getValue());
                }
            }

            public a() {
                super();
            }

            @Override
            public Iterator<Map.Entry<C12534j2<K>, V>> e() {
                return d.this.f66461b.v() ? E1.u() : new C0999a(b3.this.f66456b.headMap(d.this.f66461b.f66694c, false).descendingMap().values().iterator());
            }
        }

        public class b extends AbstractMap<C12534j2<K>, V> {

            public class a extends Q1.B<C12534j2<K>, V> {
                public a(Map map) {
                    super(map);
                }

                @Override
                public boolean remove(@CheckForNull Object obj) {
                    return b.this.remove(obj) != null;
                }

                @Override
                public boolean retainAll(Collection<?> collection) {
                    return b.this.f(w2.J.h(w2.J.q(w2.J.n(collection)), Q1.R()));
                }
            }

            public class C1000b extends Q1.s<C12534j2<K>, V> {
                public C1000b() {
                }

                @Override
                public Map<C12534j2<K>, V> a() {
                    return b.this;
                }

                @Override
                public boolean isEmpty() {
                    return !iterator().hasNext();
                }

                @Override
                public Iterator<Map.Entry<C12534j2<K>, V>> iterator() {
                    return b.this.e();
                }

                @Override
                public boolean retainAll(Collection<?> collection) {
                    return b.this.f(w2.J.q(w2.J.n(collection)));
                }

                @Override
                public int size() {
                    return E1.Z(iterator());
                }
            }

            public class c extends AbstractC12503c<Map.Entry<C12534j2<K>, V>> {

                public final Iterator f66469d;

                public c(Iterator it) {
                    this.f66469d = it;
                }

                @Override
                @CheckForNull
                public Map.Entry<C12534j2<K>, V> a() {
                    while (this.f66469d.hasNext()) {
                        c cVar = (c) this.f66469d.next();
                        if (cVar.f().compareTo(d.this.f66461b.f66694c) >= 0) {
                            return (Map.Entry) b();
                        }
                        if (cVar.h().compareTo(d.this.f66461b.f66693b) > 0) {
                            return Q1.O(cVar.getKey().s(d.this.f66461b), cVar.getValue());
                        }
                    }
                    return (Map.Entry) b();
                }
            }

            public class C1001d extends Q1.Q<C12534j2<K>, V> {
                public C1001d(Map map) {
                    super(map);
                }

                @Override
                public boolean removeAll(Collection<?> collection) {
                    return b.this.f(w2.J.h(w2.J.n(collection), Q1.N0()));
                }

                @Override
                public boolean retainAll(Collection<?> collection) {
                    return b.this.f(w2.J.h(w2.J.q(w2.J.n(collection)), Q1.N0()));
                }
            }

            public b() {
            }

            @Override
            public void clear() {
                d.this.clear();
            }

            @Override
            public boolean containsKey(@CheckForNull Object obj) {
                return get(obj) != null;
            }

            public Iterator<Map.Entry<C12534j2<K>, V>> e() {
                if (d.this.f66461b.v()) {
                    return E1.u();
                }
                return new c(b3.this.f66456b.tailMap((Q) w2.z.a((Q) b3.this.f66456b.floorKey(d.this.f66461b.f66693b), d.this.f66461b.f66693b), true).values().iterator());
            }

            @Override
            public Set<Map.Entry<C12534j2<K>, V>> entrySet() {
                return new C1000b();
            }

            public final boolean f(w2.I<? super Map.Entry<C12534j2<K>, V>> i10) {
                ArrayList q10 = M1.q();
                for (Map.Entry<C12534j2<K>, V> entry : entrySet()) {
                    if (i10.apply(entry)) {
                        q10.add(entry.getKey());
                    }
                }
                Iterator<E> it = q10.iterator();
                while (it.hasNext()) {
                    b3.this.a((C12534j2) it.next());
                }
                return !q10.isEmpty();
            }

            @Override
            @CheckForNull
            public V get(@CheckForNull Object obj) {
                c cVar;
                try {
                    if (obj instanceof C12534j2) {
                        C12534j2 c12534j2 = (C12534j2) obj;
                        if (d.this.f66461b.n(c12534j2) && !c12534j2.v()) {
                            if (c12534j2.f66693b.compareTo(d.this.f66461b.f66693b) == 0) {
                                Map.Entry floorEntry = b3.this.f66456b.floorEntry(c12534j2.f66693b);
                                cVar = floorEntry != null ? (c) floorEntry.getValue() : null;
                            } else {
                                cVar = (c) b3.this.f66456b.get(c12534j2.f66693b);
                            }
                            if (cVar != null && cVar.getKey().u(d.this.f66461b) && cVar.getKey().s(d.this.f66461b).equals(c12534j2)) {
                                return (V) cVar.getValue();
                            }
                        }
                    }
                } catch (ClassCastException unused) {
                }
                return null;
            }

            @Override
            public Set<C12534j2<K>> o() {
                return new a(this);
            }

            @Override
            @CheckForNull
            public V remove(@CheckForNull Object obj) {
                V v10 = (V) get(obj);
                if (v10 == null) {
                    return null;
                }
                Objects.requireNonNull(obj);
                b3.this.a((C12534j2) obj);
                return v10;
            }

            @Override
            public Collection<V> values() {
                return new C1001d(this);
            }
        }

        public d(C12534j2<K> c12534j2) {
            this.f66461b = c12534j2;
        }

        @Override
        public void a(C12534j2<K> c12534j2) {
            if (c12534j2.u(this.f66461b)) {
                b3.this.a(c12534j2.s(this.f66461b));
            }
        }

        @Override
        public C12534j2<K> c() {
            Q<K> q10;
            Map.Entry floorEntry = b3.this.f66456b.floorEntry(this.f66461b.f66693b);
            if (floorEntry == null || ((c) floorEntry.getValue()).h().compareTo(this.f66461b.f66693b) <= 0) {
                q10 = (Q) b3.this.f66456b.ceilingKey(this.f66461b.f66693b);
                if (q10 == null || q10.compareTo(this.f66461b.f66694c) >= 0) {
                    throw new NoSuchElementException();
                }
            } else {
                q10 = this.f66461b.f66693b;
            }
            Map.Entry lowerEntry = b3.this.f66456b.lowerEntry(this.f66461b.f66694c);
            if (lowerEntry != null) {
                return C12534j2.k(q10, ((c) lowerEntry.getValue()).h().compareTo(this.f66461b.f66694c) >= 0 ? this.f66461b.f66694c : ((c) lowerEntry.getValue()).h());
            }
            throw new NoSuchElementException();
        }

        @Override
        public void clear() {
            b3.this.a(this.f66461b);
        }

        @Override
        public InterfaceC12542l2<K, V> d(C12534j2<K> c12534j2) {
            return !c12534j2.u(this.f66461b) ? b3.this.q() : b3.this.d(c12534j2.s(this.f66461b));
        }

        @Override
        public Map<C12534j2<K>, V> e() {
            return new b();
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof InterfaceC12542l2) {
                return e().equals(((InterfaceC12542l2) obj).e());
            }
            return false;
        }

        @Override
        @CheckForNull
        public Map.Entry<C12534j2<K>, V> f(K k10) {
            Map.Entry<C12534j2<K>, V> f10;
            if (!this.f66461b.i(k10) || (f10 = b3.this.f(k10)) == null) {
                return null;
            }
            return Q1.O(f10.getKey().s(this.f66461b), f10.getValue());
        }

        @Override
        public Map<C12534j2<K>, V> g() {
            return new a();
        }

        @Override
        public void h(InterfaceC12542l2<K, V> interfaceC12542l2) {
            if (interfaceC12542l2.e().isEmpty()) {
                return;
            }
            C12534j2<K> c10 = interfaceC12542l2.c();
            w2.H.y(this.f66461b.n(c10), "Cannot putAll rangeMap with span %s into a subRangeMap(%s)", c10, this.f66461b);
            b3.this.h(interfaceC12542l2);
        }

        @Override
        public int hashCode() {
            return e().hashCode();
        }

        @Override
        public void i(C12534j2<K> c12534j2, V v10) {
            if (b3.this.f66456b.isEmpty() || !this.f66461b.n(c12534j2)) {
                k(c12534j2, v10);
            } else {
                k(b3.this.o(c12534j2, w2.H.E(v10)).s(this.f66461b), v10);
            }
        }

        @Override
        @CheckForNull
        public V j(K k10) {
            if (this.f66461b.i(k10)) {
                return (V) b3.this.j(k10);
            }
            return null;
        }

        @Override
        public void k(C12534j2<K> c12534j2, V v10) {
            w2.H.y(this.f66461b.n(c12534j2), "Cannot put range %s into a subRangeMap(%s)", c12534j2, this.f66461b);
            b3.this.k(c12534j2, v10);
        }

        @Override
        public String toString() {
            return e().toString();
        }
    }

    public static <K extends Comparable, V> C12534j2<K> n(C12534j2<K> c12534j2, V v10, @CheckForNull Map.Entry<Q<K>, c<K, V>> entry) {
        return (entry != null && entry.getValue().getKey().u(c12534j2) && entry.getValue().getValue().equals(v10)) ? c12534j2.G(entry.getValue().getKey()) : c12534j2;
    }

    public static <K extends Comparable, V> b3<K, V> p() {
        return new b3<>();
    }

    @Override
    public void a(C12534j2<K> c12534j2) {
        if (c12534j2.v()) {
            return;
        }
        Map.Entry<Q<K>, c<K, V>> lowerEntry = this.f66456b.lowerEntry(c12534j2.f66693b);
        if (lowerEntry != null) {
            c<K, V> value = lowerEntry.getValue();
            if (value.h().compareTo(c12534j2.f66693b) > 0) {
                if (value.h().compareTo(c12534j2.f66694c) > 0) {
                    r(c12534j2.f66694c, value.h(), lowerEntry.getValue().getValue());
                }
                r(value.f(), c12534j2.f66693b, lowerEntry.getValue().getValue());
            }
        }
        Map.Entry<Q<K>, c<K, V>> lowerEntry2 = this.f66456b.lowerEntry(c12534j2.f66694c);
        if (lowerEntry2 != null) {
            c<K, V> value2 = lowerEntry2.getValue();
            if (value2.h().compareTo(c12534j2.f66694c) > 0) {
                r(c12534j2.f66694c, value2.h(), lowerEntry2.getValue().getValue());
            }
        }
        this.f66456b.subMap(c12534j2.f66693b, c12534j2.f66694c).clear();
    }

    @Override
    public C12534j2<K> c() {
        Map.Entry<Q<K>, c<K, V>> firstEntry = this.f66456b.firstEntry();
        Map.Entry<Q<K>, c<K, V>> lastEntry = this.f66456b.lastEntry();
        if (firstEntry == null || lastEntry == null) {
            throw new NoSuchElementException();
        }
        return C12534j2.k(firstEntry.getValue().getKey().f66693b, lastEntry.getValue().getKey().f66694c);
    }

    @Override
    public void clear() {
        this.f66456b.clear();
    }

    @Override
    public InterfaceC12542l2<K, V> d(C12534j2<K> c12534j2) {
        return c12534j2.equals(C12534j2.a()) ? this : new d(c12534j2);
    }

    @Override
    public Map<C12534j2<K>, V> e() {
        return new b(this.f66456b.values());
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        if (obj instanceof InterfaceC12542l2) {
            return e().equals(((InterfaceC12542l2) obj).e());
        }
        return false;
    }

    @Override
    @CheckForNull
    public Map.Entry<C12534j2<K>, V> f(K k10) {
        Map.Entry<Q<K>, c<K, V>> floorEntry = this.f66456b.floorEntry(Q.d(k10));
        if (floorEntry == null || !floorEntry.getValue().a(k10)) {
            return null;
        }
        return floorEntry.getValue();
    }

    @Override
    public Map<C12534j2<K>, V> g() {
        return new b(this.f66456b.descendingMap().values());
    }

    @Override
    public void h(InterfaceC12542l2<K, V> interfaceC12542l2) {
        for (Map.Entry<C12534j2<K>, V> entry : interfaceC12542l2.e().entrySet()) {
            k(entry.getKey(), entry.getValue());
        }
    }

    @Override
    public int hashCode() {
        return e().hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void i(C12534j2<K> c12534j2, V v10) {
        if (this.f66456b.isEmpty()) {
            k(c12534j2, v10);
        } else {
            k(o(c12534j2, w2.H.E(v10)), v10);
        }
    }

    @Override
    @CheckForNull
    public V j(K k10) {
        Map.Entry<C12534j2<K>, V> f10 = f(k10);
        if (f10 == null) {
            return null;
        }
        return f10.getValue();
    }

    @Override
    public void k(C12534j2<K> c12534j2, V v10) {
        if (c12534j2.v()) {
            return;
        }
        w2.H.E(v10);
        a(c12534j2);
        this.f66456b.put(c12534j2.f66693b, new c<>(c12534j2, v10));
    }

    public final C12534j2<K> o(C12534j2<K> c12534j2, V v10) {
        return n(n(c12534j2, v10, this.f66456b.lowerEntry(c12534j2.f66693b)), v10, this.f66456b.floorEntry(c12534j2.f66694c));
    }

    public final InterfaceC12542l2<K, V> q() {
        return f66455c;
    }

    public final void r(Q<K> q10, Q<K> q11, V v10) {
        this.f66456b.put(q10, new c<>(q10, q11, v10));
    }

    @Override
    public String toString() {
        return this.f66456b.values().toString();
    }
}
