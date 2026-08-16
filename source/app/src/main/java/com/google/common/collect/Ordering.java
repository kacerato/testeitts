package com.google.common.collect;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.CheckForNull;
import w2.InterfaceC15902t;

@X
@v2.b
public abstract class Ordering<T> implements Comparator<T> {

    public static final int f65909b = 1;

    public static final int f65910c = -1;

    @v2.d
    public static class IncomparableValueException extends ClassCastException {
        private static final long serialVersionUID = 0;
        final Object value;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public IncomparableValueException(Object obj) {
            super(r2.toString());
            String valueOf = String.valueOf(obj);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 22);
            sb2.append("Cannot compare value: ");
            sb2.append(valueOf);
            this.value = obj;
        }
    }

    @v2.d
    public static class a extends Ordering<Object> {

        public final AtomicInteger f65911d = new AtomicInteger(0);

        public final ConcurrentMap<Object, Integer> f65912e = C12526h2.l(new O1()).i();

        public final Integer I(Object obj) {
            Integer num = this.f65912e.get(obj);
            if (num != null) {
                return num;
            }
            Integer valueOf = Integer.valueOf(this.f65911d.getAndIncrement());
            Integer putIfAbsent = this.f65912e.putIfAbsent(obj, valueOf);
            return putIfAbsent != null ? putIfAbsent : valueOf;
        }

        public int J(Object obj) {
            return System.identityHashCode(obj);
        }

        @Override
        public int compare(@CheckForNull Object obj, @CheckForNull Object obj2) {
            if (obj == obj2) {
                return 0;
            }
            if (obj == null) {
                return -1;
            }
            if (obj2 == null) {
                return 1;
            }
            int J10 = J(obj);
            int J11 = J(obj2);
            if (J10 != J11) {
                return J10 < J11 ? -1 : 1;
            }
            int compareTo = I(obj).compareTo(I(obj2));
            if (compareTo != 0) {
                return compareTo;
            }
            throw new AssertionError();
        }

        public String toString() {
            return "Ordering.arbitrary()";
        }
    }

    public static class b {

        public static final Ordering<Object> f65913a = new a();
    }

    @v2.b(serializable = true)
    public static <C extends Comparable> Ordering<C> A() {
        return Y1.f66378f;
    }

    @v2.b(serializable = true)
    public static Ordering<Object> H() {
        return h3.f66658d;
    }

    @v2.b(serializable = true)
    public static Ordering<Object> a() {
        return r.f66820d;
    }

    public static Ordering<Object> b() {
        return b.f65913a;
    }

    @v2.b(serializable = true)
    public static <T> Ordering<T> d(Iterable<? extends Comparator<? super T>> iterable) {
        return new L(iterable);
    }

    @v2.b(serializable = true)
    public static <T> Ordering<T> f(T t10, T... tArr) {
        return g(M1.c(t10, tArr));
    }

    @v2.b(serializable = true)
    public static <T> Ordering<T> g(List<T> list) {
        return new C12516f0(list);
    }

    @v2.b(serializable = true)
    @Deprecated
    public static <T> Ordering<T> h(Ordering<T> ordering) {
        return (Ordering) w2.H.E(ordering);
    }

    @v2.b(serializable = true)
    public static <T> Ordering<T> i(Comparator<T> comparator) {
        return comparator instanceof Ordering ? (Ordering) comparator : new I(comparator);
    }

    @v2.b(serializable = true)
    public <S extends T> Ordering<S> B() {
        return new C12498a2(this);
    }

    @v2.b(serializable = true)
    public <S extends T> Ordering<S> C() {
        return new C12502b2(this);
    }

    public <T2 extends T> Ordering<Map.Entry<T2, ?>> D() {
        return (Ordering<Map.Entry<T2, ?>>) E(Q1.R());
    }

    @v2.b(serializable = true)
    public <F> Ordering<F> E(InterfaceC15902t<F, ? extends T> interfaceC15902t) {
        return new C12590y(interfaceC15902t, this);
    }

    @v2.b(serializable = true)
    public <S extends T> Ordering<S> F() {
        return new C12597z2(this);
    }

    public <E extends T> List<E> G(Iterable<E> iterable) {
        Object[] P10 = D1.P(iterable);
        Arrays.sort(P10, this);
        return M1.r(Arrays.asList(P10));
    }

    @Deprecated
    public int c(List<? extends T> list, @InterfaceC12518f2 T t10) {
        return Collections.binarySearch(list, t10, this);
    }

    @Override
    @I2.a
    public abstract int compare(@InterfaceC12518f2 T t10, @InterfaceC12518f2 T t11);

    @v2.b(serializable = true)
    public <U extends T> Ordering<U> e(Comparator<? super U> comparator) {
        return new L(this, (Comparator) w2.H.E(comparator));
    }

    public <E extends T> List<E> j(Iterable<E> iterable, int i10) {
        return F().o(iterable, i10);
    }

    public <E extends T> List<E> k(Iterator<E> it, int i10) {
        return F().p(it, i10);
    }

    public <E extends T> AbstractC12521g1<E> l(Iterable<E> iterable) {
        return AbstractC12521g1.N(this, iterable);
    }

    public boolean m(Iterable<? extends T> iterable) {
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return true;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (compare(next, next2) > 0) {
                return false;
            }
            next = next2;
        }
        return true;
    }

    public boolean n(Iterable<? extends T> iterable) {
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return true;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (compare(next, next2) >= 0) {
                return false;
            }
            next = next2;
        }
        return true;
    }

    public <E extends T> List<E> o(Iterable<E> iterable, int i10) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.size() <= i10 * 2) {
                Object[] array = collection.toArray();
                Arrays.sort(array, this);
                if (array.length > i10) {
                    array = Arrays.copyOf(array, i10);
                }
                return Collections.unmodifiableList(Arrays.asList(array));
            }
        }
        return p(iterable.iterator(), i10);
    }

    public <E extends T> List<E> p(Iterator<E> it, int i10) {
        w2.H.E(it);
        B.b(i10, "k");
        if (i10 == 0 || !it.hasNext()) {
            return Collections.emptyList();
        }
        if (i10 < 1073741823) {
            U2 d10 = U2.d(i10, this);
            d10.g(it);
            return d10.j();
        }
        ArrayList s10 = M1.s(it);
        Collections.sort(s10, this);
        if (s10.size() > i10) {
            s10.subList(i10, s10.size()).clear();
        }
        s10.trimToSize();
        return Collections.unmodifiableList(s10);
    }

    @v2.b(serializable = true)
    public <S extends T> Ordering<Iterable<S>> q() {
        return new G1(this);
    }

    @InterfaceC12518f2
    public <E extends T> E r(Iterable<E> iterable) {
        return (E) v(iterable.iterator());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC12518f2
    public <E extends T> E s(@InterfaceC12518f2 E e10, @InterfaceC12518f2 E e11) {
        return compare(e10, e11) >= 0 ? e10 : e11;
    }

    @InterfaceC12518f2
    public <E extends T> E u(@InterfaceC12518f2 E e10, @InterfaceC12518f2 E e11, @InterfaceC12518f2 E e12, E... eArr) {
        E e13 = (E) s(s(e10, e11), e12);
        for (E e14 : eArr) {
            e13 = (E) s(e13, e14);
        }
        return e13;
    }

    @InterfaceC12518f2
    public <E extends T> E v(Iterator<E> it) {
        E next = it.next();
        while (it.hasNext()) {
            next = (E) s(next, it.next());
        }
        return next;
    }

    @InterfaceC12518f2
    public <E extends T> E w(Iterable<E> iterable) {
        return (E) z(iterable.iterator());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @InterfaceC12518f2
    public <E extends T> E x(@InterfaceC12518f2 E e10, @InterfaceC12518f2 E e11) {
        return compare(e10, e11) <= 0 ? e10 : e11;
    }

    @InterfaceC12518f2
    public <E extends T> E y(@InterfaceC12518f2 E e10, @InterfaceC12518f2 E e11, @InterfaceC12518f2 E e12, E... eArr) {
        E e13 = (E) x(x(e10, e11), e12);
        for (E e14 : eArr) {
            e13 = (E) x(e13, e14);
        }
        return e13;
    }

    @InterfaceC12518f2
    public <E extends T> E z(Iterator<E> it) {
        E next = it.next();
        while (it.hasNext()) {
            next = (E) x(next, it.next());
        }
        return next;
    }
}
