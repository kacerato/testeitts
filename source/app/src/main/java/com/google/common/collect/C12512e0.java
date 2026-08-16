package com.google.common.collect;

import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Queue;
import v2.InterfaceC15800a;

@X
@v2.b
@InterfaceC15800a
public final class C12512e0<E> extends J0<E> implements Serializable {

    public static final long f66601d = 0;

    public final Queue<E> f66602b;

    @v2.d
    public final int f66603c;

    public C12512e0(int i10) {
        w2.H.k(i10 >= 0, "maxSize (%s) must >= 0", i10);
        this.f66602b = new ArrayDeque(i10);
        this.f66603c = i10;
    }

    public static <E> C12512e0<E> H0(int i10) {
        return new C12512e0<>(i10);
    }

    @Override
    public Queue<E> k0() {
        return this.f66602b;
    }

    @Override
    @I2.a
    public boolean add(E e10) {
        w2.H.E(e10);
        if (this.f66603c == 0) {
            return true;
        }
        if (size() == this.f66603c) {
            this.f66602b.remove();
        }
        this.f66602b.add(e10);
        return true;
    }

    @Override
    @I2.a
    public boolean addAll(Collection<? extends E> collection) {
        int size = collection.size();
        if (size < this.f66603c) {
            return o0(collection);
        }
        clear();
        return D1.a(this, D1.N(collection, size - this.f66603c));
    }

    @Override
    @I2.a
    public boolean offer(E e10) {
        return add(e10);
    }

    public int remainingCapacity() {
        return this.f66603c - size();
    }

    @Override
    public Object[] toArray() {
        return super.toArray();
    }
}
