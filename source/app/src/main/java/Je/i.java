package Je;

import Be.I;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicReference;

public final class i<T> extends AtomicReference<De.c> implements I<T>, De.c {

    public static final long f10469c = -4875965440900746268L;

    public static final Object f10470d = new Object();

    public final Queue<Object> f10471b;

    public i(Queue<Object> queue) {
        this.f10471b = queue;
    }

    @Override
    public void a() {
        this.f10471b.offer(io.reactivex.internal.util.p.e());
    }

    @Override
    public boolean d() {
        return get() == Ge.d.DISPOSED;
    }

    @Override
    public void dispose() {
        if (Ge.d.a(this)) {
            this.f10471b.offer(f10470d);
        }
    }

    @Override
    public void e(De.c cVar) {
        Ge.d.h(this, cVar);
    }

    @Override
    public void h(T t10) {
        this.f10471b.offer(io.reactivex.internal.util.p.u(t10));
    }

    @Override
    public void onError(Throwable th2) {
        this.f10471b.offer(io.reactivex.internal.util.p.h(th2));
    }
}
