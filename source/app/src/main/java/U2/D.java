package U2;

import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class D extends A implements ExecutorService {

    public final ExecutorService f25676e;

    public D(ExecutorService executorService, int i10) {
        super(executorService, i10);
        this.f25676e = executorService;
    }

    public static Object g(Runnable runnable, Object obj) throws Exception {
        runnable.run();
        return obj;
    }

    public static Object h(Runnable runnable) throws Exception {
        runnable.run();
        return null;
    }

    @Override
    public boolean awaitTermination(long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.f25676e.awaitTermination(j10, timeUnit);
    }

    @Override
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.f25676e.invokeAll(collection);
    }

    @Override
    public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws ExecutionException, InterruptedException {
        return (T) this.f25676e.invokeAny(collection);
    }

    @Override
    public boolean isShutdown() {
        return this.f25676e.isShutdown();
    }

    @Override
    public boolean isTerminated() {
        return this.f25676e.isTerminated();
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
        FutureTask futureTask = new FutureTask(callable);
        execute(futureTask);
        return futureTask;
    }

    @Override
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.f25676e.invokeAll(collection, j10, timeUnit);
    }

    @Override
    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return (T) this.f25676e.invokeAny(collection, j10, timeUnit);
    }

    @Override
    public <T> Future<T> submit(final Runnable runnable, final T t10) {
        return submit(new Callable() {
            @Override
            public final Object call() {
                Object g10;
                g10 = D.g(Runnable.this, t10);
                return g10;
            }
        });
    }

    @Override
    public Future<?> submit(final Runnable runnable) {
        return submit(new Callable() {
            @Override
            public final Object call() {
                Object h10;
                h10 = D.h(Runnable.this);
                return h10;
            }
        });
    }
}
