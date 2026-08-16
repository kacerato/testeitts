package java.util.concurrent;

import java.lang.Thread;
import java.util.Collection;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/ForkJoinPool.class
 */
public class ForkJoinPool extends AbstractExecutorService {
    public static final ForkJoinWorkerThreadFactory defaultForkJoinWorkerThreadFactory = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory.class
 */
    public interface ForkJoinWorkerThreadFactory {
        ForkJoinWorkerThread newThread(ForkJoinPool forkJoinPool);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/ForkJoinPool$ManagedBlocker.class
 */
    public interface ManagedBlocker {
        boolean block() throws InterruptedException;

        boolean isReleasable();
    }

    @Override
    public Future submit(Runnable runnable, Object obj) {
        return submit(runnable, (Runnable) obj);
    }

    public ForkJoinPool() {
        throw new RuntimeException("Stub!");
    }

    public ForkJoinPool(int parallelism) {
        throw new RuntimeException("Stub!");
    }

    public ForkJoinPool(int parallelism, ForkJoinWorkerThreadFactory factory, Thread.UncaughtExceptionHandler handler, boolean asyncMode) {
        throw new RuntimeException("Stub!");
    }

    public static ForkJoinPool commonPool() {
        throw new RuntimeException("Stub!");
    }

    public <T> T invoke(ForkJoinTask<T> task) {
        throw new RuntimeException("Stub!");
    }

    public void execute(ForkJoinTask<?> task) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void execute(Runnable task) {
        throw new RuntimeException("Stub!");
    }

    public <T> ForkJoinTask<T> submit(ForkJoinTask<T> task) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <T> ForkJoinTask<T> submit(Callable<T> task) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <T> ForkJoinTask<T> submit(Runnable task, T result) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ForkJoinTask<?> submit(Runnable task) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> tasks) {
        throw new RuntimeException("Stub!");
    }

    public ForkJoinWorkerThreadFactory getFactory() {
        throw new RuntimeException("Stub!");
    }

    public Thread.UncaughtExceptionHandler getUncaughtExceptionHandler() {
        throw new RuntimeException("Stub!");
    }

    public int getParallelism() {
        throw new RuntimeException("Stub!");
    }

    public static int getCommonPoolParallelism() {
        throw new RuntimeException("Stub!");
    }

    public int getPoolSize() {
        throw new RuntimeException("Stub!");
    }

    public boolean getAsyncMode() {
        throw new RuntimeException("Stub!");
    }

    public int getRunningThreadCount() {
        throw new RuntimeException("Stub!");
    }

    public int getActiveThreadCount() {
        throw new RuntimeException("Stub!");
    }

    public boolean isQuiescent() {
        throw new RuntimeException("Stub!");
    }

    public long getStealCount() {
        throw new RuntimeException("Stub!");
    }

    public long getQueuedTaskCount() {
        throw new RuntimeException("Stub!");
    }

    public int getQueuedSubmissionCount() {
        throw new RuntimeException("Stub!");
    }

    public boolean hasQueuedSubmissions() {
        throw new RuntimeException("Stub!");
    }

    protected ForkJoinTask<?> pollSubmission() {
        throw new RuntimeException("Stub!");
    }

    protected int drainTasksTo(Collection<? super ForkJoinTask<?>> c10) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
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
    public boolean isTerminated() {
        throw new RuntimeException("Stub!");
    }

    public boolean isTerminating() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isShutdown() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean awaitTermination(long timeout, TimeUnit unit) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    public boolean awaitQuiescence(long timeout, TimeUnit unit) {
        throw new RuntimeException("Stub!");
    }

    public static void managedBlock(ManagedBlocker blocker) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected <T> RunnableFuture<T> newTaskFor(Runnable runnable, T value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        throw new RuntimeException("Stub!");
    }
}
