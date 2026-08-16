package java.util.concurrent.locks;

import java.io.Serializable;
import java.util.Collection;
import java.util.concurrent.TimeUnit;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/locks/ReentrantLock.class
 */
public class ReentrantLock implements Lock, Serializable {
    public ReentrantLock() {
        throw new RuntimeException("Stub!");
    }

    public ReentrantLock(boolean fair) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void lock() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void lockInterruptibly() throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean tryLock() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean tryLock(long timeout, TimeUnit unit) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void unlock() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Condition newCondition() {
        throw new RuntimeException("Stub!");
    }

    public int getHoldCount() {
        throw new RuntimeException("Stub!");
    }

    public boolean isHeldByCurrentThread() {
        throw new RuntimeException("Stub!");
    }

    public boolean isLocked() {
        throw new RuntimeException("Stub!");
    }

    public final boolean isFair() {
        throw new RuntimeException("Stub!");
    }

    protected Thread getOwner() {
        throw new RuntimeException("Stub!");
    }

    public final boolean hasQueuedThreads() {
        throw new RuntimeException("Stub!");
    }

    public final boolean hasQueuedThread(Thread thread) {
        throw new RuntimeException("Stub!");
    }

    public final int getQueueLength() {
        throw new RuntimeException("Stub!");
    }

    protected Collection<Thread> getQueuedThreads() {
        throw new RuntimeException("Stub!");
    }

    public boolean hasWaiters(Condition condition) {
        throw new RuntimeException("Stub!");
    }

    public int getWaitQueueLength(Condition condition) {
        throw new RuntimeException("Stub!");
    }

    protected Collection<Thread> getWaitingThreads(Condition condition) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
