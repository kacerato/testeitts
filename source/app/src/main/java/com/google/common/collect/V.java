package com.google.common.collect;

import com.google.common.collect.M2;
import com.google.common.collect.V1;
import com.google.common.collect.W1;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true)
public abstract class V<E> extends F0<E> implements K2<E> {

    @CheckForNull
    public transient Comparator<? super E> f66313b;

    @CheckForNull
    public transient NavigableSet<E> f66314c;

    @CheckForNull
    public transient Set<V1.a<E>> f66315d;

    public class a extends W1.i<E> {
        public a() {
        }

        @Override
        public V1<E> a() {
            return V.this;
        }

        @Override
        public Iterator<V1.a<E>> iterator() {
            return V.this.P0();
        }

        @Override
        public int size() {
            return V.this.Q0().entrySet().size();
        }
    }

    @Override
    public K2<E> B7(@InterfaceC12518f2 E e10, EnumC12586x enumC12586x) {
        return Q0().Jd(e10, enumC12586x).P6();
    }

    @Override
    public V1<E> k0() {
        return Q0();
    }

    @Override
    public K2<E> Jd(@InterfaceC12518f2 E e10, EnumC12586x enumC12586x) {
        return Q0().B7(e10, enumC12586x).P6();
    }

    public Set<V1.a<E>> O0() {
        return new a();
    }

    public abstract Iterator<V1.a<E>> P0();

    @Override
    public K2<E> P6() {
        return Q0();
    }

    public abstract K2<E> Q0();

    @Override
    public Comparator<? super E> comparator() {
        Comparator<? super E> comparator = this.f66313b;
        if (comparator != null) {
            return comparator;
        }
        Ordering F10 = Ordering.i(Q0().comparator()).F();
        this.f66313b = F10;
        return F10;
    }

    @Override
    public K2<E> dc(@InterfaceC12518f2 E e10, EnumC12586x enumC12586x, @InterfaceC12518f2 E e11, EnumC12586x enumC12586x2) {
        return Q0().dc(e11, enumC12586x2, e10, enumC12586x).P6();
    }

    @Override
    public Set<V1.a<E>> entrySet() {
        Set<V1.a<E>> set = this.f66315d;
        if (set != null) {
            return set;
        }
        Set<V1.a<E>> O02 = O0();
        this.f66315d = O02;
        return O02;
    }

    @Override
    @CheckForNull
    public V1.a<E> firstEntry() {
        return Q0().lastEntry();
    }

    @Override
    public Iterator<E> iterator() {
        return W1.n(this);
    }

    @Override
    @CheckForNull
    public V1.a<E> lastEntry() {
        return Q0().firstEntry();
    }

    @Override
    @CheckForNull
    public V1.a<E> pollFirstEntry() {
        return Q0().pollLastEntry();
    }

    @Override
    @CheckForNull
    public V1.a<E> pollLastEntry() {
        return Q0().pollFirstEntry();
    }

    @Override
    public Object[] toArray() {
        return z0();
    }

    @Override
    public String toString() {
        return entrySet().toString();
    }

    @Override
    public <T> T[] toArray(T[] tArr) {
        return (T[]) B0(tArr);
    }

    @Override
    public NavigableSet<E> S1() {
        NavigableSet<E> navigableSet = this.f66314c;
        if (navigableSet != null) {
            return navigableSet;
        }
        M2.b bVar = new M2.b(this);
        this.f66314c = bVar;
        return bVar;
    }
}
