package com.google.common.collect;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.SortedSet;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;
import w2.InterfaceC15902t;

@X
@v2.b(emulated = true)
public abstract class AbstractC12556p0<E> implements Iterable<E> {

    public final w2.C<Iterable<E>> f66764b;

    public class a extends AbstractC12556p0<E> {

        public final Iterable f66765c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Iterable iterable, Iterable iterable2) {
            super(iterable);
            this.f66765c = iterable2;
        }

        @Override
        public Iterator<E> iterator() {
            return this.f66765c.iterator();
        }
    }

    public class b<T> extends AbstractC12556p0<T> {

        public final Iterable f66766c;

        public b(Iterable iterable) {
            this.f66766c = iterable;
        }

        @Override
        public Iterator<T> iterator() {
            return E1.i(E1.c0(this.f66766c.iterator(), D1.S()));
        }
    }

    public class c<T> extends AbstractC12556p0<T> {

        public final Iterable[] f66767c;

        public class a extends AbstractC12499b<Iterator<? extends T>> {
            public a(int i10) {
                super(i10);
            }

            @Override
            public Iterator<? extends T> a(int i10) {
                return c.this.f66767c[i10].iterator();
            }
        }

        public c(Iterable[] iterableArr) {
            this.f66767c = iterableArr;
        }

        @Override
        public Iterator<T> iterator() {
            return E1.i(new a(this.f66767c.length));
        }
    }

    public static class d<E> implements InterfaceC15902t<Iterable<E>, AbstractC12556p0<E>> {
        @Override
        public AbstractC12556p0<E> apply(Iterable<E> iterable) {
            return AbstractC12556p0.s(iterable);
        }
    }

    public AbstractC12556p0() {
        this.f66764b = w2.C.a();
    }

    @InterfaceC15800a
    public static <E> AbstractC12556p0<E> A(@InterfaceC12518f2 E e10, E... eArr) {
        return s(M1.c(e10, eArr));
    }

    @InterfaceC15800a
    public static <T> AbstractC12556p0<T> e(Iterable<? extends Iterable<? extends T>> iterable) {
        w2.H.E(iterable);
        return new b(iterable);
    }

    @InterfaceC15800a
    public static <T> AbstractC12556p0<T> f(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        return j(iterable, iterable2);
    }

    @InterfaceC15800a
    public static <T> AbstractC12556p0<T> g(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3) {
        return j(iterable, iterable2, iterable3);
    }

    @InterfaceC15800a
    public static <T> AbstractC12556p0<T> h(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3, Iterable<? extends T> iterable4) {
        return j(iterable, iterable2, iterable3, iterable4);
    }

    @InterfaceC15800a
    public static <T> AbstractC12556p0<T> i(Iterable<? extends T>... iterableArr) {
        return j((Iterable[]) Arrays.copyOf(iterableArr, iterableArr.length));
    }

    public static <T> AbstractC12556p0<T> j(Iterable<? extends T>... iterableArr) {
        for (Iterable<? extends T> iterable : iterableArr) {
            w2.H.E(iterable);
        }
        return new c(iterableArr);
    }

    @I2.l(replacement = "checkNotNull(iterable)", staticImports = {"com.google.common.base.Preconditions.checkNotNull"})
    @Deprecated
    public static <E> AbstractC12556p0<E> r(AbstractC12556p0<E> abstractC12556p0) {
        return (AbstractC12556p0) w2.H.E(abstractC12556p0);
    }

    public static <E> AbstractC12556p0<E> s(Iterable<E> iterable) {
        return iterable instanceof AbstractC12556p0 ? (AbstractC12556p0) iterable : new a(iterable, iterable);
    }

    @InterfaceC15800a
    public static <E> AbstractC12556p0<E> t(E[] eArr) {
        return s(Arrays.asList(eArr));
    }

    @InterfaceC15800a
    public static <E> AbstractC12556p0<E> z() {
        return s(Collections.emptyList());
    }

    public final AbstractC12556p0<E> B(int i10) {
        return s(D1.N(u(), i10));
    }

    @v2.c
    public final E[] C(Class<E> cls) {
        return (E[]) D1.Q(u(), cls);
    }

    public final AbstractC12521g1<E> D() {
        return AbstractC12521g1.p(u());
    }

    public final <V> AbstractC12529i1<E, V> E(InterfaceC15902t<? super E, V> interfaceC15902t) {
        return Q1.u0(u(), interfaceC15902t);
    }

    public final AbstractC12549n1<E> F() {
        return AbstractC12549n1.n(u());
    }

    public final AbstractC12564r1<E> G() {
        return AbstractC12564r1.r(u());
    }

    public final AbstractC12521g1<E> H(Comparator<? super E> comparator) {
        return Ordering.i(comparator).l(u());
    }

    public final AbstractC12588x1<E> I(Comparator<? super E> comparator) {
        return AbstractC12588x1.T(comparator, u());
    }

    public final <T> AbstractC12556p0<T> J(InterfaceC15902t<? super E, T> interfaceC15902t) {
        return s(D1.U(u(), interfaceC15902t));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> AbstractC12556p0<T> K(InterfaceC15902t<? super E, ? extends Iterable<? extends T>> interfaceC15902t) {
        return e(J(interfaceC15902t));
    }

    public final <K> AbstractC12529i1<K, E> L(InterfaceC15902t<? super E, K> interfaceC15902t) {
        return Q1.E0(u(), interfaceC15902t);
    }

    public final boolean a(w2.I<? super E> i10) {
        return D1.b(u(), i10);
    }

    public final boolean b(w2.I<? super E> i10) {
        return D1.c(u(), i10);
    }

    @InterfaceC15800a
    public final AbstractC12556p0<E> c(Iterable<? extends E> iterable) {
        return f(u(), iterable);
    }

    public final boolean contains(@CheckForNull Object obj) {
        return D1.k(u(), obj);
    }

    @InterfaceC15800a
    public final AbstractC12556p0<E> d(E... eArr) {
        return f(u(), Arrays.asList(eArr));
    }

    @InterfaceC12518f2
    public final E get(int i10) {
        return (E) D1.t(u(), i10);
    }

    public final boolean isEmpty() {
        return !u().iterator().hasNext();
    }

    @I2.a
    public final <C extends Collection<? super E>> C k(C c10) {
        w2.H.E(c10);
        Iterable<E> u10 = u();
        if (u10 instanceof Collection) {
            c10.addAll((Collection) u10);
        } else {
            Iterator<E> it = u10.iterator();
            while (it.hasNext()) {
                c10.add(it.next());
            }
        }
        return c10;
    }

    public final AbstractC12556p0<E> l() {
        return s(D1.l(u()));
    }

    @v2.c
    public final <T> AbstractC12556p0<T> m(Class<T> cls) {
        return s(D1.o(u(), cls));
    }

    public final AbstractC12556p0<E> n(w2.I<? super E> i10) {
        return s(D1.p(u(), i10));
    }

    public final w2.C<E> o() {
        Iterator<E> it = u().iterator();
        return it.hasNext() ? w2.C.f(it.next()) : w2.C.a();
    }

    public final w2.C<E> p(w2.I<? super E> i10) {
        return D1.V(u(), i10);
    }

    public final int size() {
        return D1.M(u());
    }

    public String toString() {
        return D1.T(u());
    }

    public final Iterable<E> u() {
        return this.f66764b.g(this);
    }

    public final <K> C12525h1<K, E> v(InterfaceC15902t<? super E, K> interfaceC15902t) {
        return U1.r(u(), interfaceC15902t);
    }

    @InterfaceC15800a
    public final String w(w2.y yVar) {
        return yVar.k(this);
    }

    public final w2.C<E> x() {
        E next;
        Iterable<E> u10 = u();
        if (u10 instanceof List) {
            List list = (List) u10;
            return list.isEmpty() ? w2.C.a() : w2.C.f(list.get(list.size() - 1));
        }
        Iterator<E> it = u10.iterator();
        if (!it.hasNext()) {
            return w2.C.a();
        }
        if (u10 instanceof SortedSet) {
            return w2.C.f(((SortedSet) u10).last());
        }
        do {
            next = it.next();
        } while (it.hasNext());
        return w2.C.f(next);
    }

    public final AbstractC12556p0<E> y(int i10) {
        return s(D1.D(u(), i10));
    }

    public AbstractC12556p0(Iterable<E> iterable) {
        this.f66764b = w2.C.f(iterable);
    }
}
