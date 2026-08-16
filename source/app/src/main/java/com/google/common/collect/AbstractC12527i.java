package com.google.common.collect;

import com.google.common.collect.V1;
import com.google.common.collect.W1;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b
public abstract class AbstractC12527i<E> extends AbstractCollection<E> implements V1<E> {

    @CheckForNull
    @J2.b
    public transient Set<E> f66660b;

    @CheckForNull
    @J2.b
    public transient Set<V1.a<E>> f66661c;

    public class a extends W1.h<E> {
        public a() {
        }

        @Override
        public V1<E> a() {
            return AbstractC12527i.this;
        }

        @Override
        public Iterator<E> iterator() {
            return AbstractC12527i.this.d();
        }
    }

    public class b extends W1.i<E> {
        public b() {
        }

        @Override
        public V1<E> a() {
            return AbstractC12527i.this;
        }

        @Override
        public Iterator<V1.a<E>> iterator() {
            return AbstractC12527i.this.g();
        }

        @Override
        public int size() {
            return AbstractC12527i.this.c();
        }
    }

    @I2.a
    public int P9(@InterfaceC12518f2 E e10, int i10) {
        return W1.v(this, e10, i10);
    }

    public Set<E> S1() {
        Set<E> set = this.f66660b;
        if (set != null) {
            return set;
        }
        Set<E> a10 = a();
        this.f66660b = a10;
        return a10;
    }

    public Set<E> a() {
        return new a();
    }

    @Override
    @I2.a
    public final boolean add(@InterfaceC12518f2 E e10) {
        y6(e10, 1);
        return true;
    }

    @Override
    @I2.a
    public boolean addAll(Collection<? extends E> collection) {
        return W1.c(this, collection);
    }

    public Set<V1.a<E>> b() {
        return new b();
    }

    public abstract int c();

    @Override
    public abstract void clear();

    @Override
    public boolean contains(@CheckForNull Object obj) {
        return Ad(obj) > 0;
    }

    public abstract Iterator<E> d();

    @I2.a
    public boolean e7(@InterfaceC12518f2 E e10, int i10, int i11) {
        return W1.w(this, e10, i10, i11);
    }

    public Set<V1.a<E>> entrySet() {
        Set<V1.a<E>> set = this.f66661c;
        if (set != null) {
            return set;
        }
        Set<V1.a<E>> b10 = b();
        this.f66661c = b10;
        return b10;
    }

    @Override
    public final boolean equals(@CheckForNull Object obj) {
        return W1.i(this, obj);
    }

    public abstract Iterator<V1.a<E>> g();

    @Override
    public final int hashCode() {
        return entrySet().hashCode();
    }

    @Override
    public boolean isEmpty() {
        return entrySet().isEmpty();
    }

    @I2.a
    public int pc(@CheckForNull Object obj, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    @I2.a
    public final boolean remove(@CheckForNull Object obj) {
        return pc(obj, 1) > 0;
    }

    @Override
    @I2.a
    public final boolean removeAll(Collection<?> collection) {
        return W1.p(this, collection);
    }

    @Override
    @I2.a
    public final boolean retainAll(Collection<?> collection) {
        return W1.s(this, collection);
    }

    @Override
    public final String toString() {
        return entrySet().toString();
    }

    @I2.a
    public int y6(@InterfaceC12518f2 E e10, int i10) {
        throw new UnsupportedOperationException();
    }
}
