package com.google.common.collect;

import com.google.common.collect.M2;
import com.google.common.collect.V1;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true)
public abstract class AbstractC12551o<E> extends AbstractC12527i<E> implements K2<E> {

    @S0
    public final Comparator<? super E> f66758d;

    @CheckForNull
    public transient K2<E> f66759e;

    public class a extends V<E> {
        public a() {
        }

        @Override
        public Iterator<V1.a<E>> P0() {
            return AbstractC12551o.this.j();
        }

        @Override
        public K2<E> Q0() {
            return AbstractC12551o.this;
        }

        @Override
        public Iterator<E> iterator() {
            return AbstractC12551o.this.descendingIterator();
        }
    }

    public AbstractC12551o() {
        this(Ordering.A());
    }

    public K2<E> P6() {
        K2<E> k22 = this.f66759e;
        if (k22 != null) {
            return k22;
        }
        K2<E> h10 = h();
        this.f66759e = h10;
        return h10;
    }

    public Comparator<? super E> comparator() {
        return this.f66758d;
    }

    public K2<E> dc(@InterfaceC12518f2 E e10, EnumC12586x enumC12586x, @InterfaceC12518f2 E e11, EnumC12586x enumC12586x2) {
        w2.H.E(enumC12586x);
        w2.H.E(enumC12586x2);
        return Jd(e10, enumC12586x).B7(e11, enumC12586x2);
    }

    public Iterator<E> descendingIterator() {
        return W1.n(P6());
    }

    @CheckForNull
    public V1.a<E> firstEntry() {
        Iterator<V1.a<E>> g10 = g();
        if (g10.hasNext()) {
            return g10.next();
        }
        return null;
    }

    public K2<E> h() {
        return new a();
    }

    @Override
    public NavigableSet<E> a() {
        return new M2.b(this);
    }

    public abstract Iterator<V1.a<E>> j();

    @CheckForNull
    public V1.a<E> lastEntry() {
        Iterator<V1.a<E>> j10 = j();
        if (j10.hasNext()) {
            return j10.next();
        }
        return null;
    }

    @CheckForNull
    public V1.a<E> pollFirstEntry() {
        Iterator<V1.a<E>> g10 = g();
        if (!g10.hasNext()) {
            return null;
        }
        V1.a<E> next = g10.next();
        V1.a<E> k10 = W1.k(next.getElement(), next.getCount());
        g10.remove();
        return k10;
    }

    @CheckForNull
    public V1.a<E> pollLastEntry() {
        Iterator<V1.a<E>> j10 = j();
        if (!j10.hasNext()) {
            return null;
        }
        V1.a<E> next = j10.next();
        V1.a<E> k10 = W1.k(next.getElement(), next.getCount());
        j10.remove();
        return k10;
    }

    public AbstractC12551o(Comparator<? super E> comparator) {
        this.f66758d = (Comparator) w2.H.E(comparator);
    }

    @Override
    public NavigableSet<E> S1() {
        return (NavigableSet) super.S1();
    }
}
