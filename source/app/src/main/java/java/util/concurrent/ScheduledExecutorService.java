package java.util.concurrent;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/ScheduledExecutorService.class
 */
public interface ScheduledExecutorService extends ExecutorService {
    ScheduledFuture<?> schedule(Runnable runnable, long j10, TimeUnit timeUnit);

    <V> ScheduledFuture<V> schedule(Callable<V> callable, long j10, TimeUnit timeUnit);

    ScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j10, long j11, TimeUnit timeUnit);

    ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j10, long j11, TimeUnit timeUnit);
}
