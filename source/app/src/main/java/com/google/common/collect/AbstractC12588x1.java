package com.google.common.collect;

import com.google.common.collect.AbstractC12564r1;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true, serializable = true)
public abstract class AbstractC12588x1<E> extends AbstractC12592y1<E> implements NavigableSet<E>, G2<E> {

    public final transient Comparator<? super E> f66931g;

    @CheckForNull
    @v2.c
    @J2.b
    public transient AbstractC12588x1<E> f66932h;

    public static final class a<E> extends AbstractC12564r1.a<E> {

        public final Comparator<? super E> f66933g;

        public a(Comparator<? super E> comparator) {
            this.f66933g = (Comparator) w2.H.E(comparator);
        }

        @Override
        @I2.a
        public a<E> g(E e10) {
            super.g(e10);
            return this;
        }

        @Override
        @I2.a
        public a<E> b(E... eArr) {
            super.b(eArr);
            return this;
        }

        @Override
        @I2.a
        public a<E> c(Iterable<? extends E> iterable) {
            super.c(iterable);
            return this;
        }

        @Override
        @I2.a
        public a<E> d(Iterator<? extends E> it) {
            super.d(it);
            return this;
        }

        @Override
        public AbstractC12588x1<E> e() {
            AbstractC12588x1<E> Q10 = AbstractC12588x1.Q(this.f66933g, this.f66479c, this.f66478b);
            this.f66479c = Q10.size();
            this.f66480d = true;
            return Q10;
        }

        @Override
        @I2.a
        public a<E> p(AbstractC12564r1.a<E> aVar) {
            super.p(aVar);
            return this;
        }
    }

    public static class b<E> implements Serializable {

        public static final long f66934d = 0;

        public final Comparator<? super E> f66935b;

        public final Object[] f66936c;

        public b(Comparator<? super E> comparator, Object[] objArr) {
            this.f66935b = comparator;
            this.f66936c = objArr;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Object a() {
            return new a(this.f66935b).b(this.f66936c).e();
        }
    }

    public AbstractC12588x1(Comparator<? super E> comparator) {
        this.f66931g = comparator;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> AbstractC12588x1<E> Q(Comparator<? super E> comparator, int i10, E... eArr) {
        if (i10 == 0) {
            return c0(comparator);
        }
        C12506c2.c(eArr, i10);
        Arrays.sort(eArr, 0, i10, comparator);
        int i11 = 1;
        for (int i12 = 1; i12 < i10; i12++) {
            A0.a aVar = (Object) eArr[i12];
            if (comparator.compare(aVar, (Object) eArr[i11 - 1]) != 0) {
                eArr[i11] = aVar;
                i11++;
            }
        }
        Arrays.fill(eArr, i11, i10, (Object) null);
        if (i11 < eArr.length / 2) {
            eArr = (E[]) Arrays.copyOf(eArr, i11);
        }
        return new C12581v2(AbstractC12521g1.l(eArr, i11), comparator);
    }

    public static <E> AbstractC12588x1<E> R(Iterable<? extends E> iterable) {
        return T(Ordering.A(), iterable);
    }

    public static <E> AbstractC12588x1<E> S(Collection<? extends E> collection) {
        return U(Ordering.A(), collection);
    }

    public static <E> AbstractC12588x1<E> T(Comparator<? super E> comparator, Iterable<? extends E> iterable) {
        w2.H.E(comparator);
        if (H2.b(comparator, iterable) && (iterable instanceof AbstractC12588x1)) {
            AbstractC12588x1<E> abstractC12588x1 = (AbstractC12588x1) iterable;
            if (!abstractC12588x1.h()) {
                return abstractC12588x1;
            }
        }
        Object[] P10 = D1.P(iterable);
        return Q(comparator, P10.length, P10);
    }

    public static <E> AbstractC12588x1<E> U(Comparator<? super E> comparator, Collection<? extends E> collection) {
        return T(comparator, collection);
    }

    public static <E> AbstractC12588x1<E> V(Comparator<? super E> comparator, Iterator<? extends E> it) {
        return new a(comparator).d(it).e();
    }

    public static <E> AbstractC12588x1<E> W(Iterator<? extends E> it) {
        return V(Ordering.A(), it);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>([TE;)Lcom/google/common/collect/x1<TE;>; */
    public static AbstractC12588x1 X(Comparable[] comparableArr) {
        return Q(Ordering.A(), comparableArr.length, (Comparable[]) comparableArr.clone());
    }

    public static <E> AbstractC12588x1<E> Y(SortedSet<E> sortedSet) {
        Comparator a10 = H2.a(sortedSet);
        AbstractC12521g1 r10 = AbstractC12521g1.r(sortedSet);
        return r10.isEmpty() ? c0(a10) : new C12581v2(r10, a10);
    }

    public static <E> C12581v2<E> c0(Comparator<? super E> comparator) {
        return Ordering.A().equals(comparator) ? (C12581v2<E>) C12581v2.f66927j : new C12581v2<>(AbstractC12521g1.x(), comparator);
    }

    public static <E extends Comparable<?>> a<E> g0() {
        return new a<>(Ordering.A());
    }

    public static <E> AbstractC12588x1<E> h0() {
        return C12581v2.f66927j;
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;)Lcom/google/common/collect/x1<TE;>; */
    public static AbstractC12588x1 i0(Comparable comparable) {
        return new C12581v2(AbstractC12521g1.y(comparable), Ordering.A());
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;)Lcom/google/common/collect/x1<TE;>; */
    public static AbstractC12588x1 j0(Comparable comparable, Comparable comparable2) {
        return Q(Ordering.A(), 2, comparable, comparable2);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;)Lcom/google/common/collect/x1<TE;>; */
    public static AbstractC12588x1 k0(Comparable comparable, Comparable comparable2, Comparable comparable3) {
        return Q(Ordering.A(), 3, comparable, comparable2, comparable3);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;)Lcom/google/common/collect/x1<TE;>; */
    public static AbstractC12588x1 l0(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4) {
        return Q(Ordering.A(), 4, comparable, comparable2, comparable3, comparable4);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;)Lcom/google/common/collect/x1<TE;>; */
    public static AbstractC12588x1 m0(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5) {
        return Q(Ordering.A(), 5, comparable, comparable2, comparable3, comparable4, comparable5);
    }

    /* JADX WARN: Incorrect types in method signature: <E::Ljava/lang/Comparable<-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)Lcom/google/common/collect/x1<TE;>; */
    public static AbstractC12588x1 n0(Comparable comparable, Comparable comparable2, Comparable comparable3, Comparable comparable4, Comparable comparable5, Comparable comparable6, Comparable... comparableArr) {
        int length = comparableArr.length + 6;
        Comparable[] comparableArr2 = new Comparable[length];
        comparableArr2[0] = comparable;
        comparableArr2[1] = comparable2;
        comparableArr2[2] = comparable3;
        comparableArr2[3] = comparable4;
        comparableArr2[4] = comparable5;
        comparableArr2[5] = comparable6;
        System.arraycopy(comparableArr, 0, comparableArr2, 6, comparableArr.length);
        return Q(Ordering.A(), length, comparableArr2);
    }

    public static <E> a<E> o0(Comparator<E> comparator) {
        return new a<>(comparator);
    }

    private void p0(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <E extends Comparable<?>> a<E> q0() {
        return new a<>(Collections.reverseOrder());
    }

    public static int y0(Comparator<?> comparator, Object obj, @CheckForNull Object obj2) {
        return comparator.compare(obj, obj2);
    }

    @v2.c
    public abstract AbstractC12588x1<E> Z();

    @Override
    @v2.c
    public abstract e3<E> descendingIterator();

    @Override
    @v2.c
    public AbstractC12588x1<E> descendingSet() {
        AbstractC12588x1<E> abstractC12588x1 = this.f66932h;
        if (abstractC12588x1 != null) {
            return abstractC12588x1;
        }
        AbstractC12588x1<E> Z10 = Z();
        this.f66932h = Z10;
        Z10.f66932h = this;
        return Z10;
    }

    @CheckForNull
    public E ceiling(E e10) {
        return (E) D1.v(tailSet(e10, true), null);
    }

    @Override
    public Comparator<? super E> comparator() {
        return this.f66931g;
    }

    @Override
    public AbstractC12588x1<E> headSet(E e10) {
        return headSet(e10, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public AbstractC12588x1<E> headSet(E e10, boolean z10) {
        return f0(w2.H.E(e10), z10);
    }

    public abstract AbstractC12588x1<E> f0(E e10, boolean z10);

    public E first() {
        return iterator().next();
    }

    @CheckForNull
    public E floor(E e10) {
        return (E) E1.J(headSet(e10, true).descendingIterator(), null);
    }

    @CheckForNull
    @v2.c
    public E higher(E e10) {
        return (E) D1.v(tailSet(e10, false), null);
    }

    @Override
    public abstract e3<E> iterator();

    public abstract int indexOf(@CheckForNull Object obj);

    @Override
    public Object j() {
        return new b(this.f66931g, toArray());
    }

    public E last() {
        return descendingIterator().next();
    }

    @CheckForNull
    @v2.c
    public E lower(E e10) {
        return (E) E1.J(headSet(e10, false).descendingIterator(), null);
    }

    @Override
    @I2.a
    @CheckForNull
    @v2.c
    @Deprecated
    @I2.e("Always throws UnsupportedOperationException")
    public final E pollFirst() {
        throw new UnsupportedOperationException();
    }

    @Override
    @I2.a
    @CheckForNull
    @v2.c
    @Deprecated
    @I2.e("Always throws UnsupportedOperationException")
    public final E pollLast() {
        throw new UnsupportedOperationException();
    }

    @Override
    public AbstractC12588x1<E> subSet(E e10, E e11) {
        return subSet(e10, true, e11, false);
    }

    @Override
    @v2.c
    public AbstractC12588x1<E> subSet(E e10, boolean z10, E e11, boolean z11) {
        w2.H.E(e10);
        w2.H.E(e11);
        w2.H.d(this.f66931g.compare(e10, e11) <= 0);
        return t0(e10, z10, e11, z11);
    }

    public abstract AbstractC12588x1<E> t0(E e10, boolean z10, E e11, boolean z11);

    @Override
    public AbstractC12588x1<E> tailSet(E e10) {
        return tailSet(e10, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public AbstractC12588x1<E> tailSet(E e10, boolean z10) {
        return w0(w2.H.E(e10), z10);
    }

    public abstract AbstractC12588x1<E> w0(E e10, boolean z10);

    public int x0(Object obj, @CheckForNull Object obj2) {
        return y0(this.f66931g, obj, obj2);
    }
}
