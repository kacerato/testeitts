package Re;

import Ce.g;
import Ie.n;
import java.util.concurrent.atomic.AtomicReference;

public final class a<T> implements n<T> {

    public final AtomicReference<C0550a<T>> f22753b = new AtomicReference<>();

    public final AtomicReference<C0550a<T>> f22754c = new AtomicReference<>();

    public static final class C0550a<E> extends AtomicReference<C0550a<E>> {

        public static final long f22755c = 2404266111789071508L;

        public E f22756b;

        public C0550a() {
        }

        public E a() {
            E b10 = b();
            e(null);
            return b10;
        }

        public E b() {
            return this.f22756b;
        }

        public C0550a<E> c() {
            return get();
        }

        public void d(C0550a<E> c0550a) {
            lazySet(c0550a);
        }

        public void e(E e10) {
            this.f22756b = e10;
        }

        public C0550a(E e10) {
            e(e10);
        }
    }

    public a() {
        C0550a<T> c0550a = new C0550a<>();
        d(c0550a);
        e(c0550a);
    }

    public C0550a<T> a() {
        return this.f22754c.get();
    }

    public C0550a<T> b() {
        return this.f22754c.get();
    }

    public C0550a<T> c() {
        return this.f22753b.get();
    }

    @Override
    public void clear() {
        while (poll() != null && !isEmpty()) {
        }
    }

    public void d(C0550a<T> c0550a) {
        this.f22754c.lazySet(c0550a);
    }

    public C0550a<T> e(C0550a<T> c0550a) {
        return this.f22753b.getAndSet(c0550a);
    }

    @Override
    public boolean isEmpty() {
        return b() == c();
    }

    @Override
    public boolean o(T t10, T t11) {
        offer(t10);
        offer(t11);
        return true;
    }

    @Override
    public boolean offer(T t10) {
        if (t10 == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        C0550a<T> c0550a = new C0550a<>(t10);
        e(c0550a).d(c0550a);
        return true;
    }

    @Override
    @g
    public T poll() {
        C0550a<T> c10;
        C0550a<T> a10 = a();
        C0550a<T> c11 = a10.c();
        if (c11 != null) {
            T a11 = c11.a();
            d(c11);
            return a11;
        }
        if (a10 == c()) {
            return null;
        }
        do {
            c10 = a10.c();
        } while (c10 == null);
        T a12 = c10.a();
        d(c10);
        return a12;
    }
}
