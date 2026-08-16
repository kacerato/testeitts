package java.util.concurrent.locks;

import java.io.Serializable;
import java.util.Collection;
import java.util.concurrent.TimeUnit;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/locks/ReentrantReadWriteLock.class
 */
public class ReentrantReadWriteLock implements ReadWriteLock, Serializable {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock.class
 */
    public static class ReadLock implements Lock, Serializable {
        public ReadLock(ReentrantReadWriteLock lock) {
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

        public String toString() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/locks/ReentrantReadWriteLock$WriteLock.class
 */
    public static class WriteLock implements Lock, Serializable {
        public WriteLock(ReentrantReadWriteLock lock) {
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

        public String toString() {
            throw new RuntimeException("Stub!");
        }

        public boolean isHeldByCurrentThread() {
            throw new RuntimeException("Stub!");
        }

        public int getHoldCount() {
            throw new RuntimeException("Stub!");
        }
    }

    public ReentrantReadWriteLock() {
        throw new RuntimeException("Stub!");
    }

    public ReentrantReadWriteLock(boolean fair) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public WriteLock writeLock() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ReadLock readLock() {
        throw new RuntimeException("Stub!");
    }

    public final boolean isFair() {
        throw new RuntimeException("Stub!");
    }

    protected Thread getOwner() {
        throw new RuntimeException("Stub!");
    }

    public int getReadLockCount() {
        throw new RuntimeException("Stub!");
    }

    public boolean isWriteLocked() {
        throw new RuntimeException("Stub!");
    }

    public boolean isWriteLockedByCurrentThread() {
        throw new RuntimeException("Stub!");
    }

    public int getWriteHoldCount() {
        throw new RuntimeException("Stub!");
    }

    public int getReadHoldCount() {
        throw new RuntimeException("Stub!");
    }

    protected Collection<Thread> getQueuedWriterThreads() {
        throw new RuntimeException("Stub!");
    }

    protected Collection<Thread> getQueuedReaderThreads() {
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
