package com.google.common.collect;

import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true, serializable = true)
public final class X0<E> extends AbstractC12515f<E> {

    @v2.c
    public static final long f66367g = 0;

    public X0(int i10) {
        super(i10);
    }

    public static <E> X0<E> m() {
        return n(3);
    }

    public static <E> X0<E> n(int i10) {
        return new X0<>(i10);
    }

    public static <E> X0<E> o(Iterable<? extends E> iterable) {
        X0<E> n10 = n(W1.l(iterable));
        D1.a(n10, iterable);
        return n10;
    }

    @Override
    public Set S1() {
        return super.S1();
    }

    @Override
    public boolean contains(@CheckForNull Object obj) {
        return super.contains(obj);
    }

    @Override
    public Set entrySet() {
        return super.entrySet();
    }

    @Override
    public boolean isEmpty() {
        return super.isEmpty();
    }

    @Override
    public C12510d2<E> j(int i10) {
        return new C12510d2<>(i10);
    }
}
