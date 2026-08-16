package com.google.common.collect;

import java.io.Serializable;
import java.util.Iterator;

@X
@v2.b(serializable = true)
public final class C12593y2 extends Ordering<Comparable<?>> implements Serializable {

    public static final C12593y2 f66942d = new C12593y2();

    public static final long f66943e = 0;

    private Object R() {
        return f66942d;
    }

    @Override
    public <S extends Comparable<?>> Ordering<S> F() {
        return Ordering.A();
    }

    @Override
    public int compare(Comparable<?> comparable, Comparable<?> comparable2) {
        w2.H.E(comparable);
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    @Override
    public <E extends Comparable<?>> E s(E e10, E e11) {
        return (E) Y1.f66378f.x(e10, e11);
    }

    @Override
    public <E extends Comparable<?>> E u(E e10, E e11, E e12, E... eArr) {
        return (E) Y1.f66378f.y(e10, e11, e12, eArr);
    }

    @Override
    public <E extends Comparable<?>> E r(Iterable<E> iterable) {
        return (E) Y1.f66378f.w(iterable);
    }

    @Override
    public <E extends Comparable<?>> E v(Iterator<E> it) {
        return (E) Y1.f66378f.z(it);
    }

    @Override
    public <E extends Comparable<?>> E x(E e10, E e11) {
        return (E) Y1.f66378f.s(e10, e11);
    }

    @Override
    public <E extends Comparable<?>> E y(E e10, E e11, E e12, E... eArr) {
        return (E) Y1.f66378f.u(e10, e11, e12, eArr);
    }

    @Override
    public <E extends Comparable<?>> E w(Iterable<E> iterable) {
        return (E) Y1.f66378f.r(iterable);
    }

    @Override
    public <E extends Comparable<?>> E z(Iterator<E> it) {
        return (E) Y1.f66378f.v(it);
    }

    public String toString() {
        return "Ordering.natural().reverse()";
    }
}
