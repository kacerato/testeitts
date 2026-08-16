package java.util.concurrent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/ExecutorCompletionService.class
 */
public class ExecutorCompletionService<V> implements CompletionService<V> {
    public ExecutorCompletionService(Executor executor) {
        throw new RuntimeException("Stub!");
    }

    public ExecutorCompletionService(Executor executor, BlockingQueue<Future<V>> completionQueue) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Future<V> submit(Callable<V> task) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Future<V> submit(Runnable task, V result) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Future<V> take() throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Future<V> poll() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Future<V> poll(long timeout, TimeUnit unit) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }
}
