package java.util.concurrent.locks;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/locks/AbstractQueuedSynchronizer.class
 */
public abstract class AbstractQueuedSynchronizer extends AbstractOwnableSynchronizer implements Serializable {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject.class
 */
    public class ConditionObject implements Condition, Serializable {
        public ConditionObject() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public final void signal() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public final void signalAll() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public final void awaitUninterruptibly() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public final void await() throws InterruptedException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public final long awaitNanos(long nanosTimeout) throws InterruptedException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public final boolean awaitUntil(Date deadline) throws InterruptedException {
            throw new RuntimeException("Stub!");
        }

        @Override
        public final boolean await(long time, TimeUnit unit) throws InterruptedException {
            throw new RuntimeException("Stub!");
        }

        protected final boolean hasWaiters() {
            throw new RuntimeException("Stub!");
        }

        protected final int getWaitQueueLength() {
            throw new RuntimeException("Stub!");
        }

        protected final Collection<Thread> getWaitingThreads() {
            throw new RuntimeException("Stub!");
        }
    }

    public AbstractQueuedSynchronizer() {
        throw new RuntimeException("Stub!");
    }

    public final int getState() {
        throw new RuntimeException("Stub!");
    }

    public final void setState(int newState) {
        throw new RuntimeException("Stub!");
    }

    public final boolean compareAndSetState(int expect, int update) {
        throw new RuntimeException("Stub!");
    }

    protected boolean tryAcquire(int arg) {
        throw new RuntimeException("Stub!");
    }

    protected boolean tryRelease(int arg) {
        throw new RuntimeException("Stub!");
    }

    protected int tryAcquireShared(int arg) {
        throw new RuntimeException("Stub!");
    }

    protected boolean tryReleaseShared(int arg) {
        throw new RuntimeException("Stub!");
    }

    protected boolean isHeldExclusively() {
        throw new RuntimeException("Stub!");
    }

    public final void acquire(int arg) {
        throw new RuntimeException("Stub!");
    }

    public final void acquireInterruptibly(int arg) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    public final boolean tryAcquireNanos(int arg, long nanosTimeout) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    public final boolean release(int arg) {
        throw new RuntimeException("Stub!");
    }

    public final void acquireShared(int arg) {
        throw new RuntimeException("Stub!");
    }

    public final void acquireSharedInterruptibly(int arg) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    public final boolean tryAcquireSharedNanos(int arg, long nanosTimeout) throws InterruptedException {
        throw new RuntimeException("Stub!");
    }

    public final boolean releaseShared(int arg) {
        throw new RuntimeException("Stub!");
    }

    public final boolean hasQueuedThreads() {
        throw new RuntimeException("Stub!");
    }

    public final boolean hasContended() {
        throw new RuntimeException("Stub!");
    }

    public final Thread getFirstQueuedThread() {
        throw new RuntimeException("Stub!");
    }

    public final boolean isQueued(Thread thread) {
        throw new RuntimeException("Stub!");
    }

    public final boolean hasQueuedPredecessors() {
        throw new RuntimeException("Stub!");
    }

    public final int getQueueLength() {
        throw new RuntimeException("Stub!");
    }

    public final Collection<Thread> getQueuedThreads() {
        throw new RuntimeException("Stub!");
    }

    public final Collection<Thread> getExclusiveQueuedThreads() {
        throw new RuntimeException("Stub!");
    }

    public final Collection<Thread> getSharedQueuedThreads() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public final boolean owns(ConditionObject condition) {
        throw new RuntimeException("Stub!");
    }

    public final boolean hasWaiters(ConditionObject condition) {
        throw new RuntimeException("Stub!");
    }

    public final int getWaitQueueLength(ConditionObject condition) {
        throw new RuntimeException("Stub!");
    }

    public final Collection<Thread> getWaitingThreads(ConditionObject condition) {
        throw new RuntimeException("Stub!");
    }
}
