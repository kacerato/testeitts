package java.util.concurrent;

import java.io.Serializable;
import java.util.Collection;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/Semaphore.class
 */
public class Semaphore implements Serializable {
    public Semaphore(int permits) {
        throw new RuntimeException("Stub!");
    }

    public Semaphore(int permits, boolean fair) {
        throw new RuntimeException("Stub!");
    }

    public void acquire() throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    public void acquireUninterruptibly() {
        throw new RuntimeException("Stub!");
    }

    public boolean tryAcquire() {
        throw new RuntimeException("Stub!");
    }

    public boolean tryAcquire(long timeout, TimeUnit unit) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    public void release() {
        throw new RuntimeException("Stub!");
    }

    public void acquire(int permits) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    public void acquireUninterruptibly(int permits) {
        throw new RuntimeException("Stub!");
    }

    public boolean tryAcquire(int permits) {
        throw new RuntimeException("Stub!");
    }

    public boolean tryAcquire(int permits, long timeout, TimeUnit unit) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    public void release(int permits) {
        throw new RuntimeException("Stub!");
    }

    public int availablePermits() {
        throw new RuntimeException("Stub!");
    }

    public int drainPermits() {
        throw new RuntimeException("Stub!");
    }

    protected void reducePermits(int reduction) {
        throw new RuntimeException("Stub!");
    }

    public boolean isFair() {
        throw new RuntimeException("Stub!");
    }

    public final boolean hasQueuedThreads() {
        throw new RuntimeException("Stub!");
    }

    public final int getQueueLength() {
        throw new RuntimeException("Stub!");
    }

    protected Collection<Thread> getQueuedThreads() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
