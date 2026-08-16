package java.util.concurrent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/Future.class
 */
public interface Future<V> {
    boolean cancel(boolean z10);

    boolean isCancelled();

    boolean isDone();

    V get() throws InterruptedException, ExecutionException;

    V get(long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException;
}
