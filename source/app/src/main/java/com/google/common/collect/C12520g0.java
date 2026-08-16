package com.google.common.collect;

import com.google.common.collect.C12520g0;
import com.google.common.collect.Q1;
import com.google.common.collect.U1;
import com.google.common.collect.V1;
import com.google.common.collect.W1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b
public class C12520g0<K, V> extends AbstractC12523h<K, V> implements InterfaceC12544m0<K, V> {

    public final S1<K, V> f66626g;

    public final w2.I<? super Map.Entry<K, V>> f66627h;

    public class a extends Q1.R<K, Collection<V>> {

        public class C1003a extends Q1.s<K, Collection<V>> {

            public class C1004a extends AbstractC12503c<Map.Entry<K, Collection<V>>> {

                public final Iterator<Map.Entry<K, Collection<V>>> f66630d;

                public C1004a() {
                    this.f66630d = C12520g0.this.f66626g.k().entrySet().iterator();
                }

                @Override
                @CheckForNull
                public Map.Entry<K, Collection<V>> a() {
                    while (this.f66630d.hasNext()) {
                        Map.Entry<K, Collection<V>> next = this.f66630d.next();
                        K key = next.getKey();
                        Collection m10 = C12520g0.m(next.getValue(), new c(key));
                        if (!m10.isEmpty()) {
                            return Q1.O(key, m10);
                        }
                    }
                    return b();
                }
            }

            public C1003a() {
            }

            @Override
            public Map<K, Collection<V>> a() {
                return a.this;
            }

            @Override
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return new C1004a();
            }

            @Override
            public boolean removeAll(Collection<?> collection) {
                return C12520g0.this.n(w2.J.n(collection));
            }

            @Override
            public boolean retainAll(Collection<?> collection) {
                return C12520g0.this.n(w2.J.q(w2.J.n(collection)));
            }

            @Override
            public int size() {
                return E1.Z(iterator());
            }
        }

        public class b extends Q1.B<K, Collection<V>> {
            public b() {
                super(a.this);
            }

            @Override
            public boolean remove(@CheckForNull Object obj) {
                return a.this.remove(obj) != null;
            }

            @Override
            public boolean removeAll(Collection<?> collection) {
                return C12520g0.this.n(Q1.U(w2.J.n(collection)));
            }

            @Override
            public boolean retainAll(Collection<?> collection) {
                return C12520g0.this.n(Q1.U(w2.J.q(w2.J.n(collection))));
            }
        }

        public class c extends Q1.Q<K, Collection<V>> {
            public c() {
                super(a.this);
            }

            @Override
            public boolean remove(@CheckForNull Object obj) {
                if (!(obj instanceof Collection)) {
                    return false;
                }
                Collection collection = (Collection) obj;
                Iterator<Map.Entry<K, Collection<V>>> it = C12520g0.this.f66626g.k().entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<K, Collection<V>> next = it.next();
                    Collection m10 = C12520g0.m(next.getValue(), new c(next.getKey()));
                    if (!m10.isEmpty() && collection.equals(m10)) {
                        if (m10.size() == next.getValue().size()) {
                            it.remove();
                            return true;
                        }
                        m10.clear();
                        return true;
                    }
                }
                return false;
            }

            @Override
            public boolean removeAll(Collection<?> collection) {
                return C12520g0.this.n(Q1.Q0(w2.J.n(collection)));
            }

            @Override
            public boolean retainAll(Collection<?> collection) {
                return C12520g0.this.n(Q1.Q0(w2.J.q(w2.J.n(collection))));
            }
        }

        public a() {
        }

        @Override
        public void clear() {
            C12520g0.this.clear();
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            return get(obj) != null;
        }

        @Override
        public Set<Map.Entry<K, Collection<V>>> e() {
            return new C1003a();
        }

        @Override
        public Set<K> n() {
            return new b();
        }

        @Override
        public Collection<Collection<V>> j() {
            return new c();
        }

        @Override
        @CheckForNull
        public Collection<V> get(@CheckForNull Object obj) {
            Collection<V> collection = C12520g0.this.f66626g.k().get(obj);
            if (collection == null) {
                return null;
            }
            Collection<V> m10 = C12520g0.m(collection, new c(obj));
            if (m10.isEmpty()) {
                return null;
            }
            return m10;
        }

        @Override
        @CheckForNull
        public Collection<V> remove(@CheckForNull Object obj) {
            Collection<V> collection = C12520g0.this.f66626g.k().get(obj);
            if (collection == null) {
                return null;
            }
            ArrayList q10 = M1.q();
            Iterator<V> it = collection.iterator();
            while (it.hasNext()) {
                V next = it.next();
                if (C12520g0.this.p(obj, next)) {
                    it.remove();
                    q10.add(next);
                }
            }
            if (q10.isEmpty()) {
                return null;
            }
            return C12520g0.this.f66626g instanceof C2 ? Collections.unmodifiableSet(D2.B(q10)) : Collections.unmodifiableList(q10);
        }
    }

    public class b extends U1.g<K, V> {

        public class a extends W1.i<K> {
            public a() {
            }

            public static boolean f(w2.I i10, Map.Entry entry) {
                return i10.apply(W1.k(entry.getKey(), ((Collection) entry.getValue()).size()));
            }

            @Override
            public V1<K> a() {
                return b.this;
            }

            public final boolean h(final w2.I<? super V1.a<K>> i10) {
                return C12520g0.this.n(new w2.I() {
                    @Override
                    public final boolean apply(Object obj) {
                        boolean f10;
                        f10 = C12520g0.b.a.f(w2.I.this, (Map.Entry) obj);
                        return f10;
                    }
                });
            }

            @Override
            public Iterator<V1.a<K>> iterator() {
                return b.this.g();
            }

            @Override
            public boolean removeAll(Collection<?> collection) {
                return h(w2.J.n(collection));
            }

            @Override
            public boolean retainAll(Collection<?> collection) {
                return h(w2.J.q(w2.J.n(collection)));
            }

            @Override
            public int size() {
                return C12520g0.this.keySet().size();
            }
        }

        public b() {
            super(C12520g0.this);
        }

        @Override
        public Set<V1.a<K>> entrySet() {
            return new a();
        }

        @Override
        public int pc(@CheckForNull Object obj, int i10) {
            B.b(i10, "occurrences");
            if (i10 == 0) {
                return Ad(obj);
            }
            Collection<V> collection = C12520g0.this.f66626g.k().get(obj);
            int i11 = 0;
            if (collection == null) {
                return 0;
            }
            Iterator<V> it = collection.iterator();
            while (it.hasNext()) {
                if (C12520g0.this.p(obj, it.next()) && (i11 = i11 + 1) <= i10) {
                    it.remove();
                }
            }
            return i11;
        }
    }

    public final class c implements w2.I<V> {

        @InterfaceC12518f2
        public final K f66636b;

        public c(@InterfaceC12518f2 K k10) {
            this.f66636b = k10;
        }

        @Override
        public boolean apply(@InterfaceC12518f2 V v10) {
            return C12520g0.this.p(this.f66636b, v10);
        }
    }

    public C12520g0(S1<K, V> s12, w2.I<? super Map.Entry<K, V>> i10) {
        this.f66626g = (S1) w2.H.E(s12);
        this.f66627h = (w2.I) w2.H.E(i10);
    }

    public static <E> Collection<E> m(Collection<E> collection, w2.I<? super E> i10) {
        return collection instanceof Set ? D2.i((Set) collection, i10) : C.d(collection, i10);
    }

    @Override
    public w2.I<? super Map.Entry<K, V>> N() {
        return this.f66627h;
    }

    @Override
    public Map<K, Collection<V>> a() {
        return new a();
    }

    @Override
    public Collection<Map.Entry<K, V>> b() {
        return m(this.f66626g.v(), this.f66627h);
    }

    @Override
    public Collection<V> c(@CheckForNull Object obj) {
        return (Collection) w2.z.a(k().remove(obj), q());
    }

    @Override
    public void clear() {
        v().clear();
    }

    @Override
    public boolean containsKey(@CheckForNull Object obj) {
        return k().get(obj) != null;
    }

    @Override
    public Set<K> e() {
        return k().o();
    }

    @Override
    public V1<K> f() {
        return new b();
    }

    @Override
    public Collection<V> g() {
        return new C12548n0(this);
    }

    @Override
    public Collection<V> y(@InterfaceC12518f2 K k10) {
        return m(this.f66626g.y(k10), new c(k10));
    }

    @Override
    public Iterator<Map.Entry<K, V>> h() {
        throw new AssertionError((Object) "should never be called");
    }

    public boolean n(w2.I<? super Map.Entry<K, Collection<V>>> i10) {
        Iterator<Map.Entry<K, Collection<V>>> it = this.f66626g.k().entrySet().iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            Map.Entry<K, Collection<V>> next = it.next();
            K key = next.getKey();
            Collection m10 = m(next.getValue(), new c(key));
            if (!m10.isEmpty() && i10.apply(Q1.O(key, m10))) {
                if (m10.size() == next.getValue().size()) {
                    it.remove();
                } else {
                    m10.clear();
                }
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public S1<K, V> o() {
        return this.f66626g;
    }

    public final boolean p(@InterfaceC12518f2 K k10, @InterfaceC12518f2 V v10) {
        return this.f66627h.apply(Q1.O(k10, v10));
    }

    public Collection<V> q() {
        return this.f66626g instanceof C2 ? Collections.emptySet() : Collections.emptyList();
    }

    @Override
    public int size() {
        return v().size();
    }
}
