package com.google.common.collect;

import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true, serializable = true)
public final class J1<E> extends AbstractC12515f<E> {
    public J1(int i10) {
        super(i10);
    }

    public static <E> J1<E> m() {
        return n(3);
    }

    public static <E> J1<E> n(int i10) {
        return new J1<>(i10);
    }

    public static <E> J1<E> o(Iterable<? extends E> iterable) {
        J1<E> n10 = n(W1.l(iterable));
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
        return new C12514e2(i10);
    }
}
