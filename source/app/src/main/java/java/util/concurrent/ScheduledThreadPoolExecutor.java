package java.util.concurrent;

import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/ScheduledThreadPoolExecutor.class
 */
public class ScheduledThreadPoolExecutor extends ThreadPoolExecutor implements ScheduledExecutorService {
    public ScheduledThreadPoolExecutor(int corePoolSize) {
        super(0, 0, 0L, (TimeUnit) null, (BlockingQueue) null, (ThreadFactory) null, (RejectedExecutionHandler) null);
        throw new RuntimeException("Stub!");
    }

    public ScheduledThreadPoolExecutor(int corePoolSize, ThreadFactory threadFactory) {
        super(0, 0, 0L, (TimeUnit) null, (BlockingQueue) null, (ThreadFactory) null, (RejectedExecutionHandler) null);
        throw new RuntimeException("Stub!");
    }

    public ScheduledThreadPoolExecutor(int corePoolSize, RejectedExecutionHandler handler) {
        super(0, 0, 0L, (TimeUnit) null, (BlockingQueue) null, (ThreadFactory) null, (RejectedExecutionHandler) null);
        throw new RuntimeException("Stub!");
    }

    public ScheduledThreadPoolExecutor(int corePoolSize, ThreadFactory threadFactory, RejectedExecutionHandler handler) {
        super(0, 0, 0L, (TimeUnit) null, (BlockingQueue) null, (ThreadFactory) null, (RejectedExecutionHandler) null);
        throw new RuntimeException("Stub!");
    }

    protected <V> RunnableScheduledFuture<V> decorateTask(Runnable runnable, RunnableScheduledFuture<V> task) {
        throw new RuntimeException("Stub!");
    }

    protected <V> RunnableScheduledFuture<V> decorateTask(Callable<V> callable, RunnableScheduledFuture<V> task) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ScheduledFuture<?> schedule(Runnable command, long delay, TimeUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <V> ScheduledFuture<V> schedule(Callable<V> callable, long delay, TimeUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ScheduledFuture<?> scheduleAtFixedRate(Runnable command, long initialDelay, long period, TimeUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ScheduledFuture<?> scheduleWithFixedDelay(Runnable command, long initialDelay, long delay, TimeUnit unit) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void execute(Runnable command) {
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

    public void setContinueExistingPeriodicTasksAfterShutdownPolicy(boolean value) {
        throw new RuntimeException("Stub!");
    }

    public boolean getContinueExistingPeriodicTasksAfterShutdownPolicy() {
        throw new RuntimeException("Stub!");
    }

    public void setExecuteExistingDelayedTasksAfterShutdownPolicy(boolean value) {
        throw new RuntimeException("Stub!");
    }

    public boolean getExecuteExistingDelayedTasksAfterShutdownPolicy() {
        throw new RuntimeException("Stub!");
    }

    public void setRemoveOnCancelPolicy(boolean value) {
        throw new RuntimeException("Stub!");
    }

    public boolean getRemoveOnCancelPolicy() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void shutdown() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public List<Runnable> shutdownNow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public BlockingQueue<Runnable> getQueue() {
        throw new RuntimeException("Stub!");
    }
}
