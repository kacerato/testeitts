package U2;

import U2.p;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class o implements ScheduledExecutorService {

    public final ExecutorService f25741b;

    public final ScheduledExecutorService f25742c;

    public o(ExecutorService executorService, ScheduledExecutorService scheduledExecutorService) {
        this.f25741b = executorService;
        this.f25742c = scheduledExecutorService;
    }

    public static void n(Runnable runnable, p.b bVar) {
        try {
            runnable.run();
            bVar.set(null);
        } catch (Exception e10) {
            bVar.a(e10);
        }
    }

    public static void q(Callable callable, p.b bVar) {
        try {
            bVar.set(callable.call());
        } catch (Exception e10) {
            bVar.a(e10);
        }
    }

    public static void t(Runnable runnable, p.b bVar) {
        try {
            runnable.run();
        } catch (Exception e10) {
            bVar.a(e10);
            throw e10;
        }
    }

    public static void y(Runnable runnable, p.b bVar) {
        try {
            runnable.run();
        } catch (Exception e10) {
            bVar.a(e10);
        }
    }

    @Override
    public boolean awaitTermination(long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.f25741b.awaitTermination(j10, timeUnit);
    }

    @Override
    public void execute(Runnable runnable) {
        this.f25741b.execute(runnable);
    }

    @Override
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.f25741b.invokeAll(collection);
    }

    @Override
    public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws ExecutionException, InterruptedException {
        return (T) this.f25741b.invokeAny(collection);
    }

    @Override
    public boolean isShutdown() {
        return this.f25741b.isShutdown();
    }

    @Override
    public boolean isTerminated() {
        return this.f25741b.isTerminated();
    }

    public final void o(final Runnable runnable, final p.b bVar) {
        this.f25741b.execute(new Runnable() {
            @Override
            public final void run() {
                o.n(Runnable.this, bVar);
            }
        });
    }

    public final ScheduledFuture p(final Runnable runnable, long j10, TimeUnit timeUnit, final p.b bVar) {
        return this.f25742c.schedule(new Runnable() {
            @Override
            public final void run() {
                o.this.o(runnable, bVar);
            }
        }, j10, timeUnit);
    }

    public final Future r(final Callable callable, final p.b bVar) throws Exception {
        return this.f25741b.submit(new Runnable() {
            @Override
            public final void run() {
                o.q(Callable.this, bVar);
            }
        });
    }

    public final ScheduledFuture s(final Callable callable, long j10, TimeUnit timeUnit, final p.b bVar) {
        return this.f25742c.schedule(new Callable() {
            @Override
            public final Object call() {
                Future r10;
                r10 = o.this.r(callable, bVar);
                return r10;
            }
        }, j10, timeUnit);
    }

    @Override
    public ScheduledFuture<?> schedule(final Runnable runnable, final long j10, final TimeUnit timeUnit) {
        return new p(new p.c() {
            @Override
            public final ScheduledFuture a(p.b bVar) {
                ScheduledFuture p10;
                p10 = o.this.p(runnable, j10, timeUnit, bVar);
                return p10;
            }
        });
    }

    @Override
    public ScheduledFuture<?> scheduleAtFixedRate(final Runnable runnable, final long j10, final long j11, final TimeUnit timeUnit) {
        return new p(new p.c() {
            @Override
            public final ScheduledFuture a(p.b bVar) {
                ScheduledFuture v10;
                v10 = o.this.v(runnable, j10, j11, timeUnit, bVar);
                return v10;
            }
        });
    }

    @Override
    public ScheduledFuture<?> scheduleWithFixedDelay(final Runnable runnable, final long j10, final long j11, final TimeUnit timeUnit) {
        return new p(new p.c() {
            @Override
            public final ScheduledFuture a(p.b bVar) {
                ScheduledFuture x10;
                x10 = o.this.x(runnable, j10, j11, timeUnit, bVar);
                return x10;
            }
        });
    }

    @Override
    public void shutdown() {
        throw new UnsupportedOperationException("Shutting down is not allowed.");
    }

    @Override
    public List<Runnable> shutdownNow() {
        throw new UnsupportedOperationException("Shutting down is not allowed.");
    }

    @Override
    public <T> Future<T> submit(Callable<T> callable) {
        return this.f25741b.submit(callable);
    }

    public final void u(final Runnable runnable, final p.b bVar) {
        this.f25741b.execute(new Runnable() {
            @Override
            public final void run() {
                o.t(Runnable.this, bVar);
            }
        });
    }

    public final ScheduledFuture v(final Runnable runnable, long j10, long j11, TimeUnit timeUnit, final p.b bVar) {
        return this.f25742c.scheduleAtFixedRate(new Runnable() {
            @Override
            public final void run() {
                o.this.u(runnable, bVar);
            }
        }, j10, j11, timeUnit);
    }

    public final void w(final Runnable runnable, final p.b bVar) {
        this.f25741b.execute(new Runnable() {
            @Override
            public final void run() {
                o.y(Runnable.this, bVar);
            }
        });
    }

    public final ScheduledFuture x(final Runnable runnable, long j10, long j11, TimeUnit timeUnit, final p.b bVar) {
        return this.f25742c.scheduleWithFixedDelay(new Runnable() {
            @Override
            public final void run() {
                o.this.w(runnable, bVar);
            }
        }, j10, j11, timeUnit);
    }

    @Override
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.f25741b.invokeAll(collection, j10, timeUnit);
    }

    @Override
    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return (T) this.f25741b.invokeAny(collection, j10, timeUnit);
    }

    @Override
    public <V> ScheduledFuture<V> schedule(final Callable<V> callable, final long j10, final TimeUnit timeUnit) {
        return new p(new p.c() {
            @Override
            public final ScheduledFuture a(p.b bVar) {
                ScheduledFuture s10;
                s10 = o.this.s(callable, j10, timeUnit, bVar);
                return s10;
            }
        });
    }

    @Override
    public <T> Future<T> submit(Runnable runnable, T t10) {
        return this.f25741b.submit(runnable, t10);
    }

    @Override
    public Future<?> submit(Runnable runnable) {
        return this.f25741b.submit(runnable);
    }
}
