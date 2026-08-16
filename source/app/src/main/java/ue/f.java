package Ue;

public class f<T> extends c<T> {

    public static final long f26024e = -2151279923272604993L;

    public static final int f26025f = 0;

    public static final int f26026g = 1;

    public static final int f26027h = 2;

    public static final int f26028i = 3;

    public static final int f26029j = 4;

    public static final int f26030k = 8;

    public static final int f26031l = 16;

    public static final int f26032m = 32;

    public final hn.c<? super T> f26033c;

    public T f26034d;

    public f(hn.c<? super T> cVar) {
        this.f26033c = cVar;
    }

    public void cancel() {
        set(4);
        this.f26034d = null;
    }

    @Override
    public final void clear() {
        lazySet(32);
        this.f26034d = null;
    }

    public final void d(T t10) {
        int i10 = get();
        while (i10 != 8) {
            if ((i10 & (-3)) != 0) {
                return;
            }
            if (i10 == 2) {
                lazySet(3);
                hn.c<? super T> cVar = this.f26033c;
                cVar.h(t10);
                if (get() != 4) {
                    cVar.a();
                    return;
                }
                return;
            }
            this.f26034d = t10;
            if (compareAndSet(0, 1)) {
                return;
            }
            i10 = get();
            if (i10 == 4) {
                this.f26034d = null;
                return;
            }
        }
        this.f26034d = t10;
        lazySet(16);
        hn.c<? super T> cVar2 = this.f26033c;
        cVar2.h(t10);
        if (get() != 4) {
            cVar2.a();
        }
    }

    @Override
    public final void i(long j10) {
        T t10;
        if (!j.m(j10)) {
            return;
        }
        do {
            int i10 = get();
            if ((i10 & (-2)) != 0) {
                return;
            }
            if (i10 == 1) {
                if (!compareAndSet(1, 3) || (t10 = this.f26034d) == null) {
                    return;
                }
                this.f26034d = null;
                hn.c<? super T> cVar = this.f26033c;
                cVar.h(t10);
                if (get() != 4) {
                    cVar.a();
                    return;
                }
                return;
            }
        } while (!compareAndSet(0, 2));
    }

    @Override
    public final boolean isEmpty() {
        return get() != 16;
    }

    @Override
    public final int m(int i10) {
        if ((i10 & 2) == 0) {
            return 0;
        }
        lazySet(8);
        return 2;
    }

    public final boolean n() {
        return get() == 4;
    }

    public final boolean p() {
        return getAndSet(4) != 4;
    }

    @Override
    @Ce.g
    public final T poll() {
        if (get() != 16) {
            return null;
        }
        lazySet(32);
        T t10 = this.f26034d;
        this.f26034d = null;
        return t10;
    }
}
