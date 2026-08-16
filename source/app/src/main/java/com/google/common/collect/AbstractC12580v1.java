package com.google.common.collect;

import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.AbstractC12549n1;
import com.google.common.collect.V1;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import javax.annotation.CheckForNull;

@X
@v2.c
public abstract class AbstractC12580v1<E> extends AbstractC12584w1<E> implements K2<E> {

    @CheckForNull
    @J2.b
    public transient AbstractC12580v1<E> f66918e;

    public static class a<E> extends AbstractC12549n1.b<E> {

        public final Comparator<? super E> f66919e;

        @v2.d
        public E[] f66920f;

        public int[] f66921g;

        public int f66922h;

        public boolean f66923i;

        public a(Comparator<? super E> comparator) {
            super(true);
            this.f66919e = (Comparator) w2.H.E(comparator);
            this.f66920f = (E[]) new Object[4];
            this.f66921g = new int[4];
        }

        @Override
        @I2.a
        public a<E> g(E e10) {
            return k(e10, 1);
        }

        @Override
        @I2.a
        public a<E> b(E... eArr) {
            for (E e10 : eArr) {
                g(e10);
            }
            return this;
        }

        @Override
        @I2.a
        public a<E> c(Iterable<? extends E> iterable) {
            if (iterable instanceof V1) {
                for (V1.a<E> aVar : ((V1) iterable).entrySet()) {
                    k(aVar.getElement(), aVar.getCount());
                }
            } else {
                Iterator<? extends E> it = iterable.iterator();
                while (it.hasNext()) {
                    g(it.next());
                }
            }
            return this;
        }

        @Override
        @I2.a
        public a<E> d(Iterator<? extends E> it) {
            while (it.hasNext()) {
                g(it.next());
            }
            return this;
        }

        @Override
        @I2.a
        public a<E> k(E e10, int i10) {
            w2.H.E(e10);
            B.b(i10, "occurrences");
            if (i10 == 0) {
                return this;
            }
            w();
            E[] eArr = this.f66920f;
            int i11 = this.f66922h;
            eArr[i11] = e10;
            this.f66921g[i11] = i10;
            this.f66922h = i11 + 1;
            return this;
        }

        @Override
        public AbstractC12580v1<E> e() {
            v();
            int i10 = this.f66922h;
            if (i10 == 0) {
                return AbstractC12580v1.V(this.f66919e);
            }
            C12581v2 c12581v2 = (C12581v2) AbstractC12588x1.Q(this.f66919e, i10, this.f66920f);
            long[] jArr = new long[this.f66922h + 1];
            int i11 = 0;
            while (i11 < this.f66922h) {
                int i12 = i11 + 1;
                jArr[i12] = jArr[i11] + this.f66921g[i11];
                i11 = i12;
            }
            this.f66923i = true;
            return new C12577u2(c12581v2, jArr, 0, this.f66922h);
        }

        public final void u(boolean z10) {
            int i10 = this.f66922h;
            if (i10 == 0) {
                return;
            }
            Object[] objArr = (E[]) Arrays.copyOf(this.f66920f, i10);
            Arrays.sort(objArr, this.f66919e);
            int i11 = 1;
            for (int i12 = 1; i12 < objArr.length; i12++) {
                if (this.f66919e.compare((Object) objArr[i11 - 1], (Object) objArr[i12]) < 0) {
                    objArr[i11] = objArr[i12];
                    i11++;
                }
            }
            Arrays.fill(objArr, i11, this.f66922h, (Object) null);
            if (z10) {
                int i13 = i11 * 4;
                int i14 = this.f66922h;
                if (i13 > i14 * 3) {
                    objArr = (E[]) Arrays.copyOf(objArr, E2.f.t(i14, (i14 / 2) + 1));
                }
            }
            int[] iArr = new int[objArr.length];
            for (int i15 = 0; i15 < this.f66922h; i15++) {
                int binarySearch = Arrays.binarySearch(objArr, 0, i11, this.f66920f[i15], this.f66919e);
                int i16 = this.f66921g[i15];
                if (i16 >= 0) {
                    iArr[binarySearch] = iArr[binarySearch] + i16;
                } else {
                    iArr[binarySearch] = ~i16;
                }
            }
            this.f66920f = (E[]) objArr;
            this.f66921g = iArr;
            this.f66922h = i11;
        }

        public final void v() {
            u(false);
            int i10 = 0;
            int i11 = 0;
            while (true) {
                int i12 = this.f66922h;
                if (i10 >= i12) {
                    Arrays.fill(this.f66920f, i11, i12, (Object) null);
                    Arrays.fill(this.f66921g, i11, this.f66922h, 0);
                    this.f66922h = i11;
                    return;
                }
                int[] iArr = this.f66921g;
                int i13 = iArr[i10];
                if (i13 > 0) {
                    E[] eArr = this.f66920f;
                    eArr[i11] = eArr[i10];
                    iArr[i11] = i13;
                    i11++;
                }
                i10++;
            }
        }

        public final void w() {
            int i10 = this.f66922h;
            E[] eArr = this.f66920f;
            if (i10 == eArr.length) {
                u(true);
            } else if (this.f66923i) {
                this.f66920f = (E[]) Arrays.copyOf(eArr, eArr.length);
            }
            this.f66923i = false;
        }

        @Override
        @I2.a
        public a<E> m(E e10, int i10) {
            w2.H.E(e10);
            B.b(i10, oc.c.f98682m);
            w();
            E[] eArr = this.f66920f;
            int i11 = this.f66922h;
            eArr[i11] = e10;
            this.f66921g[i11] = ~i10;
            this.f66922h = i11 + 1;
            return this;
        }
    }

    public static final class b<E> implements Serializable {

        public final Comparator<? super E> f66924b;

        public final E[] f66925c;

        public final int[] f66926d;

        public b(K2<E> k22) {
            this.f66924b = k22.comparator();
            int size = k22.entrySet().size();
            this.f66925c = (E[]) new Object[size];
            this.f66926d = new int[size];
            int i10 = 0;
            for (V1.a<E> aVar : k22.entrySet()) {
                this.f66925c[i10] = aVar.getElement();
                this.f66926d[i10] = aVar.getCount();
                i10++;
            }
        }

        public Object a() {
            int length = this.f66925c.length;
            a aVar = new a(this.f66924b);
            for (int i10 = 0; i10 < length; i10++) {
                aVar.k(this.f66925c[i10], this.f66926d[i10]);
            }
            return aVar.e();
        }
    }

    public static <E> AbstractC12580v1<E> M(Iterable<? extends E> iterable) {
        return N(Ordering.A(), iterable);
    }

    public static <E> AbstractC12580v1<E> N(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        if (iterable instanceof AbstractC12580v1) {
            AbstractC12580v1<E> abstractC12580v1 = (AbstractC12580v1) iterable;
            if (comparator.equals(abstractC12580v1.comparator())) {
                return abstractC12580v1.h() ? S(comparator, abstractC12580v1.entrySet().a()) : abstractC12580v1;
            }
        }
        return new a(comparator).c(iterable).e();
    }

    public static <E> AbstractC12580v1<E> O(Comparator<? super E> comparator, Iterator<? extends E> it) {
        w2.H.E(comparator);
        return new a(comparator).d(it).e();
    }

    public static <E> AbstractC12580v1<E> P(Iterator<? extends E> it) {
        return O(Ordering.A(), it);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>([TE;)Lcom/google/common/collect/v1<TE;>; */
    public static AbstractC12580v1 Q(Comparable[] comparableArr) {
        return N(Ordering.A(), Arrays.asList(comparableArr));
    }

    public static <E> AbstractC12580v1<E> R(K2<E> k22) {
        return S(k22.comparator(), M1.r(k22.entrySet()));
    }

    public static <E> AbstractC12580v1<E> S(Comparator<? super E> comparator, Collection<V1.a<E>> collection) {
        if (collection.isEmpty()) {
            return V(comparator);
        }
        AbstractC12521g1.a aVar = new AbstractC12521g1.a(collection.size());
        long[] jArr = new long[collection.size() + 1];
        Iterator<V1.a<E>> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            aVar.a(it.next().getElement());
            int i11 = i10 + 1;
            jArr[i11] = jArr[i10] + r5.getCount();
            i10 = i11;
        }
        return new C12577u2(new C12581v2(aVar.e(), comparator), jArr, 0, collection.size());
    }

    public static <E> AbstractC12580v1<E> V(Comparator<? super E> comparator) {
        return Ordering.A().equals(comparator) ? (AbstractC12580v1<E>) C12577u2.f66913k : new C12577u2(comparator);
    }

    public static <E extends Comparable<?>> a<E> X() {
        return new a<>(Ordering.A());
    }

    public static <E> AbstractC12580v1<E> Y() {
        return (AbstractC12580v1<E>) C12577u2.f66913k;
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;)Lcom/google/common/collect/v1<TE;>; */
    public static AbstractC12580v1 Z(Comparable comparable) {
        return new C12577u2((C12581v2) AbstractC12588x1.i0(comparable), new long[]{0, 1}, 0, 1);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;)Lcom/google/common/collect/v1<TE;>; */
    public static AbstractC12580v1 a0(Comparable comparable, Comparable comparable2) {
        return N(Ordering.A(), Arrays.asList(comparable, comparable2));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;)Lcom/google/common/collect/v1<TE;>; */
    public static AbstractC12580v1 b0(Comparable comparable, Comparable comparable2, Comparable comparable3) {
        return N(Ordering.A(), Arrays.asList(comparable, comparable2, comparable3));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;)Lcom/google/common/collect/v1<TE;>; */
    public static AbstractC12580v1 c0(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4) {
        return N(Ordering.A(), Arrays.asList(comparable, comparable2, comparable3, comparable4));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;)Lcom/google/common/collect/v1<TE;>; */
    public static AbstractC12580v1 d0(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5) {
        return N(Ordering.A(), Arrays.asList(comparable, comparable2, comparable3, comparable4, comparable5));
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)Lcom/google/common/collect/v1<TE;>; */
    public static AbstractC12580v1 e0(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5, Comparable comparable6, Comparable... comparableArr) {
        ArrayList u10 = M1.u(comparableArr.length + 6);
        Collections.addAll(u10, comparable, comparable2, comparable3, comparable4, comparable5, comparable6);
        Collections.addAll(u10, comparableArr);
        return N(Ordering.A(), u10);
    }

    public static <E> a<E> f0(Comparator<E> comparator) {
        return new a<>(comparator);
    }

    public static <E extends Comparable<?>> a<E> g0() {
        return new a<>(Ordering.A().F());
    }

    @Override
    public AbstractC12580v1<E> P6() {
        AbstractC12580v1<E> abstractC12580v1 = this.f66918e;
        if (abstractC12580v1 == null) {
            abstractC12580v1 = isEmpty() ? V(Ordering.i(comparator()).F()) : new T<>(this);
            this.f66918e = abstractC12580v1;
        }
        return abstractC12580v1;
    }

    @Override
    public abstract AbstractC12588x1<E> S1();

    @Override
    public abstract AbstractC12580v1<E> B7(E e10, EnumC12586x enumC12586x);

    @Override
    public final Comparator<? super E> comparator() {
        return S1().comparator();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public AbstractC12580v1<E> dc(E e10, EnumC12586x enumC12586x, E e11, EnumC12586x enumC12586x2) {
        w2.H.y(comparator().compare(e10, e11) <= 0, "Expected lowerBound <= upperBound but %s > %s", e10, e11);
        return Jd(e10, enumC12586x).B7(e11, enumC12586x2);
    }

    @Override
    public abstract AbstractC12580v1<E> Jd(E e10, EnumC12586x enumC12586x);

    @Override
    public Object j() {
        return new b(this);
    }

    @Override
    @I2.a
    @CheckForNull
    @Deprecated
    @I2.e("Always throws UnsupportedOperationException")
    public final V1.a<E> pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override
    @I2.a
    @CheckForNull
    @Deprecated
    @I2.e("Always throws UnsupportedOperationException")
    public final V1.a<E> pollLastEntry() {
        throw new UnsupportedOperationException();
    }
}
