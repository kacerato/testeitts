package com.google.common.collect;

import com.google.common.collect.V1;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true)
public abstract class AbstractC12515f<E> extends AbstractC12527i<E> implements Serializable {

    @v2.c
    public static final long f66611f = 0;

    public transient C12510d2<E> f66612d;

    public transient long f66613e;

    public class a extends AbstractC12515f<E>.c<E> {
        public a() {
            super();
        }

        @Override
        @InterfaceC12518f2
        public E b(int i10) {
            return AbstractC12515f.this.f66612d.j(i10);
        }
    }

    public class b extends AbstractC12515f<E>.c<V1.a<E>> {
        public b() {
            super();
        }

        @Override
        public V1.a<E> b(int i10) {
            return AbstractC12515f.this.f66612d.h(i10);
        }
    }

    public abstract class c<T> implements Iterator<T> {

        public int f66616b;

        public int f66617c = -1;

        public int f66618d;

        public c() {
            this.f66616b = AbstractC12515f.this.f66612d.f();
            this.f66618d = AbstractC12515f.this.f66612d.f66542d;
        }

        public final void a() {
            if (AbstractC12515f.this.f66612d.f66542d != this.f66618d) {
                throw new ConcurrentModificationException();
            }
        }

        @InterfaceC12518f2
        public abstract T b(int i10);

        @Override
        public boolean hasNext() {
            a();
            return this.f66616b >= 0;
        }

        @Override
        @InterfaceC12518f2
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T b10 = b(this.f66616b);
            int i10 = this.f66616b;
            this.f66617c = i10;
            this.f66616b = AbstractC12515f.this.f66612d.t(i10);
            return b10;
        }

        @Override
        public void remove() {
            a();
            B.e(this.f66617c != -1);
            AbstractC12515f.this.f66613e -= r0.f66612d.y(this.f66617c);
            this.f66616b = AbstractC12515f.this.f66612d.u(this.f66616b, this.f66617c);
            this.f66617c = -1;
            this.f66618d = AbstractC12515f.this.f66612d.f66542d;
        }
    }

    public AbstractC12515f(int i10) {
        this.f66612d = j(i10);
    }

    @v2.c
    private void k(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int h10 = B2.h(objectInputStream);
        this.f66612d = j(3);
        B2.g(this, objectInputStream, h10);
    }

    @v2.c
    private void l(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        B2.k(this, objectOutputStream);
    }

    @Override
    public final int Ad(@CheckForNull Object obj) {
        return this.f66612d.g(obj);
    }

    @Override
    @I2.a
    public final int P9(@InterfaceC12518f2 E e10, int i10) {
        B.b(i10, oc.c.f98682m);
        C12510d2<E> c12510d2 = this.f66612d;
        int w10 = i10 == 0 ? c12510d2.w(e10) : c12510d2.v(e10, i10);
        this.f66613e += i10 - w10;
        return w10;
    }

    @Override
    public final int c() {
        return this.f66612d.D();
    }

    @Override
    public final void clear() {
        this.f66612d.a();
        this.f66613e = 0L;
    }

    @Override
    public final Iterator<E> d() {
        return new a();
    }

    @Override
    public final boolean e7(@InterfaceC12518f2 E e10, int i10, int i11) {
        B.b(i10, "oldCount");
        B.b(i11, "newCount");
        int n10 = this.f66612d.n(e10);
        if (n10 == -1) {
            if (i10 != 0) {
                return false;
            }
            if (i11 > 0) {
                this.f66612d.v(e10, i11);
                this.f66613e += i11;
            }
            return true;
        }
        if (this.f66612d.l(n10) != i10) {
            return false;
        }
        if (i11 == 0) {
            this.f66612d.y(n10);
            this.f66613e -= i10;
        } else {
            this.f66612d.C(n10, i11);
            this.f66613e += i11 - i10;
        }
        return true;
    }

    @Override
    public final Iterator<V1.a<E>> g() {
        return new b();
    }

    public void h(V1<? super E> v12) {
        w2.H.E(v12);
        int f10 = this.f66612d.f();
        while (f10 >= 0) {
            v12.y6(this.f66612d.j(f10), this.f66612d.l(f10));
            f10 = this.f66612d.t(f10);
        }
    }

    @Override
    public final Iterator<E> iterator() {
        return W1.n(this);
    }

    public abstract C12510d2<E> j(int i10);

    @Override
    @I2.a
    public final int pc(@CheckForNull Object obj, int i10) {
        if (i10 == 0) {
            return Ad(obj);
        }
        w2.H.k(i10 > 0, "occurrences cannot be negative: %s", i10);
        int n10 = this.f66612d.n(obj);
        if (n10 == -1) {
            return 0;
        }
        int l10 = this.f66612d.l(n10);
        if (l10 > i10) {
            this.f66612d.C(n10, l10 - i10);
        } else {
            this.f66612d.y(n10);
            i10 = l10;
        }
        this.f66613e -= i10;
        return l10;
    }

    @Override
    public final int size() {
        return com.google.common.primitives.l.x(this.f66613e);
    }

    @Override
    @I2.a
    public final int y6(@InterfaceC12518f2 E e10, int i10) {
        if (i10 == 0) {
            return Ad(e10);
        }
        w2.H.k(i10 > 0, "occurrences cannot be negative: %s", i10);
        int n10 = this.f66612d.n(e10);
        if (n10 == -1) {
            this.f66612d.v(e10, i10);
            this.f66613e += i10;
            return 0;
        }
        int l10 = this.f66612d.l(n10);
        long j10 = i10;
        long j11 = l10 + j10;
        w2.H.p(j11 <= 2147483647L, "too many occurrences: %s", j11);
        this.f66612d.C(n10, (int) j11);
        this.f66613e += j10;
        return l10;
    }
}
