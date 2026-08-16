package java.util.concurrent;

import java.security.PrivilegedAction;
import java.security.PrivilegedExceptionAction;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/Executors.class
 */
public class Executors {
    Executors() {
        throw new RuntimeException("Stub!");
    }

    public static ExecutorService newFixedThreadPool(int nThreads) {
        throw new RuntimeException("Stub!");
    }

    public static ExecutorService newWorkStealingPool(int parallelism) {
        throw new RuntimeException("Stub!");
    }

    public static ExecutorService newWorkStealingPool() {
        throw new RuntimeException("Stub!");
    }

    public static ExecutorService newFixedThreadPool(int nThreads, ThreadFactory threadFactory) {
        throw new RuntimeException("Stub!");
    }

    public static ExecutorService newSingleThreadExecutor() {
        throw new RuntimeException("Stub!");
    }

    public static ExecutorService newSingleThreadExecutor(ThreadFactory threadFactory) {
        throw new RuntimeException("Stub!");
    }

    public static ExecutorService newCachedThreadPool() {
        throw new RuntimeException("Stub!");
    }

    public static ExecutorService newCachedThreadPool(ThreadFactory threadFactory) {
        throw new RuntimeException("Stub!");
    }

    public static ScheduledExecutorService newSingleThreadScheduledExecutor() {
        throw new RuntimeException("Stub!");
    }

    public static ScheduledExecutorService newSingleThreadScheduledExecutor(ThreadFactory threadFactory) {
        throw new RuntimeException("Stub!");
    }

    public static ScheduledExecutorService newScheduledThreadPool(int corePoolSize) {
        throw new RuntimeException("Stub!");
    }

    public static ScheduledExecutorService newScheduledThreadPool(int corePoolSize, ThreadFactory threadFactory) {
        throw new RuntimeException("Stub!");
    }

    public static ExecutorService unconfigurableExecutorService(ExecutorService executor) {
        throw new RuntimeException("Stub!");
    }

    public static ScheduledExecutorService unconfigurableScheduledExecutorService(ScheduledExecutorService executor) {
        throw new RuntimeException("Stub!");
    }

    public static ThreadFactory defaultThreadFactory() {
        throw new RuntimeException("Stub!");
    }

    public static ThreadFactory privilegedThreadFactory() {
        throw new RuntimeException("Stub!");
    }

    public static <T> Callable<T> callable(Runnable task, T result) {
        throw new RuntimeException("Stub!");
    }

    public static Callable<Object> callable(Runnable task) {
        throw new RuntimeException("Stub!");
    }

    public static Callable<Object> callable(PrivilegedAction<?> action) {
        throw new RuntimeException("Stub!");
    }

    public static Callable<Object> callable(PrivilegedExceptionAction<?> action) {
        throw new RuntimeException("Stub!");
    }

    public static <T> Callable<T> privilegedCallable(Callable<T> callable) {
        throw new RuntimeException("Stub!");
    }

    public static <T> Callable<T> privilegedCallableUsingCurrentClassLoader(Callable<T> callable) {
        throw new RuntimeException("Stub!");
    }
}
