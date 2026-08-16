package com.google.common.collect;

import com.google.common.collect.M2;
import com.google.common.collect.V1;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@X
@v2.b(emulated = true)
@InterfaceC15800a
public abstract class N0<E> extends F0<E> implements K2<E> {

    public abstract class a extends V<E> {
        public a() {
        }

        @Override
        public K2<E> Q0() {
            return N0.this;
        }
    }

    public class b extends M2.b<E> {
        public b(N0 n02) {
            super(n02);
        }
    }

    @Override
    public K2<E> B7(@InterfaceC12518f2 E e10, EnumC12586x enumC12586x) {
        return k0().B7(e10, enumC12586x);
    }

    @Override
    public K2<E> Jd(@InterfaceC12518f2 E e10, EnumC12586x enumC12586x) {
        return k0().Jd(e10, enumC12586x);
    }

    @Override
    public abstract K2<E> k0();

    @CheckForNull
    public V1.a<E> P0() {
        Iterator<V1.a<E>> it = entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        V1.a<E> next = it.next();
        return W1.k(next.getElement(), next.getCount());
    }

    @Override
    public K2<E> P6() {
        return k0().P6();
    }

    @CheckForNull
    public V1.a<E> Q0() {
        Iterator<V1.a<E>> it = P6().entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        V1.a<E> next = it.next();
        return W1.k(next.getElement(), next.getCount());
    }

    @CheckForNull
    public V1.a<E> R0() {
        Iterator<V1.a<E>> it = entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        V1.a<E> next = it.next();
        V1.a<E> k10 = W1.k(next.getElement(), next.getCount());
        it.remove();
        return k10;
    }

    @CheckForNull
    public V1.a<E> U0() {
        Iterator<V1.a<E>> it = P6().entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        V1.a<E> next = it.next();
        V1.a<E> k10 = W1.k(next.getElement(), next.getCount());
        it.remove();
        return k10;
    }

    public K2<E> V0(@InterfaceC12518f2 E e10, EnumC12586x enumC12586x, @InterfaceC12518f2 E e11, EnumC12586x enumC12586x2) {
        return Jd(e10, enumC12586x).B7(e11, enumC12586x2);
    }

    @Override
    public Comparator<? super E> comparator() {
        return k0().comparator();
    }

    @Override
    public K2<E> dc(@InterfaceC12518f2 E e10, EnumC12586x enumC12586x, @InterfaceC12518f2 E e11, EnumC12586x enumC12586x2) {
        return k0().dc(e10, enumC12586x, e11, enumC12586x2);
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
        return k0().pollFirstEntry();
    }

    @Override
    @CheckForNull
    public V1.a<E> pollLastEntry() {
        return k0().pollLastEntry();
    }

    @Override
    public NavigableSet<E> S1() {
        return k0().S1();
    }
}
