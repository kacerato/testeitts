package java.util.concurrent;

import java.util.Collection;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/AbstractExecutorService.class
 */
public abstract class AbstractExecutorService implements ExecutorService {
    public AbstractExecutorService() {
        throw new RuntimeException("Stub!");
    }

    protected <T> RunnableFuture<T> newTaskFor(Runnable runnable, T value) {
        throw new RuntimeException("Stub!");
    }

    protected <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Future<?> submit(Runnable task) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <T> Future<T> submit(Runnable task, T result) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <T> Future<T> submit(Callable<T> task) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <T> T invokeAny(Collection<? extends Callable<T>> tasks) throws InterruptedException, ExecutionException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <T> T invokeAny(Collection<? extends Callable<T>> tasks, long timeout, TimeUnit unit) throws InterruptedException, ExecutionException, TimeoutException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> tasks) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> tasks, long timeout, TimeUnit unit) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }
}
