package java.util.concurrent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/FutureTask.class
 */
public class FutureTask<V> implements RunnableFuture<V> {
    public FutureTask(Callable<V> callable) {
        throw new RuntimeException("Stub!");
    }

    public FutureTask(Runnable runnable, V result) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isCancelled() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isDone() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean cancel(boolean mayInterruptIfRunning) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public V get() throws InterruptedException, ExecutionException {
        throw new RuntimeException("Stub!");
    }

    public V get(long timeout, TimeUnit unit) throws InterruptedException, ExecutionException, TimeoutException {
        throw new RuntimeException("Stub!");
    }

    protected void done() {
        throw new RuntimeException("Stub!");
    }

    protected void set(V v10) {
        throw new RuntimeException("Stub!");
    }

    public void setException(Throwable t10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void run() {
        throw new RuntimeException("Stub!");
    }

    protected boolean runAndReset() {
        throw new RuntimeException("Stub!");
    }
}
