package com.google.common.collect;

import com.google.common.collect.S2;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.List;
import javax.annotation.CheckForNull;

@X
@v2.b
public abstract class AbstractC12589x2<R, C, V> extends AbstractC12596z1<R, C, V> {

    public final class b extends A1<S2.a<R, C, V>> {
        public b() {
        }

        @Override
        public S2.a<R, C, V> get(int i10) {
            return AbstractC12589x2.this.K(i10);
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof S2.a)) {
                return false;
            }
            S2.a aVar = (S2.a) obj;
            Object e10 = AbstractC12589x2.this.e(aVar.b(), aVar.a());
            return e10 != null && e10.equals(aVar.getValue());
        }

        @Override
        public boolean h() {
            return false;
        }

        @Override
        public int size() {
            return AbstractC12589x2.this.size();
        }
    }

    public final class c extends AbstractC12521g1<V> {
        public c() {
        }

        @Override
        public V get(int i10) {
            return (V) AbstractC12589x2.this.M(i10);
        }

        @Override
        public boolean h() {
            return true;
        }

        @Override
        public int size() {
            return AbstractC12589x2.this.size();
        }
    }

    public static <R, C, V> AbstractC12589x2<R, C, V> G(Iterable<S2.a<R, C, V>> iterable) {
        return I(iterable, null, null);
    }

    public static <R, C, V> AbstractC12589x2<R, C, V> H(List<S2.a<R, C, V>> list, @CheckForNull final Comparator<? super R> comparator, @CheckForNull final Comparator<? super C> comparator2) {
        w2.H.E(list);
        if (comparator != null || comparator2 != null) {
            Collections.sort(list, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    int N10;
                    N10 = AbstractC12589x2.N(Comparator.this, comparator2, (S2.a) obj, (S2.a) obj2);
                    return N10;
                }
            });
        }
        return I(list, comparator, comparator2);
    }

    public static <R, C, V> AbstractC12589x2<R, C, V> I(Iterable<S2.a<R, C, V>> iterable, @CheckForNull Comparator<? super R> comparator, @CheckForNull Comparator<? super C> comparator2) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        AbstractC12521g1 p10 = AbstractC12521g1.p(iterable);
        for (S2.a<R, C, V> aVar : iterable) {
            linkedHashSet.add(aVar.b());
            linkedHashSet2.add(aVar.a());
        }
        return J(p10, comparator == null ? AbstractC12564r1.s(linkedHashSet) : AbstractC12564r1.s(AbstractC12521g1.N(comparator, linkedHashSet)), comparator2 == null ? AbstractC12564r1.s(linkedHashSet2) : AbstractC12564r1.s(AbstractC12521g1.N(comparator2, linkedHashSet2)));
    }

    public static <R, C, V> AbstractC12589x2<R, C, V> J(AbstractC12521g1<S2.a<R, C, V>> abstractC12521g1, AbstractC12564r1<R> abstractC12564r1, AbstractC12564r1<C> abstractC12564r12) {
        return ((long) abstractC12521g1.size()) > (((long) abstractC12564r1.size()) * ((long) abstractC12564r12.size())) / 2 ? new S(abstractC12521g1, abstractC12564r1, abstractC12564r12) : new O2(abstractC12521g1, abstractC12564r1, abstractC12564r12);
    }

    public static int N(Comparator comparator, Comparator comparator2, S2.a aVar, S2.a aVar2) {
        int compare = comparator == null ? 0 : comparator.compare(aVar.b(), aVar2.b());
        if (compare != 0) {
            return compare;
        }
        if (comparator2 == null) {
            return 0;
        }
        return comparator2.compare(aVar.a(), aVar2.a());
    }

    public final void F(R r10, C c10, @CheckForNull V v10, V v11) {
        w2.H.A(v10 == null, "Duplicate key: (row=%s, column=%s), values: [%s, %s].", r10, c10, v11, v10);
    }

    public abstract S2.a<R, C, V> K(int i10);

    public abstract V M(int i10);

    @Override
    public final AbstractC12564r1<S2.a<R, C, V>> b() {
        return isEmpty() ? AbstractC12564r1.z() : new b();
    }

    @Override
    public final AbstractC12505c1<V> c() {
        return isEmpty() ? AbstractC12521g1.x() : new c();
    }
}
