package com.google.common.collect;

import com.google.common.collect.AbstractC12529i1;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@X
@v2.b(emulated = true, serializable = true)
public abstract class AbstractC12497a1<K, V> extends AbstractC12529i1<K, V> implements InterfaceC12582w<K, V> {

    public static final class a<K, V> extends AbstractC12529i1.b<K, V> {
        public a() {
        }

        @Override
        public AbstractC12497a1<K, V> a() {
            return d();
        }

        @Override
        @I2.e
        @Deprecated
        public AbstractC12497a1<K, V> c() {
            throw new UnsupportedOperationException("Not supported for bimaps");
        }

        @Override
        public AbstractC12497a1<K, V> d() {
            int i10 = this.f66672c;
            if (i10 == 0) {
                return AbstractC12497a1.U();
            }
            if (this.f66670a != null) {
                if (this.f66673d) {
                    this.f66671b = Arrays.copyOf(this.f66671b, i10 * 2);
                }
                AbstractC12529i1.b.m(this.f66671b, this.f66672c, this.f66670a);
            }
            this.f66673d = true;
            return new C12558p2(this.f66671b, this.f66672c);
        }

        @Override
        @I2.a
        public a<K, V> e(AbstractC12529i1.b<K, V> bVar) {
            super.e(bVar);
            return this;
        }

        @Override
        @I2.a
        @InterfaceC15800a
        public a<K, V> h(Comparator<? super V> comparator) {
            super.h(comparator);
            return this;
        }

        @Override
        @I2.a
        public a<K, V> i(K k10, V v10) {
            super.i(k10, v10);
            return this;
        }

        @Override
        @I2.a
        public a<K, V> j(Map.Entry<? extends K, ? extends V> entry) {
            super.j(entry);
            return this;
        }

        @Override
        @I2.a
        @InterfaceC15800a
        public a<K, V> k(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            super.k(iterable);
            return this;
        }

        @Override
        @I2.a
        public a<K, V> l(Map<? extends K, ? extends V> map) {
            super.l(map);
            return this;
        }

        public a(int i10) {
            super(i10);
        }
    }

    public static class b<K, V> extends AbstractC12529i1.e<K, V> {

        public static final long f66419f = 0;

        public b(AbstractC12497a1<K, V> abstractC12497a1) {
            super(abstractC12497a1);
        }

        @Override
        public a<K, V> b(int i10) {
            return new a<>(i10);
        }
    }

    public static <K, V> a<K, V> N() {
        return new a<>();
    }

    @InterfaceC15800a
    public static <K, V> a<K, V> O(int i10) {
        B.b(i10, "expectedSize");
        return new a<>(i10);
    }

    @InterfaceC15800a
    public static <K, V> AbstractC12497a1<K, V> P(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return new a(iterable instanceof Collection ? ((Collection) iterable).size() : 4).k(iterable).a();
    }

    public static <K, V> AbstractC12497a1<K, V> Q(Map<? extends K, ? extends V> map) {
        if (map instanceof AbstractC12497a1) {
            AbstractC12497a1<K, V> abstractC12497a1 = (AbstractC12497a1) map;
            if (!abstractC12497a1.v()) {
                return abstractC12497a1;
            }
        }
        return P(map.entrySet());
    }

    public static <K, V> AbstractC12497a1<K, V> U() {
        return C12558p2.f66782l;
    }

    public static <K, V> AbstractC12497a1<K, V> V(K k10, V v10) {
        B.a(k10, v10);
        return new C12558p2(new Object[]{k10, v10}, 1);
    }

    public static <K, V> AbstractC12497a1<K, V> W(K k10, V v10, K k11, V v11) {
        B.a(k10, v10);
        B.a(k11, v11);
        return new C12558p2(new Object[]{k10, v10, k11, v11}, 2);
    }

    public static <K, V> AbstractC12497a1<K, V> X(K k10, V v10, K k11, V v11, K k12, V v12) {
        B.a(k10, v10);
        B.a(k11, v11);
        B.a(k12, v12);
        return new C12558p2(new Object[]{k10, v10, k11, v11, k12, v12}, 3);
    }

    public static <K, V> AbstractC12497a1<K, V> Y(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13) {
        B.a(k10, v10);
        B.a(k11, v11);
        B.a(k12, v12);
        B.a(k13, v13);
        return new C12558p2(new Object[]{k10, v10, k11, v11, k12, v12, k13, v13}, 4);
    }

    public static <K, V> AbstractC12497a1<K, V> Z(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14) {
        B.a(k10, v10);
        B.a(k11, v11);
        B.a(k12, v12);
        B.a(k13, v13);
        B.a(k14, v14);
        return new C12558p2(new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14}, 5);
    }

    public static <K, V> AbstractC12497a1<K, V> a0(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15) {
        B.a(k10, v10);
        B.a(k11, v11);
        B.a(k12, v12);
        B.a(k13, v13);
        B.a(k14, v14);
        B.a(k15, v15);
        return new C12558p2(new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14, k15, v15}, 6);
    }

    public static <K, V> AbstractC12497a1<K, V> b0(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16) {
        B.a(k10, v10);
        B.a(k11, v11);
        B.a(k12, v12);
        B.a(k13, v13);
        B.a(k14, v14);
        B.a(k15, v15);
        B.a(k16, v16);
        return new C12558p2(new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16}, 7);
    }

    public static <K, V> AbstractC12497a1<K, V> c0(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17) {
        B.a(k10, v10);
        B.a(k11, v11);
        B.a(k12, v12);
        B.a(k13, v13);
        B.a(k14, v14);
        B.a(k15, v15);
        B.a(k16, v16);
        B.a(k17, v17);
        return new C12558p2(new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16, k17, v17}, 8);
    }

    public static <K, V> AbstractC12497a1<K, V> d0(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17, K k18, V v18) {
        B.a(k10, v10);
        B.a(k11, v11);
        B.a(k12, v12);
        B.a(k13, v13);
        B.a(k14, v14);
        B.a(k15, v15);
        B.a(k16, v16);
        B.a(k17, v17);
        B.a(k18, v18);
        return new C12558p2(new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16, k17, v17, k18, v18}, 9);
    }

    public static <K, V> AbstractC12497a1<K, V> e0(K k10, V v10, K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17, K k18, V v18, K k19, V v19) {
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
        return new C12558p2(new Object[]{k10, v10, k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16, k17, v17, k18, v18, k19, v19}, 10);
    }

    @SafeVarargs
    public static <K, V> AbstractC12497a1<K, V> f0(Map.Entry<? extends K, ? extends V>... entryArr) {
        return P(Arrays.asList(entryArr));
    }

    @Override
    public Object M() {
        return new b(this);
    }

    @Override
    public final AbstractC12564r1<V> q() {
        throw new AssertionError((Object) "should never be called");
    }

    @Override
    public abstract AbstractC12497a1<V, K> A8();

    @Override
    @I2.a
    @CheckForNull
    @Deprecated
    @I2.e("Always throws UnsupportedOperationException")
    public final V U6(K k10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public AbstractC12564r1<V> values() {
        return A8().o();
    }
}
