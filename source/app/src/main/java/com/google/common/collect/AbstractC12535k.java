package com.google.common.collect;

import java.lang.Comparable;
import java.util.Iterator;
import javax.annotation.CheckForNull;

@X
@v2.c
public abstract class AbstractC12535k<C extends Comparable> implements InterfaceC12546m2<C> {
    @Override
    public void a(C12534j2<C> c12534j2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void b(Iterable<C12534j2<C>> iterable) {
        Iterator<C12534j2<C>> it = iterable.iterator();
        while (it.hasNext()) {
            o(it.next());
        }
    }

    @Override
    public void clear() {
        a(C12534j2.a());
    }

    @Override
    public boolean contains(C c10) {
        return h(c10) != null;
    }

    @Override
    public boolean e(C12534j2<C> c12534j2) {
        return !k(c12534j2).isEmpty();
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof InterfaceC12546m2) {
            return m().equals(((InterfaceC12546m2) obj).m());
        }
        return false;
    }

    @Override
    public void f(Iterable<C12534j2<C>> iterable) {
        Iterator<C12534j2<C>> it = iterable.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    @Override
    public boolean g(InterfaceC12546m2<C> interfaceC12546m2) {
        return j(interfaceC12546m2.m());
    }

    @Override
    @CheckForNull
    public abstract C12534j2<C> h(C c10);

    @Override
    public final int hashCode() {
        return m().hashCode();
    }

    @Override
    public abstract boolean i(C12534j2<C> c12534j2);

    @Override
    public boolean isEmpty() {
        return m().isEmpty();
    }

    @Override
    public boolean j(Iterable<C12534j2<C>> iterable) {
        Iterator<C12534j2<C>> it = iterable.iterator();
        while (it.hasNext()) {
            if (!i(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void n(InterfaceC12546m2<C> interfaceC12546m2) {
        f(interfaceC12546m2.m());
    }

    @Override
    public void o(C12534j2<C> c12534j2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void p(InterfaceC12546m2<C> interfaceC12546m2) {
        b(interfaceC12546m2.m());
    }

    @Override
    public final String toString() {
        return m().toString();
    }
}
