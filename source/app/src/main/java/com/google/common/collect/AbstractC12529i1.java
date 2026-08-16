package com.google.common.collect;

import com.google.common.collect.AbstractC12505c1;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.SortedMap;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@I2.f("Use ImmutableMap.of or another implementation")
@X
@v2.b(emulated = true, serializable = true)
public abstract class AbstractC12529i1<K, V> implements Map<K, V>, Serializable {

    public static final Map.Entry<?, ?>[] f66664f = new Map.Entry[0];

    @q3.h
    @CheckForNull
    @J2.b
    public transient AbstractC12564r1<Map.Entry<K, V>> f66665b;

    @q3.h
    @CheckForNull
    @J2.b
    public transient AbstractC12564r1<K> f66666c;

    @q3.h
    @CheckForNull
    @J2.b
    public transient AbstractC12505c1<V> f66667d;

    @CheckForNull
    @J2.b
    public transient C12568s1<K, V> f66668e;

    public class a extends e3<K> {

        public final e3 f66669b;

        public a(AbstractC12529i1 abstractC12529i1, e3 e3Var) {
            this.f66669b = e3Var;
        }

        @Override
        public boolean hasNext() {
            return this.f66669b.hasNext();
        }

        @Override
        public K next() {
            return (K) ((Map.Entry) this.f66669b.next()).getKey();
        }
    }

    @I2.f
    public static class b<K, V> {

        @CheckForNull
        public Comparator<? super V> f66670a;

        public Object[] f66671b;

        public int f66672c;

        public boolean f66673d;

        public a f66674e;

        public static final class a {

            public final Object f66675a;

            public final Object f66676b;

            public final Object f66677c;

            public a(Object obj, Object obj2, Object obj3) {
                this.f66675a = obj;
                this.f66676b = obj2;
                this.f66677c = obj3;
            }

            public IllegalArgumentException a() {
                String valueOf = String.valueOf(this.f66675a);
                String valueOf2 = String.valueOf(this.f66676b);
                String valueOf3 = String.valueOf(this.f66675a);
                String valueOf4 = String.valueOf(this.f66677c);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 39 + valueOf2.length() + valueOf3.length() + valueOf4.length());
                sb2.append("Multiple entries with same key: ");
                sb2.append(valueOf);
                sb2.append("=");
                sb2.append(valueOf2);
                sb2.append(" and ");
                sb2.append(valueOf3);
                sb2.append("=");
                sb2.append(valueOf4);
                return new IllegalArgumentException(sb2.toString());
            }
        }

        public b() {
            this(4);
        }

        private void f(int i10) {
            int i11 = i10 * 2;
            Object[] objArr = this.f66671b;
            if (i11 > objArr.length) {
                this.f66671b = Arrays.copyOf(objArr, AbstractC12505c1.b.f(objArr.length, i11));
                this.f66673d = false;
            }
        }

        public static <V> void m(Object[] objArr, int i10, Comparator<? super V> comparator) {
            Map.Entry[] entryArr = new Map.Entry[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                int i12 = i11 * 2;
                Object obj = objArr[i12];
                Objects.requireNonNull(obj);
                Object obj2 = objArr[i12 + 1];
                Objects.requireNonNull(obj2);
                entryArr[i11] = new AbstractMap.SimpleImmutableEntry(obj, obj2);
            }
            Arrays.sort(entryArr, 0, i10, Ordering.i(comparator).E(Q1.N0()));
            for (int i13 = 0; i13 < i10; i13++) {
                int i14 = i13 * 2;
                objArr[i14] = entryArr[i13].getKey();
                objArr[i14 + 1] = entryArr[i13].getValue();
            }
        }

        public AbstractC12529i1<K, V> a() {
            return d();
        }

        public final AbstractC12529i1<K, V> b(boolean z10) {
            Object[] objArr;
            a aVar;
            a aVar2;
            if (z10 && (aVar2 = this.f66674e) != null) {
                throw aVar2.a();
            }
            int i10 = this.f66672c;
            if (this.f66670a == null) {
                objArr = this.f66671b;
            } else {
                if (this.f66673d) {
                    this.f66671b = Arrays.copyOf(this.f66671b, i10 * 2);
                }
                objArr = this.f66671b;
                if (!z10) {
                    objArr = g(objArr, this.f66672c);
                    if (objArr.length < this.f66671b.length) {
                        i10 = objArr.length >>> 1;
                    }
                }
                m(objArr, i10, this.f66670a);
            }
            this.f66673d = true;
            C12565r2 O10 = C12565r2.O(i10, objArr, this);
            if (!z10 || (aVar = this.f66674e) == null) {
                return O10;
            }
            throw aVar.a();
        }

        public AbstractC12529i1<K, V> c() {
            return b(false);
        }

        public AbstractC12529i1<K, V> d() {
            return b(true);
        }

        @I2.a
        public b<K, V> e(b<K, V> bVar) {
            w2.H.E(bVar);
            f(this.f66672c + bVar.f66672c);
            System.arraycopy(bVar.f66671b, 0, this.f66671b, this.f66672c * 2, bVar.f66672c * 2);
            this.f66672c += bVar.f66672c;
            return this;
        }

        public final Object[] g(Object[] objArr, int i10) {
            HashSet hashSet = new HashSet();
            BitSet bitSet = new BitSet();
            for (int i11 = i10 - 1; i11 >= 0; i11--) {
                Object obj = objArr[i11 * 2];
                Objects.requireNonNull(obj);
                if (!hashSet.add(obj)) {
                    bitSet.set(i11);
                }
            }
            if (bitSet.isEmpty()) {
                return objArr;
            }
            Object[] objArr2 = new Object[(i10 - bitSet.cardinality()) * 2];
            int i12 = 0;
            int i13 = 0;
            while (i12 < i10 * 2) {
                if (bitSet.get(i12 >>> 1)) {
                    i12 += 2;
                } else {
                    int i14 = i13 + 1;
                    int i15 = i12 + 1;
                    Object obj2 = objArr[i12];
                    Objects.requireNonNull(obj2);
                    objArr2[i13] = obj2;
                    i13 += 2;
                    i12 += 2;
                    Object obj3 = objArr[i15];
                    Objects.requireNonNull(obj3);
                    objArr2[i14] = obj3;
                }
            }
            return objArr2;
        }

        @I2.a
        @InterfaceC15800a
        public b<K, V> h(Comparator<? super V> comparator) {
            w2.H.h0(this.f66670a == null, "valueComparator was already set");
            this.f66670a = (Comparator) w2.H.F(comparator, "valueComparator");
            return this;
        }

        @I2.a
        public b<K, V> i(K k10, V v10) {
            f(this.f66672c + 1);
            B.a(k10, v10);
            Object[] objArr = this.f66671b;
            int i10 = this.f66672c;
            objArr[i10 * 2] = k10;
            objArr[(i10 * 2) + 1] = v10;
            this.f66672c = i10 + 1;
            return this;
        }

        @I2.a
        public b<K, V> j(Map.Entry<? extends K, ? extends V> entry) {
            return i(entry.getKey(), entry.getValue());
        }

        @I2.a
        @InterfaceC15800a
        public b<K, V> k(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            if (iterable instanceof Collection) {
                f(this.f66672c + ((Collection) iterable).size());
            }
            Iterator<? extends Map.Entry<? extends K, ? extends V>> it = iterable.iterator();
            while (it.hasNext()) {
                j(it.next());
            }
            return this;
        }

        @I2.a
        public b<K, V> l(Map<? extends K, ? extends V> map) {
            return k(map.entrySet());
        }

        public b(int i10) {
            this.f66671b = new Object[i10 * 2];
            this.f66672c = 0;
            this.f66673d = false;
        }
    }

    public static abstract class c<K, V> extends AbstractC12529i1<K, V> {

        public class a extends AbstractC12533j1<K, V> {
            public a() {
            }

            @Override
            public AbstractC12529i1<K, V> H() {
                return c.this;
            }

            @Override
            public e3<Map.Entry<K, V>> iterator() {
                return c.this.N();
            }
        }

        public abstract e3<Map.Entry<K, V>> N();

        @Override
        public Set entrySet() {
            return super.entrySet();
        }

        @Override
        public Set o() {
            return super.o();
        }

        @Override
        public AbstractC12564r1<Map.Entry<K, V>> o() {
            return new a();
        }

        @Override
        public AbstractC12564r1<K> p() {
            return new C12537k1(this);
        }

        @Override
        public AbstractC12505c1<V> q() {
            return new C12541l1(this);
        }

        @Override
        public Collection values() {
            return super.values();
        }
    }

    public final class d extends c<K, AbstractC12564r1<V>> {

        public class a extends e3<Map.Entry<K, AbstractC12564r1<V>>> {

            public final Iterator f66680b;

            public class C1005a extends AbstractC12519g<K, AbstractC12564r1<V>> {

                public final Map.Entry f66681b;

                public C1005a(a aVar, Map.Entry entry) {
                    this.f66681b = entry;
                }

                @Override
                public AbstractC12564r1<V> getValue() {
                    return AbstractC12564r1.A(this.f66681b.getValue());
                }

                @Override
                public K getKey() {
                    return (K) this.f66681b.getKey();
                }
            }

            public a(d dVar, Iterator it) {
                this.f66680b = it;
            }

            @Override
            public Map.Entry<K, AbstractC12564r1<V>> next() {
                return new C1005a(this, (Map.Entry) this.f66680b.next());
            }

            @Override
            public boolean hasNext() {
                return this.f66680b.hasNext();
            }
        }

        public d() {
        }

        @Override
        public e3<Map.Entry<K, AbstractC12564r1<V>>> N() {
            return new a(this, AbstractC12529i1.this.entrySet().iterator());
        }

        @Override
        @CheckForNull
        public AbstractC12564r1<V> get(@CheckForNull Object obj) {
            Object obj2 = AbstractC12529i1.this.get(obj);
            if (obj2 == null) {
                return null;
            }
            return AbstractC12564r1.A(obj2);
        }

        @Override
        public boolean containsKey(@CheckForNull Object obj) {
            return AbstractC12529i1.this.containsKey(obj);
        }

        @Override
        public int hashCode() {
            return AbstractC12529i1.this.hashCode();
        }

        @Override
        public AbstractC12564r1<K> p() {
            return AbstractC12529i1.this.o();
        }

        @Override
        public int size() {
            return AbstractC12529i1.this.size();
        }

        @Override
        public boolean u() {
            return AbstractC12529i1.this.u();
        }

        @Override
        public boolean v() {
            return AbstractC12529i1.this.v();
        }

        public d(AbstractC12529i1 abstractC12529i1, a aVar) {
            this();
        }
    }

    public static class e<K, V> implements Serializable {

        public static final boolean f66682d = true;

        public static final long f66683e = 0;

        public final Object f66684b;

        public final Object f66685c;

        public e(AbstractC12529i1<K, V> abstractC12529i1) {
            Object[] objArr = new Object[abstractC12529i1.size()];
            Object[] objArr2 = new Object[abstractC12529i1.size()];
            e3<Map.Entry<K, V>> it = abstractC12529i1.entrySet().iterator();
            int i10 = 0;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                objArr[i10] = next.getKey();
                objArr2[i10] = next.getValue();
                i10++;
            }
            this.f66684b = objArr;
            this.f66685c = objArr2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Object a() {
            Object[] objArr = (Object[]) this.f66684b;
            Object[] objArr2 = (Object[]) this.f66685c;
            b<K, V> b10 = b(objArr.length);
            for (int i10 = 0; i10 < objArr.length; i10++) {
                b10.i(objArr[i10], objArr2[i10]);
            }
            return b10.d();
        }

        public b<K, V> b(int i10) {
            return new b<>(i10);
        }

        public final Object c() {
            Object obj = this.f66684b;
            if (!(obj instanceof AbstractC12564r1)) {
                return a();
            }
            AbstractC12564r1 abstractC12564r1 = (AbstractC12564r1) obj;
            AbstractC12505c1 abstractC12505c1 = (AbstractC12505c1) this.f66685c;
            b<K, V> b10 = b(abstractC12564r1.size());
            e3 it = abstractC12564r1.iterator();
            e3 it2 = abstractC12505c1.iterator();
            while (it.hasNext()) {
                b10.i(it.next(), it2.next());
            }
            return b10.d();
        }
    }

    public static <K, V> AbstractC12529i1<K, V> A(K k10, V v10, K k11, V v11) {
        B.a(k10, v10);
        B.a(k11, v11);
        return C12565r2.N(2, new Object[]{k10, v10, k11, v11});
    }

    public static <K, V> AbstractC12529i1<K, V> B(K k10, V v10, K k11, V v11, K k12, V v12) {
        B.a(k10, v10);
        B.a(k11, v11);
        B.a(k12, v12);
        return C12565r2.N(3, new Object[]{k10, v10, k11, v11, k12, v12});
    }

    public static <K, V> AbstractC12529i1<K, V> C(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13) {
        B.a(k10, v10);
        B.a(k11, v11);
        B.a(k12, v12);
        B.a(k13, v13);
        return C12565r2.N(4, new Object[]{k10, v10, k11, v11, k12, v12, k13, v13});
    }

    public static <K, V> AbstractC12529i1<K, V> D(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14) {
        B.a(k10, v10);
        B.a(k11, v11);
        B.a(k12, v12);
        B.a(k13, v13);
        B.a(k14, v14);
        return C12565r2.N(5, new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14});
    }

    public static <K, V> AbstractC12529i1<K, V> E(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15) {
        B.a(k10, v10);
        B.a(k11, v11);
        B.a(k12, v12);
        B.a(k13, v13);
        B.a(k14, v14);
        B.a(k15, v15);
        return C12565r2.N(6, new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14, k15, v15});
    }

    public static <K, V> AbstractC12529i1<K, V> F(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16) {
        B.a(k10, v10);
        B.a(k11, v11);
        B.a(k12, v12);
        B.a(k13, v13);
        B.a(k14, v14);
        B.a(k15, v15);
        B.a(k16, v16);
        return C12565r2.N(7, new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16});
    }

    public static <K, V> AbstractC12529i1<K, V> H(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17) {
        B.a(k10, v10);
        B.a(k11, v11);
        B.a(k12, v12);
        B.a(k13, v13);
        B.a(k14, v14);
        B.a(k15, v15);
        B.a(k16, v16);
        B.a(k17, v17);
        return C12565r2.N(8, new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16, k17, v17});
    }

    public static <K, V> AbstractC12529i1<K, V> I(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17, K k18, V v18) {
        B.a(k10, v10);
        B.a(k11, v11);
        B.a(k12, v12);
        B.a(k13, v13);
        B.a(k14, v14);
        B.a(k15, v15);
        B.a(k16, v16);
        B.a(k17, v17);
        B.a(k18, v18);
        return C12565r2.N(9, new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16, k17, v17, k18, v18});
    }

    public static <K, V> AbstractC12529i1<K, V> J(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17, K k18, V v18, K k19, V v19) {
        B.a(k10, v10);
        B.a(k11, v11);
        B.a(k12, v12);
        B.a(k13, v13);
        B.a(k14, v14);
        B.a(k15, v15);
        B.a(k16, v16);
        B.a(k17, v17);
        B.a(k18, v18);
        B.a(k19, v19);
        return C12565r2.N(10, new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16, k17, v17, k18, v18, k19, v19});
    }

    @SafeVarargs
    public static <K, V> AbstractC12529i1<K, V> K(Map.Entry<? extends K, ? extends V>... entryArr) {
        return m(Arrays.asList(entryArr));
    }

    public static <K, V> b<K, V> i() {
        return new b<>();
    }

    @InterfaceC15800a
    public static <K, V> b<K, V> j(int i10) {
        B.b(i10, "expectedSize");
        return new b<>(i10);
    }

    public static void k(boolean z10, String str, Object obj, Object obj2) {
        if (!z10) {
            throw l(str, obj, obj2);
        }
    }

    public static IllegalArgumentException l(String str, Object obj, Object obj2) {
        String valueOf = String.valueOf(obj);
        String valueOf2 = String.valueOf(obj2);
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 34 + valueOf.length() + valueOf2.length());
        sb2.append("Multiple entries with same ");
        sb2.append(str);
        sb2.append(": ");
        sb2.append(valueOf);
        sb2.append(" and ");
        sb2.append(valueOf2);
        return new IllegalArgumentException(sb2.toString());
    }

    @InterfaceC15800a
    public static <K, V> AbstractC12529i1<K, V> m(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        b bVar = new b(iterable instanceof Collection ? ((Collection) iterable).size() : 4);
        bVar.k(iterable);
        return bVar.a();
    }

    public static <K, V> AbstractC12529i1<K, V> n(Map<? extends K, ? extends V> map) {
        if ((map instanceof AbstractC12529i1) && !(map instanceof SortedMap)) {
            AbstractC12529i1<K, V> abstractC12529i1 = (AbstractC12529i1) map;
            if (!abstractC12529i1.v()) {
                return abstractC12529i1;
            }
        }
        return m(map.entrySet());
    }

    public static <K, V> Map.Entry<K, V> r(K k10, V v10) {
        B.a(k10, v10);
        return new AbstractMap.SimpleImmutableEntry(k10, v10);
    }

    public static <K, V> AbstractC12529i1<K, V> y() {
        return (AbstractC12529i1<K, V>) C12565r2.f66835o;
    }

    public static <K, V> AbstractC12529i1<K, V> z(K k10, V v10) {
        B.a(k10, v10);
        return C12565r2.N(1, new Object[]{k10, v10});
    }

    @Override
    public AbstractC12505c1<V> values() {
        AbstractC12505c1<V> abstractC12505c1 = this.f66667d;
        if (abstractC12505c1 != null) {
            return abstractC12505c1;
        }
        AbstractC12505c1<V> q10 = q();
        this.f66667d = q10;
        return q10;
    }

    public Object M() {
        return new e(this);
    }

    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean containsKey(@CheckForNull Object obj) {
        return get(obj) != null;
    }

    @Override
    public boolean containsValue(@CheckForNull Object obj) {
        return values().contains(obj);
    }

    public C12568s1<K, V> e() {
        if (isEmpty()) {
            return C12568s1.a0();
        }
        C12568s1<K, V> c12568s1 = this.f66668e;
        if (c12568s1 != null) {
            return c12568s1;
        }
        C12568s1<K, V> c12568s12 = new C12568s1<>(new d(this, null), size(), null);
        this.f66668e = c12568s12;
        return c12568s12;
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return Q1.w(this, obj);
    }

    @Override
    @CheckForNull
    public abstract V get(@CheckForNull Object obj);

    @Override
    @CheckForNull
    public final V getOrDefault(@CheckForNull Object obj, @CheckForNull V v10) {
        V v11 = get(obj);
        return v11 != null ? v11 : v10;
    }

    @Override
    public int hashCode() {
        return D2.k(entrySet());
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    public abstract AbstractC12564r1<Map.Entry<K, V>> o();

    public abstract AbstractC12564r1<K> p();

    @Override
    @I2.a
    @CheckForNull
    @Deprecated
    @I2.e("Always throws UnsupportedOperationException")
    public final V put(K k10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    public abstract AbstractC12505c1<V> q();

    @Override
    @I2.a
    @CheckForNull
    @Deprecated
    public final V remove(@CheckForNull Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public AbstractC12564r1<Map.Entry<K, V>> entrySet() {
        AbstractC12564r1<Map.Entry<K, V>> abstractC12564r1 = this.f66665b;
        if (abstractC12564r1 != null) {
            return abstractC12564r1;
        }
        AbstractC12564r1<Map.Entry<K, V>> o10 = o();
        this.f66665b = o10;
        return o10;
    }

    public String toString() {
        return Q1.w0(this);
    }

    public boolean u() {
        return false;
    }

    public abstract boolean v();

    public e3<K> w() {
        return new a(this, entrySet().iterator());
    }

    @Override
    public AbstractC12564r1<K> o() {
        AbstractC12564r1<K> abstractC12564r1 = this.f66666c;
        if (abstractC12564r1 != null) {
            return abstractC12564r1;
        }
        AbstractC12564r1<K> p10 = p();
        this.f66666c = p10;
        return p10;
    }
}
