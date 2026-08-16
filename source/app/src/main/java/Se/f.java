package Se;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

public final class f implements Callable<Void>, De.c {

    public static final FutureTask<Void> f23104g = new FutureTask<>(He.a.f8376b, null);

    public final Runnable f23105b;

    public final ExecutorService f23108e;

    public Thread f23109f;

    public final AtomicReference<Future<?>> f23107d = new AtomicReference<>();

    public final AtomicReference<Future<?>> f23106c = new AtomicReference<>();

    public f(Runnable runnable, ExecutorService executorService) {
        this.f23105b = runnable;
        this.f23108e = executorService;
    }

    @Override
    public Void call() throws Exception {
        this.f23109f = Thread.currentThread();
        try {
            this.f23105b.run();
            c(this.f23108e.submit(this));
            this.f23109f = null;
        } catch (Throwable th2) {
            this.f23109f = null;
            Ye.a.Y(th2);
        }
        return null;
    }

    public void b(Future<?> future) {
        Future<?> future2;
        do {
            future2 = this.f23107d.get();
            if (future2 == f23104g) {
                future.cancel(this.f23109f != Thread.currentThread());
                return;
            }
        } while (!androidx.lifecycle.c.a(this.f23107d, future2, future));
    }

    public void c(Future<?> future) {
        Future<?> future2;
        do {
            future2 = this.f23106c.get();
            if (future2 == f23104g) {
                future.cancel(this.f23109f != Thread.currentThread());
                return;
            }
        } while (!androidx.lifecycle.c.a(this.f23106c, future2, future));
    }

    @Override
    public boolean d() {
        return this.f23107d.get() == f23104g;
    }

    @Override
    public void dispose() {
        AtomicReference<Future<?>> atomicReference = this.f23107d;
        FutureTask<Void> futureTask = f23104g;
        Future<?> andSet = atomicReference.getAndSet(futureTask);
        if (andSet != null && andSet != futureTask) {
            andSet.cancel(this.f23109f != Thread.currentThread());
        }
        Future<?> andSet2 = this.f23106c.getAndSet(futureTask);
        if (andSet2 == null || andSet2 == futureTask) {
            return;
        }
        andSet2.cancel(this.f23109f != Thread.currentThread());
    }
}
