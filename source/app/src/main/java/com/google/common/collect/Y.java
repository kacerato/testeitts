package com.google.common.collect;

import java.io.Serializable;
import java.lang.Comparable;
import java.util.NoSuchElementException;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true)
public final class Y<C extends Comparable> extends O<C> {

    @v2.c
    public static final class b<C extends Comparable> implements Serializable {

        public static final long f66373c = 0;

        public final W<C> f66374b;

        public final Object a() {
            return new Y(this.f66374b);
        }

        public b(W<C> w10) {
            this.f66374b = w10;
        }
    }

    public Y(W<C> w10) {
        super(w10);
    }

    @Override
    public O<C> f0(C c10, boolean z10) {
        return this;
    }

    @Override
    public O<C> I0(O<C> o10) {
        return this;
    }

    @Override
    public C12534j2<C> J0() {
        throw new NoSuchElementException();
    }

    @Override
    public C12534j2<C> M0(EnumC12586x enumC12586x, EnumC12586x enumC12586x2) {
        throw new NoSuchElementException();
    }

    @Override
    public O<C> t0(C c10, boolean z10, C c11, boolean z11) {
        return this;
    }

    @Override
    public O<C> w0(C c10, boolean z10) {
        return this;
    }

    @Override
    public C first() {
        throw new NoSuchElementException();
    }

    @Override
    public C last() {
        throw new NoSuchElementException();
    }

    @Override
    @v2.c
    public AbstractC12588x1<C> Z() {
        return AbstractC12588x1.c0(Ordering.A().F());
    }

    @Override
    public AbstractC12521g1<C> a() {
        return AbstractC12521g1.x();
    }

    @Override
    @v2.c
    public e3<C> descendingIterator() {
        return E1.u();
    }

    @Override
    public boolean contains(@CheckForNull Object obj) {
        return false;
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        if (obj instanceof Set) {
            return ((Set) obj).isEmpty();
        }
        return false;
    }

    @Override
    public boolean h() {
        return false;
    }

    @Override
    public int hashCode() {
        return 0;
    }

    @Override
    public e3<C> iterator() {
        return E1.u();
    }

    @Override
    @v2.c
    public int indexOf(@CheckForNull Object obj) {
        return -1;
    }

    @Override
    public boolean isEmpty() {
        return true;
    }

    @Override
    @v2.c
    public Object j() {
        return new b(this.f65894i);
    }

    @Override
    public int size() {
        return 0;
    }

    @Override
    public String toString() {
        return okhttp3.v.f99450n;
    }

    @Override
    @v2.c
    public boolean y() {
        return true;
    }
}
