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

public final class J implements G {

    public final ExecutorService f25683b;

    public final E f25684c;

    public J(boolean z10, ExecutorService executorService) {
        this.f25683b = executorService;
        this.f25684c = new F(z10, executorService);
    }

    public static Object c(Runnable runnable, Object obj) throws Exception {
        runnable.run();
        return obj;
    }

    public static Object d(Runnable runnable) throws Exception {
        runnable.run();
        return null;
    }

    @Override
    public boolean awaitTermination(long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.f25683b.awaitTermination(j10, timeUnit);
    }

    @Override
    public void execute(Runnable runnable) {
        this.f25684c.execute(runnable);
    }

    @Override
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.f25683b.invokeAll(collection);
    }

    @Override
    public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws ExecutionException, InterruptedException {
        return (T) this.f25683b.invokeAny(collection);
    }

    @Override
    public boolean isPaused() {
        return this.f25684c.isPaused();
    }

    @Override
    public boolean isShutdown() {
        return this.f25683b.isShutdown();
    }

    @Override
    public boolean isTerminated() {
        return this.f25683b.isTerminated();
    }

    @Override
    public void pause() {
        this.f25684c.pause();
    }

    @Override
    public void resume() {
        this.f25684c.resume();
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
        return this.f25683b.invokeAll(collection, j10, timeUnit);
    }

    @Override
    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return (T) this.f25683b.invokeAny(collection, j10, timeUnit);
    }

    @Override
    public <T> Future<T> submit(final Runnable runnable, final T t10) {
        return submit(new Callable() {
            @Override
            public final Object call() {
                Object c10;
                c10 = J.c(Runnable.this, t10);
                return c10;
            }
        });
    }

    @Override
    public Future<?> submit(final Runnable runnable) {
        return submit(new Callable() {
            @Override
            public final Object call() {
                Object d10;
                d10 = J.d(Runnable.this);
                return d10;
            }
        });
    }
}
