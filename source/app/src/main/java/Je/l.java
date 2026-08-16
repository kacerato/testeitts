package Je;

import Be.I;

public class l<T> extends b<T> {

    public static final long f10478e = -5502432239815349361L;

    public static final int f10479f = 2;

    public static final int f10480g = 4;

    public static final int f10481h = 8;

    public static final int f10482i = 16;

    public static final int f10483j = 32;

    public final I<? super T> f10484c;

    public T f10485d;

    public l(I<? super T> i10) {
        this.f10484c = i10;
    }

    public final void c() {
        if ((get() & 54) != 0) {
            return;
        }
        lazySet(2);
        this.f10484c.a();
    }

    @Override
    public final void clear() {
        lazySet(32);
        this.f10485d = null;
    }

    @Override
    public final boolean d() {
        return get() == 4;
    }

    @Override
    public void dispose() {
        set(4);
        this.f10485d = null;
    }

    public final void f(T t10) {
        int i10 = get();
        if ((i10 & 54) != 0) {
            return;
        }
        I<? super T> i11 = this.f10484c;
        if (i10 == 8) {
            this.f10485d = t10;
            lazySet(16);
            i11.h(null);
        } else {
            lazySet(2);
            i11.h(t10);
        }
        if (get() != 4) {
            i11.a();
        }
    }

    public final void i(Throwable th2) {
        if ((get() & 54) != 0) {
            Ye.a.Y(th2);
        } else {
            lazySet(2);
            this.f10484c.onError(th2);
        }
    }

    @Override
    public final boolean isEmpty() {
        return get() != 16;
    }

    public final boolean j() {
        return getAndSet(4) != 4;
    }

    @Override
    public final int m(int i10) {
        if ((i10 & 2) == 0) {
            return 0;
        }
        lazySet(8);
        return 2;
    }

    @Override
    @Ce.g
    public final T poll() throws Exception {
        if (get() != 16) {
            return null;
        }
        T t10 = this.f10485d;
        this.f10485d = null;
        lazySet(32);
        return t10;
    }
}
