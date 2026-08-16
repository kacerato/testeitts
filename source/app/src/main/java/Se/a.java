package Se;

import af.InterfaceC3603a;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

public abstract class a extends AtomicReference<Future<?>> implements De.c, InterfaceC3603a {

    public static final long f23050d = 1811839108042568751L;

    public static final FutureTask<Void> f23051e;

    public static final FutureTask<Void> f23052f;

    public final Runnable f23053b;

    public Thread f23054c;

    static {
        Runnable runnable = He.a.f8376b;
        f23051e = new FutureTask<>(runnable, null);
        f23052f = new FutureTask<>(runnable, null);
    }

    public a(Runnable runnable) {
        this.f23053b = runnable;
    }

    @Override
    public Runnable a() {
        return this.f23053b;
    }

    public final void b(Future<?> future) {
        Future<?> future2;
        do {
            future2 = get();
            if (future2 == f23051e) {
                return;
            }
            if (future2 == f23052f) {
                future.cancel(this.f23054c != Thread.currentThread());
                return;
            }
        } while (!compareAndSet(future2, future));
    }

    @Override
    public final boolean d() {
        Future<?> future = get();
        return future == f23051e || future == f23052f;
    }

    @Override
    public final void dispose() {
        FutureTask<Void> futureTask;
        Future<?> future = get();
        if (future == f23051e || future == (futureTask = f23052f) || !compareAndSet(future, futureTask) || future == null) {
            return;
        }
        future.cancel(this.f23054c != Thread.currentThread());
    }
}
