package Ic;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.AbstractQueuedSynchronizer;

@Deprecated
public class K {

    public final a f9033a;

    public static final class a extends AbstractQueuedSynchronizer {

        public static final long f9034c = 4982264981922014374L;

        public final int f9035b;

        public a(int count) {
            this.f9035b = count;
            setState(count);
        }

        public int a() {
            return getState();
        }

        public void b() {
            setState(this.f9035b);
        }

        @Override
        public int tryAcquireShared(int acquires) {
            return getState() == 0 ? 1 : -1;
        }

        @Override
        public boolean tryReleaseShared(int releases) {
            int state;
            int i10;
            do {
                state = getState();
                if (state == 0) {
                    return false;
                }
                i10 = state - 1;
            } while (!compareAndSetState(state, i10));
            return i10 == 0;
        }
    }

    public K(int count) {
        if (count < 0) {
            throw new IllegalArgumentException("count < 0");
        }
        this.f9033a = new a(count);
    }

    public void a() throws InterruptedException {
        this.f9033a.acquireSharedInterruptibly(1);
    }

    public boolean b(long timeout, TimeUnit unit) throws InterruptedException {
        return this.f9033a.tryAcquireSharedNanos(1, unit.toNanos(timeout));
    }

    public void c() {
        this.f9033a.releaseShared(1);
    }

    public long d() {
        return this.f9033a.a();
    }

    public void e() {
        this.f9033a.b();
    }

    public void f() {
        try {
            a();
        } catch (InterruptedException e10) {
            e10.printStackTrace();
        }
    }

    public String toString() {
        return super.toString() + "[Count = " + this.f9033a.a() + "]";
    }
}
