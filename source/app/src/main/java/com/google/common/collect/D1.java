package com.google.common.collect;

import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.RandomAccess;
import java.util.Set;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;
import w2.InterfaceC15902t;

@X
@v2.b(emulated = true)
public final class D1 {

    public class a<T> implements InterfaceC15902t<Iterable<? extends T>, Iterator<? extends T>> {
        @Override
        public Iterator<? extends T> apply(Iterable<? extends T> iterable) {
            return iterable.iterator();
        }
    }

    public class b<T> extends AbstractC12556p0<T> {

        public final Iterable f65649c;

        public b(Iterable iterable) {
            this.f65649c = iterable;
        }

        @Override
        public Iterator<T> iterator() {
            return E1.r(this.f65649c);
        }

        @Override
        public String toString() {
            return String.valueOf(this.f65649c.toString()).concat(" (cycled)");
        }
    }

    public class c<T> extends AbstractC12556p0<List<T>> {

        public final Iterable f65650c;

        public final int f65651d;

        public c(Iterable iterable, int i10) {
            this.f65650c = iterable;
            this.f65651d = i10;
        }

        @Override
        public Iterator<List<T>> iterator() {
            return E1.Q(this.f65650c.iterator(), this.f65651d);
        }
    }

    public class d<T> extends AbstractC12556p0<List<T>> {

        public final Iterable f65652c;

        public final int f65653d;

        public d(Iterable iterable, int i10) {
            this.f65652c = iterable;
            this.f65653d = i10;
        }

        @Override
        public Iterator<List<T>> iterator() {
            return E1.P(this.f65652c.iterator(), this.f65653d);
        }
    }

    public class e<T> extends AbstractC12556p0<T> {

        public final Iterable f65654c;

        public final w2.I f65655d;

        public e(Iterable iterable, w2.I i10) {
            this.f65654c = iterable;
            this.f65655d = i10;
        }

        @Override
        public Iterator<T> iterator() {
            return E1.y(this.f65654c.iterator(), this.f65655d);
        }
    }

    public class f<T> extends AbstractC12556p0<T> {

        public final Iterable f65656c;

        public final InterfaceC15902t f65657d;

        public f(Iterable iterable, InterfaceC15902t interfaceC15902t) {
            this.f65656c = iterable;
            this.f65657d = interfaceC15902t;
        }

        @Override
        public Iterator<T> iterator() {
            return E1.c0(this.f65656c.iterator(), this.f65657d);
        }
    }

    public class g<T> extends AbstractC12556p0<T> {

        public final Iterable f65658c;

        public final int f65659d;

        public class a implements Iterator<T> {

            public boolean f65660b = true;

            public final Iterator f65661c;

            public a(g gVar, Iterator it) {
                this.f65661c = it;
            }

            @Override
            public boolean hasNext() {
                return this.f65661c.hasNext();
            }

            @Override
            @InterfaceC12518f2
            public T next() {
                T t10 = (T) this.f65661c.next();
                this.f65660b = false;
                return t10;
            }

            @Override
            public void remove() {
                B.e(!this.f65660b);
                this.f65661c.remove();
            }
        }

        public g(Iterable iterable, int i10) {
            this.f65658c = iterable;
            this.f65659d = i10;
        }

        @Override
        public Iterator<T> iterator() {
            Iterable iterable = this.f65658c;
            if (iterable instanceof List) {
                List list = (List) iterable;
                return list.subList(Math.min(list.size(), this.f65659d), list.size()).iterator();
            }
            Iterator<T> it = iterable.iterator();
            E1.b(it, this.f65659d);
            return new a(this, it);
        }
    }

    public class h<T> extends AbstractC12556p0<T> {

        public final Iterable f65662c;

        public final int f65663d;

        public h(Iterable iterable, int i10) {
            this.f65662c = iterable;
            this.f65663d = i10;
        }

        @Override
        public Iterator<T> iterator() {
            return E1.N(this.f65662c.iterator(), this.f65663d);
        }
    }

    public class i<T> extends AbstractC12556p0<T> {

        public final Iterable f65664c;

        public i(Iterable iterable) {
            this.f65664c = iterable;
        }

        @Override
        public Iterator<T> iterator() {
            Iterable iterable = this.f65664c;
            return iterable instanceof Queue ? new N((Queue) iterable) : E1.p(iterable.iterator());
        }

        @Override
        public String toString() {
            return "Iterables.consumingIterable(...)";
        }
    }

    public class j<T> extends AbstractC12556p0<T> {

        public final Iterable f65665c;

        public final Comparator f65666d;

        public j(Iterable iterable, Comparator comparator) {
            this.f65665c = iterable;
            this.f65666d = comparator;
        }

        @Override
        public Iterator<T> iterator() {
            return E1.O(D1.U(this.f65665c, D1.S()), this.f65666d);
        }
    }

    public static final class k<T> extends AbstractC12556p0<T> {

        public final Iterable<? extends T> f65667c;

        public k(Iterable iterable, b bVar) {
            this(iterable);
        }

        @Override
        public Iterator<T> iterator() {
            return E1.f0(this.f65667c.iterator());
        }

        @Override
        public String toString() {
            return this.f65667c.toString();
        }

        public k(Iterable<? extends T> iterable) {
            this.f65667c = iterable;
        }
    }

    @InterfaceC12518f2
    public static <T> T A(Iterable<? extends T> iterable, @InterfaceC12518f2 T t10) {
        return (T) E1.L(iterable.iterator(), t10);
    }

    public static <T> int B(Iterable<T> iterable, w2.I<? super T> i10) {
        return E1.M(iterable.iterator(), i10);
    }

    public static boolean C(Iterable<?> iterable) {
        return iterable instanceof Collection ? ((Collection) iterable).isEmpty() : !iterable.iterator().hasNext();
    }

    public static <T> Iterable<T> D(Iterable<T> iterable, int i10) {
        w2.H.E(iterable);
        w2.H.e(i10 >= 0, "limit is negative");
        return new h(iterable, i10);
    }

    @InterfaceC15800a
    public static <T> Iterable<T> E(Iterable<? extends Iterable<? extends T>> iterable, Comparator<? super T> comparator) {
        w2.H.F(iterable, "iterables");
        w2.H.F(comparator, "comparator");
        return new k(new j(iterable, comparator), null);
    }

    public static <T> Iterable<List<T>> F(Iterable<T> iterable, int i10) {
        w2.H.E(iterable);
        w2.H.d(i10 > 0);
        return new d(iterable, i10);
    }

    public static <T> Iterable<List<T>> G(Iterable<T> iterable, int i10) {
        w2.H.E(iterable);
        w2.H.d(i10 > 0);
        return new c(iterable, i10);
    }

    @I2.a
    public static boolean H(Iterable<?> iterable, Collection<?> collection) {
        return iterable instanceof Collection ? ((Collection) iterable).removeAll((Collection) w2.H.E(collection)) : E1.V(iterable.iterator(), collection);
    }

    @CheckForNull
    public static <T> T I(Iterable<T> iterable, w2.I<? super T> i10) {
        w2.H.E(i10);
        Iterator<T> it = iterable.iterator();
        while (it.hasNext()) {
            T next = it.next();
            if (i10.apply(next)) {
                it.remove();
                return next;
            }
        }
        return null;
    }

    @I2.a
    public static <T> boolean J(Iterable<T> iterable, w2.I<? super T> i10) {
        return ((iterable instanceof RandomAccess) && (iterable instanceof List)) ? K((List) iterable, (w2.I) w2.H.E(i10)) : E1.W(iterable.iterator(), i10);
    }

    public static <T> boolean K(List<T> list, w2.I<? super T> i10) {
        int i11 = 0;
        int i12 = 0;
        while (i11 < list.size()) {
            T t10 = list.get(i11);
            if (!i10.apply(t10)) {
                if (i11 > i12) {
                    try {
                        list.set(i12, t10);
                    } catch (IllegalArgumentException unused) {
                        O(list, i10, i12, i11);
                        return true;
                    } catch (UnsupportedOperationException unused2) {
                        O(list, i10, i12, i11);
                        return true;
                    }
                }
                i12++;
            }
            i11++;
        }
        list.subList(i12, list.size()).clear();
        return i11 != i12;
    }

    @I2.a
    public static boolean L(Iterable<?> iterable, Collection<?> collection) {
        return iterable instanceof Collection ? ((Collection) iterable).retainAll((Collection) w2.H.E(collection)) : E1.X(iterable.iterator(), collection);
    }

    public static int M(Iterable<?> iterable) {
        return iterable instanceof Collection ? ((Collection) iterable).size() : E1.Z(iterable.iterator());
    }

    public static <T> Iterable<T> N(Iterable<T> iterable, int i10) {
        w2.H.E(iterable);
        w2.H.e(i10 >= 0, "number to skip cannot be negative");
        return new g(iterable, i10);
    }

    public static <T> void O(List<T> list, w2.I<? super T> i10, int i11, int i12) {
        for (int size = list.size() - 1; size > i12; size--) {
            if (i10.apply(list.get(size))) {
                list.remove(size);
            }
        }
        for (int i13 = i12 - 1; i13 >= i11; i13--) {
            list.remove(i13);
        }
    }

    public static Object[] P(Iterable<?> iterable) {
        return d(iterable).toArray();
    }

    @v2.c
    public static <T> T[] Q(Iterable<? extends T> iterable, Class<T> cls) {
        return (T[]) R(iterable, C12506c2.i(cls, 0));
    }

    public static <T> T[] R(Iterable<? extends T> iterable, T[] tArr) {
        return (T[]) d(iterable).toArray(tArr);
    }

    public static <T> InterfaceC15902t<Iterable<? extends T>, Iterator<? extends T>> S() {
        return new a();
    }

    public static String T(Iterable<?> iterable) {
        return E1.b0(iterable.iterator());
    }

    public static <F, T> Iterable<T> U(Iterable<F> iterable, InterfaceC15902t<? super F, ? extends T> interfaceC15902t) {
        w2.H.E(iterable);
        w2.H.E(interfaceC15902t);
        return new f(iterable, interfaceC15902t);
    }

    public static <T> w2.C<T> V(Iterable<T> iterable, w2.I<? super T> i10) {
        return E1.d0(iterable.iterator(), i10);
    }

    @Deprecated
    public static <E> Iterable<E> W(AbstractC12505c1<E> abstractC12505c1) {
        return (Iterable) w2.H.E(abstractC12505c1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> Iterable<T> X(Iterable<? extends T> iterable) {
        w2.H.E(iterable);
        return ((iterable instanceof k) || (iterable instanceof AbstractC12505c1)) ? iterable : new k(iterable, null);
    }

    @I2.a
    public static <T> boolean a(Collection<T> collection, Iterable<? extends T> iterable) {
        return iterable instanceof Collection ? collection.addAll((Collection) iterable) : E1.a(collection, ((Iterable) w2.H.E(iterable)).iterator());
    }

    public static <T> boolean b(Iterable<T> iterable, w2.I<? super T> i10) {
        return E1.c(iterable.iterator(), i10);
    }

    public static <T> boolean c(Iterable<T> iterable, w2.I<? super T> i10) {
        return E1.d(iterable.iterator(), i10);
    }

    public static <E> Collection<E> d(Iterable<E> iterable) {
        return iterable instanceof Collection ? (Collection) iterable : M1.s(iterable.iterator());
    }

    public static <T> Iterable<T> e(Iterable<? extends Iterable<? extends T>> iterable) {
        return AbstractC12556p0.e(iterable);
    }

    public static <T> Iterable<T> f(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        return AbstractC12556p0.f(iterable, iterable2);
    }

    public static <T> Iterable<T> g(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3) {
        return AbstractC12556p0.g(iterable, iterable2, iterable3);
    }

    public static <T> Iterable<T> h(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3, Iterable<? extends T> iterable4) {
        return AbstractC12556p0.h(iterable, iterable2, iterable3, iterable4);
    }

    @SafeVarargs
    public static <T> Iterable<T> i(Iterable<? extends T>... iterableArr) {
        return AbstractC12556p0.i(iterableArr);
    }

    public static <T> Iterable<T> j(Iterable<T> iterable) {
        w2.H.E(iterable);
        return new i(iterable);
    }

    public static boolean k(Iterable<? extends Object> iterable, @CheckForNull Object obj) {
        return iterable instanceof Collection ? C.j((Collection) iterable, obj) : E1.q(iterable.iterator(), obj);
    }

    public static <T> Iterable<T> l(Iterable<T> iterable) {
        w2.H.E(iterable);
        return new b(iterable);
    }

    @SafeVarargs
    public static <T> Iterable<T> m(T... tArr) {
        return l(M1.t(tArr));
    }

    public static boolean n(Iterable<?> iterable, Iterable<?> iterable2) {
        if ((iterable instanceof Collection) && (iterable2 instanceof Collection) && ((Collection) iterable).size() != ((Collection) iterable2).size()) {
            return false;
        }
        return E1.t(iterable.iterator(), iterable2.iterator());
    }

    @v2.c
    public static <T> Iterable<T> o(Iterable<?> iterable, Class<T> cls) {
        w2.H.E(iterable);
        w2.H.E(cls);
        return p(iterable, w2.J.o(cls));
    }

    public static <T> Iterable<T> p(Iterable<T> iterable, w2.I<? super T> i10) {
        w2.H.E(iterable);
        w2.H.E(i10);
        return new e(iterable, i10);
    }

    @InterfaceC12518f2
    public static <T> T q(Iterable<T> iterable, w2.I<? super T> i10) {
        return (T) E1.z(iterable.iterator(), i10);
    }

    @CheckForNull
    public static <T> T r(Iterable<? extends T> iterable, w2.I<? super T> i10, @CheckForNull T t10) {
        return (T) E1.A(iterable.iterator(), i10, t10);
    }

    public static int s(Iterable<?> iterable, @CheckForNull Object obj) {
        return iterable instanceof V1 ? ((V1) iterable).Ad(obj) : iterable instanceof Set ? ((Set) iterable).contains(obj) ? 1 : 0 : E1.E(iterable.iterator(), obj);
    }

    @InterfaceC12518f2
    public static <T> T t(Iterable<T> iterable, int i10) {
        w2.H.E(iterable);
        return iterable instanceof List ? (T) ((List) iterable).get(i10) : (T) E1.F(iterable.iterator(), i10);
    }

    @InterfaceC12518f2
    public static <T> T u(Iterable<? extends T> iterable, int i10, @InterfaceC12518f2 T t10) {
        w2.H.E(iterable);
        E1.g(i10);
        if (iterable instanceof List) {
            List f10 = M1.f(iterable);
            return i10 < f10.size() ? (T) f10.get(i10) : t10;
        }
        Iterator<? extends T> it = iterable.iterator();
        E1.b(it, i10);
        return (T) E1.J(it, t10);
    }

    @InterfaceC12518f2
    public static <T> T v(Iterable<? extends T> iterable, @InterfaceC12518f2 T t10) {
        return (T) E1.J(iterable.iterator(), t10);
    }

    @InterfaceC12518f2
    public static <T> T w(Iterable<T> iterable) {
        if (!(iterable instanceof List)) {
            return (T) E1.H(iterable.iterator());
        }
        List list = (List) iterable;
        if (list.isEmpty()) {
            throw new NoSuchElementException();
        }
        return (T) y(list);
    }

    @InterfaceC12518f2
    public static <T> T x(Iterable<? extends T> iterable, @InterfaceC12518f2 T t10) {
        if (iterable instanceof Collection) {
            if (((Collection) iterable).isEmpty()) {
                return t10;
            }
            if (iterable instanceof List) {
                return (T) y(M1.f(iterable));
            }
        }
        return (T) E1.I(iterable.iterator(), t10);
    }

    @InterfaceC12518f2
    public static <T> T y(List<T> list) {
        return list.get(list.size() - 1);
    }

    @InterfaceC12518f2
    public static <T> T z(Iterable<T> iterable) {
        return (T) E1.K(iterable.iterator());
    }
}
