package com.google.common.collect;

import com.google.common.collect.AbstractC12505c1;
import com.google.common.collect.AbstractC12529i1;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Objects;
import java.util.SortedMap;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@X
@v2.b(emulated = true, serializable = true)
public final class C12572t1<K, V> extends AbstractC12576u1<K, V> implements NavigableMap<K, V> {

    public static final Comparator<Comparable> f66867j = Ordering.A();

    public static final C12572t1<Comparable, Object> f66868k = new C12572t1<>(AbstractC12588x1.c0(Ordering.A()), AbstractC12521g1.x());

    public static final long f66869l = 0;

    public final transient C12581v2<K> f66870g;

    public final transient AbstractC12521g1<V> f66871h;

    @CheckForNull
    public transient C12572t1<K, V> f66872i;

    public class a implements Comparator<Map.Entry<K, V>> {

        public final Comparator f66873b;

        public a(Comparator comparator) {
            this.f66873b = comparator;
        }

        @Override
        public int compare(@CheckForNull Map.Entry<K, V> entry, @CheckForNull Map.Entry<K, V> entry2) {
            Objects.requireNonNull(entry);
            Objects.requireNonNull(entry2);
            return this.f66873b.compare(entry.getKey(), entry2.getKey());
        }
    }

    public class b extends AbstractC12533j1<K, V> {

        public class a extends AbstractC12521g1<Map.Entry<K, V>> {
            public a() {
            }

            @Override
            public Map.Entry<K, V> get(int i10) {
                return new AbstractMap.SimpleImmutableEntry(C12572t1.this.f66870g.a().get(i10), C12572t1.this.f66871h.get(i10));
            }

            @Override
            public boolean h() {
                return true;
            }

            @Override
            public int size() {
                return C12572t1.this.size();
            }
        }

        public b() {
        }

        @Override
        public AbstractC12529i1<K, V> H() {
            return C12572t1.this;
        }

        @Override
        public e3<Map.Entry<K, V>> iterator() {
            return a().iterator();
        }

        @Override
        public AbstractC12521g1<Map.Entry<K, V>> x() {
            return new a();
        }
    }

    public static class c<K, V> extends AbstractC12529i1.b<K, V> {

        public transient Object[] f66876f;

        public transient Object[] f66877g;

        public final Comparator<? super K> f66878h;

        public c(Comparator<? super K> comparator) {
            this(comparator, 4);
        }

        public final void f(int i10) {
            Object[] objArr = this.f66876f;
            if (i10 > objArr.length) {
                int f10 = AbstractC12505c1.b.f(objArr.length, i10);
                this.f66876f = Arrays.copyOf(this.f66876f, f10);
                this.f66877g = Arrays.copyOf(this.f66877g, f10);
            }
        }

        @Override
        public C12572t1<K, V> a() {
            return d();
        }

        @Override
        @I2.e
        @Deprecated
        public final C12572t1<K, V> c() {
            throw new UnsupportedOperationException("ImmutableSortedMap.Builder does not yet implement buildKeepingLast()");
        }

        @Override
        public C12572t1<K, V> d() {
            int i10 = this.f66672c;
            if (i10 == 0) {
                return C12572t1.m0(this.f66878h);
            }
            if (i10 == 1) {
                Comparator<? super K> comparator = this.f66878h;
                Object obj = this.f66876f[0];
                Objects.requireNonNull(obj);
                Object obj2 = this.f66877g[0];
                Objects.requireNonNull(obj2);
                return C12572t1.J0(comparator, obj, obj2);
            }
            Object[] copyOf = Arrays.copyOf(this.f66876f, i10);
            Arrays.sort(copyOf, this.f66878h);
            Object[] objArr = new Object[this.f66672c];
            for (int i11 = 0; i11 < this.f66672c; i11++) {
                if (i11 > 0) {
                    int i12 = i11 - 1;
                    if (this.f66878h.compare(copyOf[i12], copyOf[i11]) == 0) {
                        String valueOf = String.valueOf(copyOf[i12]);
                        String valueOf2 = String.valueOf(copyOf[i11]);
                        StringBuilder sb2 = new StringBuilder(valueOf.length() + 57 + valueOf2.length());
                        sb2.append("keys required to be distinct but compared as equal: ");
                        sb2.append(valueOf);
                        sb2.append(" and ");
                        sb2.append(valueOf2);
                        throw new IllegalArgumentException(sb2.toString());
                    }
                }
                Object obj3 = this.f66876f[i11];
                Objects.requireNonNull(obj3);
                int binarySearch = Arrays.binarySearch(copyOf, obj3, this.f66878h);
                Object obj4 = this.f66877g[i11];
                Objects.requireNonNull(obj4);
                objArr[binarySearch] = obj4;
            }
            return new C12572t1<>(new C12581v2(AbstractC12521g1.k(copyOf), this.f66878h), AbstractC12521g1.k(objArr));
        }

        @I2.a
        public c<K, V> q(c<K, V> cVar) {
            f(this.f66672c + cVar.f66672c);
            System.arraycopy(cVar.f66876f, 0, this.f66876f, this.f66672c, cVar.f66672c);
            System.arraycopy(cVar.f66877g, 0, this.f66877g, this.f66672c, cVar.f66672c);
            this.f66672c += cVar.f66672c;
            return this;
        }

        @Override
        @I2.a
        @Deprecated
        @I2.e("Always throws UnsupportedOperationException")
        @InterfaceC15800a
        public final c<K, V> h(Comparator<? super V> comparator) {
            throw new UnsupportedOperationException("Not available on ImmutableSortedMap.Builder");
        }

        @Override
        @I2.a
        public c<K, V> i(K k10, V v10) {
            f(this.f66672c + 1);
            B.a(k10, v10);
            Object[] objArr = this.f66876f;
            int i10 = this.f66672c;
            objArr[i10] = k10;
            this.f66877g[i10] = v10;
            this.f66672c = i10 + 1;
            return this;
        }

        @Override
        @I2.a
        public c<K, V> j(Map.Entry<? extends K, ? extends V> entry) {
            super.j(entry);
            return this;
        }

        @Override
        @I2.a
        @InterfaceC15800a
        public c<K, V> k(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            super.k(iterable);
            return this;
        }

        @Override
        @I2.a
        public c<K, V> l(Map<? extends K, ? extends V> map) {
            super.l(map);
            return this;
        }

        public c(Comparator<? super K> comparator, int i10) {
            this.f66878h = (Comparator) w2.H.E(comparator);
            this.f66876f = new Object[i10];
            this.f66877g = new Object[i10];
        }
    }

    public static class d<K, V> extends AbstractC12529i1.e<K, V> {

        public static final long f66879g = 0;

        public final Comparator<? super K> f66880f;

        public d(C12572t1<K, V> c12572t1) {
            super(c12572t1);
            this.f66880f = c12572t1.comparator();
        }

        @Override
        public c<K, V> b(int i10) {
            return new c<>(this.f66880f);
        }
    }

    public C12572t1(C12581v2<K> c12581v2, AbstractC12521g1<V> abstractC12521g1) {
        this(c12581v2, abstractC12521g1, null);
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/t1<TK;TV;>; */
    public static C12572t1 B0(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3) {
        return p0(AbstractC12529i1.r(comparable, obj), AbstractC12529i1.r(comparable2, obj2), AbstractC12529i1.r(comparable3, obj3));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/t1<TK;TV;>; */
    public static C12572t1 C0(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4) {
        return p0(AbstractC12529i1.r(comparable, obj), AbstractC12529i1.r(comparable2, obj2), AbstractC12529i1.r(comparable3, obj3), AbstractC12529i1.r(comparable4, obj4));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/t1<TK;TV;>; */
    public static C12572t1 D0(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5) {
        return p0(AbstractC12529i1.r(comparable, obj), AbstractC12529i1.r(comparable2, obj2), AbstractC12529i1.r(comparable3, obj3), AbstractC12529i1.r(comparable4, obj4), AbstractC12529i1.r(comparable5, obj5));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/t1<TK;TV;>; */
    public static C12572t1 E0(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5, Comparable comparable6, Object obj6) {
        return p0(AbstractC12529i1.r(comparable, obj), AbstractC12529i1.r(comparable2, obj2), AbstractC12529i1.r(comparable3, obj3), AbstractC12529i1.r(comparable4, obj4), AbstractC12529i1.r(comparable5, obj5), AbstractC12529i1.r(comparable6, obj6));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/t1<TK;TV;>; */
    public static C12572t1 F0(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5, Comparable comparable6, Object obj6, Comparable comparable7, Object obj7) {
        return p0(AbstractC12529i1.r(comparable, obj), AbstractC12529i1.r(comparable2, obj2), AbstractC12529i1.r(comparable3, obj3), AbstractC12529i1.r(comparable4, obj4), AbstractC12529i1.r(comparable5, obj5), AbstractC12529i1.r(comparable6, obj6), AbstractC12529i1.r(comparable7, obj7));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/t1<TK;TV;>; */
    public static C12572t1 G0(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5, Comparable comparable6, Object obj6, Comparable comparable7, Object obj7, Comparable comparable8, Object obj8) {
        return p0(AbstractC12529i1.r(comparable, obj), AbstractC12529i1.r(comparable2, obj2), AbstractC12529i1.r(comparable3, obj3), AbstractC12529i1.r(comparable4, obj4), AbstractC12529i1.r(comparable5, obj5), AbstractC12529i1.r(comparable6, obj6), AbstractC12529i1.r(comparable7, obj7), AbstractC12529i1.r(comparable8, obj8));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/t1<TK;TV;>; */
    public static C12572t1 H0(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5, Comparable comparable6, Object obj6, Comparable comparable7, Object obj7, Comparable comparable8, Object obj8, Comparable comparable9, Object obj9) {
        return p0(AbstractC12529i1.r(comparable, obj), AbstractC12529i1.r(comparable2, obj2), AbstractC12529i1.r(comparable3, obj3), AbstractC12529i1.r(comparable4, obj4), AbstractC12529i1.r(comparable5, obj5), AbstractC12529i1.r(comparable6, obj6), AbstractC12529i1.r(comparable7, obj7), AbstractC12529i1.r(comparable8, obj8), AbstractC12529i1.r(comparable9, obj9));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/t1<TK;TV;>; */
    public static C12572t1 I0(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5, Comparable comparable6, Object obj6, Comparable comparable7, Object obj7, Comparable comparable8, Object obj8, Comparable comparable9, Object obj9, Comparable comparable10, Object obj10) {
        return p0(AbstractC12529i1.r(comparable, obj), AbstractC12529i1.r(comparable2, obj2), AbstractC12529i1.r(comparable3, obj3), AbstractC12529i1.r(comparable4, obj4), AbstractC12529i1.r(comparable5, obj5), AbstractC12529i1.r(comparable6, obj6), AbstractC12529i1.r(comparable7, obj7), AbstractC12529i1.r(comparable8, obj8), AbstractC12529i1.r(comparable9, obj9), AbstractC12529i1.r(comparable10, obj10));
    }

    public static <K, V> C12572t1<K, V> J0(Comparator<? super K> comparator, K k10, V v10) {
        return new C12572t1<>(new C12581v2(AbstractC12521g1.y(k10), (Comparator) w2.H.E(comparator)), AbstractC12521g1.y(v10));
    }

    public static <K, V> c<K, V> K0(Comparator<K> comparator) {
        return new c<>(comparator);
    }

    public static <K extends Comparable<?>, V> c<K, V> L0() {
        return new c<>(Ordering.A().F());
    }

    @InterfaceC15800a
    public static <K, V> C12572t1<K, V> e0(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return f0(iterable, (Ordering) f66867j);
    }

    @InterfaceC15800a
    public static <K, V> C12572t1<K, V> f0(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable, Comparator<? super K> comparator) {
        return n0((Comparator) w2.H.E(comparator), false, iterable);
    }

    public static <K, V> C12572t1<K, V> g0(Map<? extends K, ? extends V> map) {
        return i0(map, (Ordering) f66867j);
    }

    public static <K, V> C12572t1<K, V> h0(Map<? extends K, ? extends V> map, Comparator<? super K> comparator) {
        return i0(map, (Comparator) w2.H.E(comparator));
    }

    public static <K, V> C12572t1<K, V> i0(Map<? extends K, ? extends V> map, Comparator<? super K> comparator) {
        boolean z10 = false;
        if (map instanceof SortedMap) {
            Comparator<? super K> comparator2 = ((SortedMap) map).comparator();
            if (comparator2 != null) {
                z10 = comparator.equals(comparator2);
            } else if (comparator == f66867j) {
                z10 = true;
            }
        }
        if (z10 && (map instanceof C12572t1)) {
            C12572t1<K, V> c12572t1 = (C12572t1) map;
            if (!c12572t1.v()) {
                return c12572t1;
            }
        }
        return n0(comparator, z10, map.entrySet());
    }

    public static <K, V> C12572t1<K, V> j0(SortedMap<K, ? extends V> sortedMap) {
        Comparator<? super K> comparator = sortedMap.comparator();
        if (comparator == null) {
            comparator = f66867j;
        }
        if (sortedMap instanceof C12572t1) {
            C12572t1<K, V> c12572t1 = (C12572t1) sortedMap;
            if (!c12572t1.v()) {
                return c12572t1;
            }
        }
        return n0(comparator, true, sortedMap.entrySet());
    }

    public static <K, V> C12572t1<K, V> m0(Comparator<? super K> comparator) {
        return Ordering.A().equals(comparator) ? x0() : new C12572t1<>(AbstractC12588x1.c0(comparator), AbstractC12521g1.x());
    }

    public static <K, V> C12572t1<K, V> n0(Comparator<? super K> comparator, boolean z10, Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        Map.Entry[] entryArr = (Map.Entry[]) D1.R(iterable, AbstractC12529i1.f66664f);
        return o0(comparator, z10, entryArr, entryArr.length);
    }

    public static <K, V> C12572t1<K, V> o0(Comparator<? super K> comparator, boolean z10, Map.Entry<K, V>[] entryArr, int i10) {
        if (i10 == 0) {
            return m0(comparator);
        }
        if (i10 == 1) {
            Map.Entry<K, V> entry = entryArr[0];
            Objects.requireNonNull(entry);
            Map.Entry<K, V> entry2 = entry;
            return J0(comparator, entry2.getKey(), entry2.getValue());
        }
        Object[] objArr = new Object[i10];
        Object[] objArr2 = new Object[i10];
        if (z10) {
            for (int i11 = 0; i11 < i10; i11++) {
                Map.Entry<K, V> entry3 = entryArr[i11];
                Objects.requireNonNull(entry3);
                Map.Entry<K, V> entry4 = entry3;
                K key = entry4.getKey();
                V value = entry4.getValue();
                B.a(key, value);
                objArr[i11] = key;
                objArr2[i11] = value;
            }
        } else {
            Arrays.sort(entryArr, 0, i10, new a(comparator));
            Map.Entry<K, V> entry5 = entryArr[0];
            Objects.requireNonNull(entry5);
            Map.Entry<K, V> entry6 = entry5;
            Object key2 = entry6.getKey();
            objArr[0] = key2;
            V value2 = entry6.getValue();
            objArr2[0] = value2;
            B.a(objArr[0], value2);
            int i12 = 1;
            while (i12 < i10) {
                Map.Entry<K, V> entry7 = entryArr[i12 - 1];
                Objects.requireNonNull(entry7);
                Map.Entry<K, V> entry8 = entry7;
                Map.Entry<K, V> entry9 = entryArr[i12];
                Objects.requireNonNull(entry9);
                Map.Entry<K, V> entry10 = entry9;
                Object key3 = entry10.getKey();
                V value3 = entry10.getValue();
                B.a(key3, value3);
                objArr[i12] = key3;
                objArr2[i12] = value3;
                AbstractC12529i1.k(comparator.compare(key2, key3) != 0, "key", entry8, entry10);
                i12++;
                key2 = key3;
            }
        }
        return new C12572t1<>(new C12581v2(AbstractC12521g1.k(objArr), comparator), AbstractC12521g1.k(objArr2));
    }

    public static <K extends Comparable<? super K>, V> C12572t1<K, V> p0(Map.Entry<K, V>... entryArr) {
        return o0(Ordering.A(), false, entryArr, entryArr.length);
    }

    public static <K extends Comparable<?>, V> c<K, V> v0() {
        return new c<>(Ordering.A());
    }

    public static <K, V> C12572t1<K, V> x0() {
        return (C12572t1<K, V>) f66868k;
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;)Lcom/google/common/collect/t1<TK;TV;>; */
    public static C12572t1 y0(Comparable comparable, Object obj) {
        return J0(Ordering.A(), comparable, obj);
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;)Lcom/google/common/collect/t1<TK;TV;>; */
    public static C12572t1 z0(Comparable comparable, Object obj, Comparable comparable2, Object obj2) {
        return p0(AbstractC12529i1.r(comparable, obj), AbstractC12529i1.r(comparable2, obj2));
    }

    @Override
    public AbstractC12505c1<V> values() {
        return this.f66871h;
    }

    @Override
    public Object M() {
        return new d(this);
    }

    @Override
    public C12572t1<K, V> subMap(K k10, K k11) {
        return subMap(k10, true, k11, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public C12572t1<K, V> subMap(K k10, boolean z10, K k11, boolean z11) {
        w2.H.E(k10);
        w2.H.E(k11);
        w2.H.y(comparator().compare(k10, k11) <= 0, "expected fromKey <= toKey but %s > %s", k10, k11);
        return headMap(k11, z11).tailMap(k10, z10);
    }

    @Override
    public C12572t1<K, V> tailMap(K k10) {
        return tailMap(k10, true);
    }

    @Override
    public C12572t1<K, V> tailMap(K k10, boolean z10) {
        return q0(this.f66870g.C0(w2.H.E(k10), z10), size());
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> ceilingEntry(K k10) {
        return tailMap(k10, true).firstEntry();
    }

    @Override
    @CheckForNull
    public K ceilingKey(K k10) {
        return (K) Q1.T(ceilingEntry(k10));
    }

    @Override
    public Comparator<? super K> comparator() {
        return o().comparator();
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return entrySet().a().get(0);
    }

    @Override
    public K firstKey() {
        return o().first();
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> floorEntry(K k10) {
        return headMap(k10, true).lastEntry();
    }

    @Override
    @CheckForNull
    public K floorKey(K k10) {
        return (K) Q1.T(floorEntry(k10));
    }

    @Override
    @CheckForNull
    public V get(@CheckForNull Object obj) {
        int indexOf = this.f66870g.indexOf(obj);
        if (indexOf == -1) {
            return null;
        }
        return this.f66871h.get(indexOf);
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> higherEntry(K k10) {
        return tailMap(k10, false).firstEntry();
    }

    @Override
    @CheckForNull
    public K higherKey(K k10) {
        return (K) Q1.T(higherEntry(k10));
    }

    @Override
    public AbstractC12588x1<K> descendingKeySet() {
        return this.f66870g.descendingSet();
    }

    @Override
    public C12572t1<K, V> descendingMap() {
        C12572t1<K, V> c12572t1 = this.f66872i;
        return c12572t1 == null ? isEmpty() ? m0(Ordering.i(comparator()).F()) : new C12572t1<>((C12581v2) this.f66870g.descendingSet(), this.f66871h.L(), this) : c12572t1;
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return entrySet().a().get(size() - 1);
    }

    @Override
    public K lastKey() {
        return o().last();
    }

    @Override
    @CheckForNull
    public Map.Entry<K, V> lowerEntry(K k10) {
        return headMap(k10, false).lastEntry();
    }

    @Override
    @CheckForNull
    public K lowerKey(K k10) {
        return (K) Q1.T(lowerEntry(k10));
    }

    @Override
    public AbstractC12564r1<Map.Entry<K, V>> o() {
        return isEmpty() ? AbstractC12564r1.z() : new b();
    }

    @Override
    public AbstractC12564r1<K> p() {
        throw new AssertionError((Object) "should never be called");
    }

    @Override
    @I2.a
    @CheckForNull
    @Deprecated
    @I2.e("Always throws UnsupportedOperationException")
    public final Map.Entry<K, V> pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override
    @I2.a
    @CheckForNull
    @Deprecated
    @I2.e("Always throws UnsupportedOperationException")
    public final Map.Entry<K, V> pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override
    public AbstractC12505c1<V> q() {
        throw new AssertionError((Object) "should never be called");
    }

    public final C12572t1<K, V> q0(int i10, int i11) {
        return (i10 == 0 && i11 == size()) ? this : i10 == i11 ? m0(comparator()) : new C12572t1<>(this.f66870g.z0(i10, i11), this.f66871h.subList(i10, i11));
    }

    @Override
    public AbstractC12564r1<Map.Entry<K, V>> entrySet() {
        return super.entrySet();
    }

    @Override
    public C12572t1<K, V> headMap(K k10) {
        return headMap(k10, false);
    }

    @Override
    public int size() {
        return this.f66871h.size();
    }

    @Override
    public C12572t1<K, V> headMap(K k10, boolean z10) {
        return q0(0, this.f66870g.B0(w2.H.E(k10), z10));
    }

    @Override
    public AbstractC12588x1<K> o() {
        return this.f66870g;
    }

    @Override
    public boolean v() {
        return this.f66870g.h() || this.f66871h.h();
    }

    @Override
    public AbstractC12588x1<K> navigableKeySet() {
        return this.f66870g;
    }

    public C12572t1(C12581v2<K> c12581v2, AbstractC12521g1<V> abstractC12521g1, @CheckForNull C12572t1<K, V> c12572t1) {
        this.f66870g = c12581v2;
        this.f66871h = abstractC12521g1;
        this.f66872i = c12572t1;
    }
}
