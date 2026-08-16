package com.google.common.collect;

import java.io.Serializable;
import javax.annotation.CheckForNull;

@X
@v2.b(serializable = true)
public final class Y1 extends Ordering<Comparable<?>> implements Serializable {

    public static final Y1 f66378f = new Y1();

    public static final long f66379g = 0;

    @CheckForNull
    public transient Ordering<Comparable<?>> f66380d;

    @CheckForNull
    public transient Ordering<Comparable<?>> f66381e;

    private Object J() {
        return f66378f;
    }

    @Override
    public <S extends Comparable<?>> Ordering<S> B() {
        Ordering<S> ordering = (Ordering<S>) this.f66380d;
        if (ordering != null) {
            return ordering;
        }
        Ordering<S> B10 = super.B();
        this.f66380d = B10;
        return B10;
    }

    @Override
    public <S extends Comparable<?>> Ordering<S> C() {
        Ordering<S> ordering = (Ordering<S>) this.f66381e;
        if (ordering != null) {
            return ordering;
        }
        Ordering<S> C10 = super.C();
        this.f66381e = C10;
        return C10;
    }

    @Override
    public <S extends Comparable<?>> Ordering<S> F() {
        return C12593y2.f66942d;
    }

    @Override
    public int compare(Comparable<?> comparable, Comparable<?> comparable2) {
        w2.H.E(comparable);
        w2.H.E(comparable2);
        return comparable.compareTo(comparable2);
    }

    public String toString() {
        return "Ordering.natural()";
    }
}
