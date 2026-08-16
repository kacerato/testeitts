package java.util.concurrent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/CompletionService.class
 */
public interface CompletionService<V> {
    Future<V> submit(Callable<V> callable);

    Future<V> submit(Runnable runnable, V v10);

    Future<V> take() throws InterruptedException;

    Future<V> poll();

    Future<V> poll(long j10, TimeUnit timeUnit) throws InterruptedException;
}
