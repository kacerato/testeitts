package Je;

import Be.N;
import java.util.concurrent.atomic.AtomicReference;

public final class z<T> implements N<T> {

    public final AtomicReference<De.c> f10551b;

    public final N<? super T> f10552c;

    public z(AtomicReference<De.c> atomicReference, N<? super T> n10) {
        this.f10551b = atomicReference;
        this.f10552c = n10;
    }

    @Override
    public void b(T t10) {
        this.f10552c.b(t10);
    }

    @Override
    public void e(De.c cVar) {
        Ge.d.c(this.f10551b, cVar);
    }

    @Override
    public void onError(Throwable th2) {
        this.f10552c.onError(th2);
    }
}
