package java.util.concurrent;

import java.io.Serializable;
import java.util.Collection;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/ForkJoinTask.class
 */
public abstract class ForkJoinTask<V> implements Future<V>, Serializable {
    public abstract V getRawResult();

    protected abstract void setRawResult(V v10);

    protected abstract boolean exec();

    public ForkJoinTask() {
        throw new RuntimeException("Stub!");
    }

    public final ForkJoinTask<V> fork() {
        throw new RuntimeException("Stub!");
    }

    public final V join() {
        throw new RuntimeException("Stub!");
    }

    public final V invoke() {
        throw new RuntimeException("Stub!");
    }

    public static void invokeAll(ForkJoinTask<?> t12, ForkJoinTask<?> t22) {
        throw new RuntimeException("Stub!");
    }

    public static void invokeAll(ForkJoinTask<?>... tasks) {
        throw new RuntimeException("Stub!");
    }

    public static <T extends ForkJoinTask<?>> Collection<T> invokeAll(Collection<T> tasks) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean cancel(boolean mayInterruptIfRunning) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean isDone() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean isCancelled() {
        throw new RuntimeException("Stub!");
    }

    public final boolean isCompletedAbnormally() {
        throw new RuntimeException("Stub!");
    }

    public final boolean isCompletedNormally() {
        throw new RuntimeException("Stub!");
    }

    public final Throwable getException() {
        throw new RuntimeException("Stub!");
    }

    public void completeExceptionally(Throwable ex) {
        throw new RuntimeException("Stub!");
    }

    public void complete(V value) {
        throw new RuntimeException("Stub!");
    }

    public final void quietlyComplete() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final V get() throws InterruptedException, ExecutionException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final V get(long timeout, TimeUnit unit) throws InterruptedException, ExecutionException, TimeoutException {
        throw new RuntimeException("Stub!");
    }

    public final void quietlyJoin() {
        throw new RuntimeException("Stub!");
    }

    public final void quietlyInvoke() {
        throw new RuntimeException("Stub!");
    }

    public static void helpQuiesce() {
        throw new RuntimeException("Stub!");
    }

    public void reinitialize() {
        throw new RuntimeException("Stub!");
    }

    public static ForkJoinPool getPool() {
        throw new RuntimeException("Stub!");
    }

    public static boolean inForkJoinPool() {
        throw new RuntimeException("Stub!");
    }

    public boolean tryUnfork() {
        throw new RuntimeException("Stub!");
    }

    public static int getQueuedTaskCount() {
        throw new RuntimeException("Stub!");
    }

    public static int getSurplusQueuedTaskCount() {
        throw new RuntimeException("Stub!");
    }

    protected static ForkJoinTask<?> peekNextLocalTask() {
        throw new RuntimeException("Stub!");
    }

    protected static ForkJoinTask<?> pollNextLocalTask() {
        throw new RuntimeException("Stub!");
    }

    protected static ForkJoinTask<?> pollTask() {
        throw new RuntimeException("Stub!");
    }

    public final short getForkJoinTaskTag() {
        throw new RuntimeException("Stub!");
    }

    public final short setForkJoinTaskTag(short newValue) {
        throw new RuntimeException("Stub!");
    }

    public final boolean compareAndSetForkJoinTaskTag(short expect, short update) {
        throw new RuntimeException("Stub!");
    }

    public static ForkJoinTask<?> adapt(Runnable runnable) {
        throw new RuntimeException("Stub!");
    }

    public static <T> ForkJoinTask<T> adapt(Runnable runnable, T result) {
        throw new RuntimeException("Stub!");
    }

    public static <T> ForkJoinTask<T> adapt(Callable<? extends T> callable) {
        throw new RuntimeException("Stub!");
    }
}
