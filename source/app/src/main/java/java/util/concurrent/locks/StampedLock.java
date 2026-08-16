package java.util.concurrent.locks;

import java.io.Serializable;
import java.util.concurrent.TimeUnit;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/locks/StampedLock.class
 */
public class StampedLock implements Serializable {
    public StampedLock() {
        throw new RuntimeException("Stub!");
    }

    public long writeLock() {
        throw new RuntimeException("Stub!");
    }

    public long tryWriteLock() {
        throw new RuntimeException("Stub!");
    }

    public long tryWriteLock(long time, TimeUnit unit) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    public long writeLockInterruptibly() throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    public long readLock() {
        throw new RuntimeException("Stub!");
    }

    public long tryReadLock() {
        throw new RuntimeException("Stub!");
    }

    public long tryReadLock(long time, TimeUnit unit) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    public long readLockInterruptibly() throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    public long tryOptimisticRead() {
        throw new RuntimeException("Stub!");
    }

    public boolean validate(long stamp) {
        throw new RuntimeException("Stub!");
    }

    public void unlockWrite(long stamp) {
        throw new RuntimeException("Stub!");
    }

    public void unlockRead(long stamp) {
        throw new RuntimeException("Stub!");
    }

    public void unlock(long stamp) {
        throw new RuntimeException("Stub!");
    }

    public long tryConvertToWriteLock(long stamp) {
        throw new RuntimeException("Stub!");
    }

    public long tryConvertToReadLock(long stamp) {
        throw new RuntimeException("Stub!");
    }

    public long tryConvertToOptimisticRead(long stamp) {
        throw new RuntimeException("Stub!");
    }

    public boolean tryUnlockWrite() {
        throw new RuntimeException("Stub!");
    }

    public boolean tryUnlockRead() {
        throw new RuntimeException("Stub!");
    }

    public boolean isWriteLocked() {
        throw new RuntimeException("Stub!");
    }

    public boolean isReadLocked() {
        throw new RuntimeException("Stub!");
    }

    public int getReadLockCount() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public Lock asReadLock() {
        throw new RuntimeException("Stub!");
    }

    public Lock asWriteLock() {
        throw new RuntimeException("Stub!");
    }

    public ReadWriteLock asReadWriteLock() {
        throw new RuntimeException("Stub!");
    }
}
