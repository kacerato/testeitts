package com.google.common.collect;

import com.google.common.collect.V1;
import com.google.common.collect.W1;
import java.util.Comparator;
import java.util.NavigableSet;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true)
public final class g3<E> extends W1.m<E> implements K2<E> {

    public static final long f66646g = 0;

    @CheckForNull
    public transient g3<E> f66647f;

    public g3(K2<E> k22) {
        super(k22);
    }

    @Override
    public K2<E> B7(@InterfaceC12518f2 E e10, EnumC12586x enumC12586x) {
        return W1.B(k0().B7(e10, enumC12586x));
    }

    @Override
    public K2<E> Jd(@InterfaceC12518f2 E e10, EnumC12586x enumC12586x) {
        return W1.B(k0().Jd(e10, enumC12586x));
    }

    @Override
    public NavigableSet<E> O0() {
        return D2.O(k0().S1());
    }

    @Override
    public K2<E> P6() {
        g3<E> g3Var = this.f66647f;
        if (g3Var != null) {
            return g3Var;
        }
        g3<E> g3Var2 = new g3<>(k0().P6());
        g3Var2.f66647f = this;
        this.f66647f = g3Var2;
        return g3Var2;
    }

    @Override
    public K2<E> k0() {
        return (K2) super.k0();
    }

    @Override
    public Comparator<? super E> comparator() {
        return k0().comparator();
    }

    @Override
    public K2<E> dc(@InterfaceC12518f2 E e10, EnumC12586x enumC12586x, @InterfaceC12518f2 E e11, EnumC12586x enumC12586x2) {
        return W1.B(k0().dc(e10, enumC12586x, e11, enumC12586x2));
    }

    @Override
    @CheckForNull
    public V1.a<E> firstEntry() {
        return k0().firstEntry();
    }

    @Override
    @CheckForNull
    public V1.a<E> lastEntry() {
        return k0().lastEntry();
    }

    @Override
    @CheckForNull
    public V1.a<E> pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override
    @CheckForNull
    public V1.a<E> pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override
    public NavigableSet<E> S1() {
        return (NavigableSet) super.S1();
    }
}
