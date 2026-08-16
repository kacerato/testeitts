package java.util.concurrent.locks;

import java.util.concurrent.TimeUnit;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/locks/Lock.class
 */
public interface Lock {
    void lock();

    void lockInterruptibly() throws InterruptedException;

    boolean tryLock();

    boolean tryLock(long j10, TimeUnit timeUnit) throws InterruptedException;

    void unlock();

    Condition newCondition();
}
