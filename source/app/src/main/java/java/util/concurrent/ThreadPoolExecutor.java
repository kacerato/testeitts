package java.util.concurrent;

import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/ThreadPoolExecutor.class
 */
public class ThreadPoolExecutor extends AbstractExecutorService {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy.class
 */
    public static class CallerRunsPolicy implements RejectedExecutionHandler {
        public CallerRunsPolicy() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void rejectedExecution(Runnable r10, ThreadPoolExecutor e10) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/ThreadPoolExecutor$AbortPolicy.class
 */
    public static class AbortPolicy implements RejectedExecutionHandler {
        public AbortPolicy() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void rejectedExecution(Runnable r10, ThreadPoolExecutor e10) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/ThreadPoolExecutor$DiscardPolicy.class
 */
    public static class DiscardPolicy implements RejectedExecutionHandler {
        public DiscardPolicy() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void rejectedExecution(Runnable r10, ThreadPoolExecutor e10) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy.class
 */
    public static class DiscardOldestPolicy implements RejectedExecutionHandler {
        public DiscardOldestPolicy() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void rejectedExecution(Runnable r10, ThreadPoolExecutor e10) {
            throw new RuntimeException("Stub!");
        }
    }

    public ThreadPoolExecutor(int corePoolSize, int maximumPoolSize, long keepAliveTime, TimeUnit unit, BlockingQueue<Runnable> workQueue) {
        throw new RuntimeException("Stub!");
    }

    public ThreadPoolExecutor(int corePoolSize, int maximumPoolSize, long keepAliveTime, TimeUnit unit, BlockingQueue<Runnable> workQueue, ThreadFactory threadFactory) {
        throw new RuntimeException("Stub!");
    }

    public ThreadPoolExecutor(int corePoolSize, int maximumPoolSize, long keepAliveTime, TimeUnit unit, BlockingQueue<Runnable> workQueue, RejectedExecutionHandler handler) {
        throw new RuntimeException("Stub!");
    }

    public ThreadPoolExecutor(int corePoolSize, int maximumPoolSize, long keepAliveTime, TimeUnit unit, BlockingQueue<Runnable> workQueue, ThreadFactory threadFactory, RejectedExecutionHandler handler) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void execute(Runnable command) {
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
    public boolean isShutdown() {
        throw new RuntimeException("Stub!");
    }

    public boolean isTerminating() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isTerminated() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean awaitTermination(long timeout, TimeUnit unit) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() {
        throw new RuntimeException("Stub!");
    }

    public void setThreadFactory(ThreadFactory threadFactory) {
        throw new RuntimeException("Stub!");
    }

    public ThreadFactory getThreadFactory() {
        throw new RuntimeException("Stub!");
    }

    public void setRejectedExecutionHandler(RejectedExecutionHandler handler) {
        throw new RuntimeException("Stub!");
    }

    public RejectedExecutionHandler getRejectedExecutionHandler() {
        throw new RuntimeException("Stub!");
    }

    public void setCorePoolSize(int corePoolSize) {
        throw new RuntimeException("Stub!");
    }

    public int getCorePoolSize() {
        throw new RuntimeException("Stub!");
    }

    public boolean prestartCoreThread() {
        throw new RuntimeException("Stub!");
    }

    public int prestartAllCoreThreads() {
        throw new RuntimeException("Stub!");
    }

    public boolean allowsCoreThreadTimeOut() {
        throw new RuntimeException("Stub!");
    }

    public void allowCoreThreadTimeOut(boolean value) {
        throw new RuntimeException("Stub!");
    }

    public void setMaximumPoolSize(int maximumPoolSize) {
        throw new RuntimeException("Stub!");
    }

    public int getMaximumPoolSize() {
        throw new RuntimeException("Stub!");
    }

    public void setKeepAliveTime(long time, TimeUnit unit) {
        throw new RuntimeException("Stub!");
    }

    public long getKeepAliveTime(TimeUnit unit) {
        throw new RuntimeException("Stub!");
    }

    public BlockingQueue<Runnable> getQueue() {
        throw new RuntimeException("Stub!");
    }

    public boolean remove(Runnable task) {
        throw new RuntimeException("Stub!");
    }

    public void purge() {
        throw new RuntimeException("Stub!");
    }

    public int getPoolSize() {
        throw new RuntimeException("Stub!");
    }

    public int getActiveCount() {
        throw new RuntimeException("Stub!");
    }

    public int getLargestPoolSize() {
        throw new RuntimeException("Stub!");
    }

    public long getTaskCount() {
        throw new RuntimeException("Stub!");
    }

    public long getCompletedTaskCount() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    protected void beforeExecute(Thread t10, Runnable r10) {
        throw new RuntimeException("Stub!");
    }

    public void afterExecute(Runnable r10, Throwable t10) {
        throw new RuntimeException("Stub!");
    }

    protected void terminated() {
        throw new RuntimeException("Stub!");
    }
}
