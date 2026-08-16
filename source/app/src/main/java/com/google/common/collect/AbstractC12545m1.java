package com.google.common.collect;

import com.ardor3d.util.export.xml.XMLExporter;
import com.google.common.collect.B2;
import com.google.common.collect.V1;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@X
@v2.b(emulated = true)
public abstract class AbstractC12545m1<K, V> extends AbstractC12578v<K, V> implements Serializable {

    public static final long f66716i = 0;

    public final transient AbstractC12529i1<K, ? extends AbstractC12505c1<V>> f66717g;

    public final transient int f66718h;

    public class a extends e3<Map.Entry<K, V>> {

        public final Iterator<? extends Map.Entry<K, ? extends AbstractC12505c1<V>>> f66719b;

        @CheckForNull
        public K f66720c = null;

        public Iterator<V> f66721d = E1.u();

        public a() {
            this.f66719b = AbstractC12545m1.this.f66717g.entrySet().iterator();
        }

        @Override
        public Map.Entry<K, V> next() {
            if (!this.f66721d.hasNext()) {
                Map.Entry<K, ? extends AbstractC12505c1<V>> next = this.f66719b.next();
                this.f66720c = next.getKey();
                this.f66721d = next.getValue().iterator();
            }
            K k10 = this.f66720c;
            Objects.requireNonNull(k10);
            return Q1.O(k10, this.f66721d.next());
        }

        @Override
        public boolean hasNext() {
            return this.f66721d.hasNext() || this.f66719b.hasNext();
        }
    }

    public class b extends e3<V> {

        public Iterator<? extends AbstractC12505c1<V>> f66723b;

        public Iterator<V> f66724c = E1.u();

        public b() {
            this.f66723b = AbstractC12545m1.this.f66717g.values().iterator();
        }

        @Override
        public boolean hasNext() {
            return this.f66724c.hasNext() || this.f66723b.hasNext();
        }

        @Override
        public V next() {
            if (!this.f66724c.hasNext()) {
                this.f66724c = this.f66723b.next().iterator();
            }
            return this.f66724c.next();
        }
    }

    @I2.f
    public static class c<K, V> {

        public final Map<K, Collection<V>> f66726a = C12526h2.i();

        @CheckForNull
        public Comparator<? super K> f66727b;

        @CheckForNull
        public Comparator<? super V> f66728c;

        public AbstractC12545m1<K, V> a() {
            Collection entrySet = this.f66726a.entrySet();
            Comparator<? super K> comparator = this.f66727b;
            if (comparator != null) {
                entrySet = Ordering.i(comparator).D().l(entrySet);
            }
            return C12525h1.S(entrySet, this.f66728c);
        }

        @I2.a
        public c<K, V> b(c<K, V> cVar) {
            for (Map.Entry<K, Collection<V>> entry : cVar.f66726a.entrySet()) {
                j(entry.getKey(), entry.getValue());
            }
            return this;
        }

        public Collection<V> c() {
            return new ArrayList();
        }

        @I2.a
        public c<K, V> d(Comparator<? super K> comparator) {
            this.f66727b = (Comparator) w2.H.E(comparator);
            return this;
        }

        @I2.a
        public c<K, V> e(Comparator<? super V> comparator) {
            this.f66728c = (Comparator) w2.H.E(comparator);
            return this;
        }

        @I2.a
        public c<K, V> f(K k10, V v10) {
            B.a(k10, v10);
            Collection<V> collection = this.f66726a.get(k10);
            if (collection == null) {
                Map<K, Collection<V>> map = this.f66726a;
                Collection<V> c10 = c();
                map.put(k10, c10);
                collection = c10;
            }
            collection.add(v10);
            return this;
        }

        @I2.a
        public c<K, V> g(Map.Entry<? extends K, ? extends V> entry) {
            return f(entry.getKey(), entry.getValue());
        }

        @I2.a
        public c<K, V> h(S1<? extends K, ? extends V> s12) {
            for (Map.Entry<? extends K, Collection<? extends V>> entry : s12.k().entrySet()) {
                j(entry.getKey(), entry.getValue());
            }
            return this;
        }

        @I2.a
        @InterfaceC15800a
        public c<K, V> i(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            Iterator<? extends Map.Entry<? extends K, ? extends V>> it = iterable.iterator();
            while (it.hasNext()) {
                g(it.next());
            }
            return this;
        }

        @I2.a
        public c<K, V> j(K k10, Iterable<? extends V> iterable) {
            if (k10 == null) {
                String valueOf = String.valueOf(D1.T(iterable));
                throw new NullPointerException(valueOf.length() != 0 ? "null key in entry: null=".concat(valueOf) : new String("null key in entry: null="));
            }
            Collection<V> collection = this.f66726a.get(k10);
            if (collection != null) {
                for (V v10 : iterable) {
                    B.a(k10, v10);
                    collection.add(v10);
                }
                return this;
            }
            Iterator<? extends V> it = iterable.iterator();
            if (!it.hasNext()) {
                return this;
            }
            Collection<V> c10 = c();
            while (it.hasNext()) {
                V next = it.next();
                B.a(k10, next);
                c10.add(next);
            }
            this.f66726a.put(k10, c10);
            return this;
        }

        @I2.a
        public c<K, V> k(K k10, V... vArr) {
            return j(k10, Arrays.asList(vArr));
        }
    }

    public static class d<K, V> extends AbstractC12505c1<Map.Entry<K, V>> {

        public static final long f66729d = 0;

        @q3.i
        public final AbstractC12545m1<K, V> f66730c;

        public d(AbstractC12545m1<K, V> abstractC12545m1) {
            this.f66730c = abstractC12545m1;
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.f66730c.g0(entry.getKey(), entry.getValue());
        }

        @Override
        public boolean h() {
            return this.f66730c.B();
        }

        @Override
        public e3<Map.Entry<K, V>> iterator() {
            return this.f66730c.h();
        }

        @Override
        public int size() {
            return this.f66730c.size();
        }
    }

    @v2.c
    public static class e {

        public static final B2.b<AbstractC12545m1> f66731a = B2.a(AbstractC12545m1.class, "map");

        public static final B2.b<AbstractC12545m1> f66732b = B2.a(AbstractC12545m1.class, XMLExporter.ATTRIBUTE_SIZE);
    }

    public class f extends AbstractC12549n1<K> {
        public f() {
        }

        @Override
        public int Ad(@CheckForNull Object obj) {
            AbstractC12505c1<V> abstractC12505c1 = AbstractC12545m1.this.f66717g.get(obj);
            if (abstractC12505c1 == null) {
                return 0;
            }
            return abstractC12505c1.size();
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return AbstractC12545m1.this.containsKey(obj);
        }

        @Override
        public boolean h() {
            return true;
        }

        @Override
        @v2.c
        public Object j() {
            return new g(AbstractC12545m1.this);
        }

        @Override
        public AbstractC12564r1<K> S1() {
            return AbstractC12545m1.this.keySet();
        }

        @Override
        public int size() {
            return AbstractC12545m1.this.size();
        }

        @Override
        public V1.a<K> v(int i10) {
            Map.Entry<K, ? extends AbstractC12505c1<V>> entry = AbstractC12545m1.this.f66717g.entrySet().a().get(i10);
            return W1.k(entry.getKey(), entry.getValue().size());
        }
    }

    @v2.c
    public static final class g implements Serializable {

        public final AbstractC12545m1<?, ?> f66734b;

        public g(AbstractC12545m1<?, ?> abstractC12545m1) {
            this.f66734b = abstractC12545m1;
        }

        public Object a() {
            return this.f66734b.j();
        }
    }

    public static final class h<K, V> extends AbstractC12505c1<V> {

        public static final long f66735d = 0;

        @q3.i
        public final transient AbstractC12545m1<K, V> f66736c;

        public h(AbstractC12545m1<K, V> abstractC12545m1) {
            this.f66736c = abstractC12545m1;
        }

        @Override
        @v2.c
        public int b(Object[] objArr, int i10) {
            e3<? extends AbstractC12505c1<V>> it = this.f66736c.f66717g.values().iterator();
            while (it.hasNext()) {
                i10 = it.next().b(objArr, i10);
            }
            return i10;
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return this.f66736c.containsValue(obj);
        }

        @Override
        public boolean h() {
            return true;
        }

        @Override
        public e3<V> iterator() {
            return this.f66736c.i();
        }

        @Override
        public int size() {
            return this.f66736c.size();
        }
    }

    public AbstractC12545m1(AbstractC12529i1<K, ? extends AbstractC12505c1<V>> abstractC12529i1, int i10) {
        this.f66717g = abstractC12529i1;
        this.f66718h = i10;
    }

    public static <K, V> AbstractC12545m1<K, V> E() {
        return C12525h1.W();
    }

    public static <K, V> AbstractC12545m1<K, V> F(K k10, V v10) {
        return C12525h1.X(k10, v10);
    }

    public static <K, V> AbstractC12545m1<K, V> G(K k10, V v10, K k11, V v11) {
        return C12525h1.Y(k10, v10, k11, v11);
    }

    public static <K, V> AbstractC12545m1<K, V> H(K k10, V v10, K k11, V v11, K k12, V v12) {
        return C12525h1.a0(k10, v10, k11, v11, k12, v12);
    }

    public static <K, V> AbstractC12545m1<K, V> I(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13) {
        return C12525h1.b0(k10, v10, k11, v11, k12, v12, k13, v13);
    }

    public static <K, V> AbstractC12545m1<K, V> J(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14) {
        return C12525h1.c0(k10, v10, k11, v11, k12, v12, k13, v13, k14, v14);
    }

    public static <K, V> c<K, V> m() {
        return new c<>();
    }

    public static <K, V> AbstractC12545m1<K, V> n(S1<? extends K, ? extends V> s12) {
        if (s12 instanceof AbstractC12545m1) {
            AbstractC12545m1<K, V> abstractC12545m1 = (AbstractC12545m1) s12;
            if (!abstractC12545m1.B()) {
                return abstractC12545m1;
            }
        }
        return C12525h1.Q(s12);
    }

    @InterfaceC15800a
    public static <K, V> AbstractC12545m1<K, V> p(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return C12525h1.R(iterable);
    }

    public abstract AbstractC12545m1<V, K> A();

    public boolean B() {
        return this.f66717g.v();
    }

    @Override
    public AbstractC12564r1<K> keySet() {
        return this.f66717g.o();
    }

    @Override
    public AbstractC12549n1<K> j() {
        return (AbstractC12549n1) super.j();
    }

    @Override
    @I2.a
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public AbstractC12505c1<V> c(@CheckForNull Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    @I2.a
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public AbstractC12505c1<V> d(K k10, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override
    public e3<V> i() {
        return new b();
    }

    @Override
    public AbstractC12505c1<V> values() {
        return (AbstractC12505c1) super.values();
    }

    @Override
    @I2.a
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final boolean Z(K k10, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Map<K, Collection<V>> a() {
        throw new AssertionError((Object) "should never be called");
    }

    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsKey(@CheckForNull Object obj) {
        return this.f66717g.containsKey(obj);
    }

    @Override
    public boolean containsValue(@CheckForNull Object obj) {
        return obj != null && super.containsValue(obj);
    }

    @Override
    public Set<K> e() {
        throw new AssertionError((Object) "unreachable");
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    @Override
    public boolean g0(@CheckForNull Object obj, @CheckForNull Object obj2) {
        return super.g0(obj, obj2);
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
    public AbstractC12529i1<K, Collection<V>> k() {
        return this.f66717g;
    }

    @Override
    @I2.a
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final boolean put(K k10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public AbstractC12505c1<Map.Entry<K, V>> b() {
        return new d(this);
    }

    @Override
    public AbstractC12549n1<K> f() {
        return new f();
    }

    @Override
    @I2.a
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final boolean remove(@CheckForNull Object obj, @CheckForNull Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public AbstractC12505c1<V> g() {
        return new h(this);
    }

    @Override
    public int size() {
        return this.f66718h;
    }

    @Override
    public String toString() {
        return super.toString();
    }

    @Override
    public AbstractC12505c1<Map.Entry<K, V>> v() {
        return (AbstractC12505c1) super.v();
    }

    @Override
    @I2.a
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final boolean w(S1<? extends K, ? extends V> s12) {
        throw new UnsupportedOperationException();
    }

    @Override
    public e3<Map.Entry<K, V>> h() {
        return new a();
    }

    @Override
    public abstract AbstractC12505c1<V> y(K k10);
}
