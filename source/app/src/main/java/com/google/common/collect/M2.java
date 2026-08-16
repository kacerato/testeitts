package com.google.common.collect;

import com.google.common.collect.V1;
import com.google.common.collect.W1;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true)
public final class M2 {

    public static class a<E> extends W1.h<E> implements SortedSet<E> {

        @q3.i
        public final K2<E> f65891b;

        public a(K2<E> k22) {
            this.f65891b = k22;
        }

        @Override
        public Comparator<? super E> comparator() {
            return a().comparator();
        }

        @Override
        @InterfaceC12518f2
        public E first() {
            return (E) M2.d(a().firstEntry());
        }

        @Override
        public final K2<E> a() {
            return this.f65891b;
        }

        @Override
        public SortedSet<E> headSet(@InterfaceC12518f2 E e10) {
            return a().B7(e10, EnumC12586x.OPEN).S1();
        }

        @Override
        public Iterator<E> iterator() {
            return W1.h(a().entrySet().iterator());
        }

        @Override
        @InterfaceC12518f2
        public E last() {
            return (E) M2.d(a().lastEntry());
        }

        @Override
        public SortedSet<E> subSet(@InterfaceC12518f2 E e10, @InterfaceC12518f2 E e11) {
            return a().dc(e10, EnumC12586x.CLOSED, e11, EnumC12586x.OPEN).S1();
        }

        @Override
        public SortedSet<E> tailSet(@InterfaceC12518f2 E e10) {
            return a().Jd(e10, EnumC12586x.CLOSED).S1();
        }
    }

    @v2.c
    public static class b<E> extends a<E> implements NavigableSet<E> {
        public b(K2<E> k22) {
            super(k22);
        }

        @Override
        @CheckForNull
        public E ceiling(@InterfaceC12518f2 E e10) {
            return (E) M2.c(a().Jd(e10, EnumC12586x.CLOSED).firstEntry());
        }

        @Override
        public Iterator<E> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override
        public NavigableSet<E> descendingSet() {
            return new b(a().P6());
        }

        @Override
        @CheckForNull
        public E floor(@InterfaceC12518f2 E e10) {
            return (E) M2.c(a().B7(e10, EnumC12586x.CLOSED).lastEntry());
        }

        @Override
        public NavigableSet<E> headSet(@InterfaceC12518f2 E e10, boolean z10) {
            return new b(a().B7(e10, EnumC12586x.b(z10)));
        }

        @Override
        @CheckForNull
        public E higher(@InterfaceC12518f2 E e10) {
            return (E) M2.c(a().Jd(e10, EnumC12586x.OPEN).firstEntry());
        }

        @Override
        @CheckForNull
        public E lower(@InterfaceC12518f2 E e10) {
            return (E) M2.c(a().B7(e10, EnumC12586x.OPEN).lastEntry());
        }

        @Override
        @CheckForNull
        public E pollFirst() {
            return (E) M2.c(a().pollFirstEntry());
        }

        @Override
        @CheckForNull
        public E pollLast() {
            return (E) M2.c(a().pollLastEntry());
        }

        @Override
        public NavigableSet<E> subSet(@InterfaceC12518f2 E e10, boolean z10, @InterfaceC12518f2 E e11, boolean z11) {
            return new b(a().dc(e10, EnumC12586x.b(z10), e11, EnumC12586x.b(z11)));
        }

        @Override
        public NavigableSet<E> tailSet(@InterfaceC12518f2 E e10, boolean z10) {
            return new b(a().Jd(e10, EnumC12586x.b(z10)));
        }
    }

    @CheckForNull
    public static <E> E c(@CheckForNull V1.a<E> aVar) {
        if (aVar == null) {
            return null;
        }
        return aVar.getElement();
    }

    public static <E> E d(@CheckForNull V1.a<E> aVar) {
        if (aVar != null) {
            return aVar.getElement();
        }
        throw new NoSuchElementException();
    }
}
