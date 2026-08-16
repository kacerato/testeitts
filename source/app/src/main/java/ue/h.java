package Ue;

import Ie.l;
import java.util.concurrent.atomic.AtomicInteger;

public final class h<T> extends AtomicInteger implements l<T> {

    public static final long f26035d = -3830916580126663321L;

    public static final int f26036e = 0;

    public static final int f26037f = 1;

    public static final int f26038g = 2;

    public final T f26039b;

    public final hn.c<? super T> f26040c;

    public h(hn.c<? super T> cVar, T t10) {
        this.f26040c = cVar;
        this.f26039b = t10;
    }

    public boolean a() {
        return get() == 2;
    }

    @Override
    public void cancel() {
        lazySet(2);
    }

    @Override
    public void clear() {
        lazySet(1);
    }

    @Override
    public void i(long j10) {
        if (j.m(j10) && compareAndSet(0, 1)) {
            hn.c<? super T> cVar = this.f26040c;
            cVar.h(this.f26039b);
            if (get() != 2) {
                cVar.a();
            }
        }
    }

    @Override
    public boolean isEmpty() {
        return get() != 0;
    }

    @Override
    public int m(int i10) {
        return i10 & 1;
    }

    @Override
    public boolean o(T t10, T t11) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override
    public boolean offer(T t10) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override
    @Ce.g
    public T poll() {
        if (get() != 0) {
            return null;
        }
        lazySet(1);
        return this.f26039b;
    }
}
