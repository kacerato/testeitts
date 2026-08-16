package qd;

import com.lmax.disruptor.AlertException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.LockSupport;
import java.util.concurrent.locks.ReentrantLock;

public final class w implements J {

    public static final int f106112d = 10000;

    public final long f106113a;

    public final long f106114b;

    public b f106115c;

    public interface b {
        void a();

        long b(long j10, z zVar, z zVar2, InterfaceC15056A interfaceC15056A) throws AlertException, InterruptedException;
    }

    public static class c implements b {

        public final Lock f106116a;

        public final Condition f106117b;

        public volatile int f106118c;

        public c() {
            ReentrantLock reentrantLock = new ReentrantLock();
            this.f106116a = reentrantLock;
            this.f106117b = reentrantLock.newCondition();
            this.f106118c = 0;
        }

        @Override
        public void a() {
            if (this.f106118c != 0) {
                this.f106116a.lock();
                try {
                    this.f106117b.signalAll();
                } finally {
                    this.f106116a.unlock();
                }
            }
        }

        @Override
        public long b(long j10, z zVar, z zVar2, InterfaceC15056A interfaceC15056A) throws AlertException, InterruptedException {
            this.f106116a.lock();
            try {
                this.f106118c++;
                while (zVar.c() < j10) {
                    interfaceC15056A.b();
                    this.f106117b.await(1L, TimeUnit.MILLISECONDS);
                }
                while (true) {
                    long c10 = zVar2.c();
                    if (c10 >= j10) {
                        return c10;
                    }
                    interfaceC15056A.b();
                }
            } finally {
                this.f106118c--;
                this.f106116a.unlock();
            }
        }
    }

    public static class d implements b {
        public d() {
        }

        @Override
        public void a() {
        }

        @Override
        public long b(long j10, z zVar, z zVar2, InterfaceC15056A interfaceC15056A) throws AlertException, InterruptedException {
            while (true) {
                long c10 = zVar2.c();
                if (c10 >= j10) {
                    return c10;
                }
                LockSupport.parkNanos(1L);
            }
        }
    }

    public w(long j10, long j11, TimeUnit timeUnit, b bVar) {
        long nanos = timeUnit.toNanos(j10);
        this.f106113a = nanos;
        this.f106114b = nanos + timeUnit.toNanos(j11);
        this.f106115c = bVar;
    }

    public static w c(long j10, long j11, TimeUnit timeUnit) {
        return new w(j10, j11, timeUnit, new c());
    }

    public static w d(long j10, long j11, TimeUnit timeUnit) {
        return new w(j10, j11, timeUnit, new d());
    }

    @Override
    public void a() {
        this.f106115c.a();
    }

    @Override
    public long b(long j10, z zVar, z zVar2, InterfaceC15056A interfaceC15056A) throws AlertException, InterruptedException {
        long j11 = 0;
        while (true) {
            int i10 = 10000;
            do {
                long c10 = zVar2.c();
                if (c10 >= j10) {
                    return c10;
                }
                i10--;
            } while (i10 != 0);
            if (0 == j11) {
                j11 = System.nanoTime();
            } else {
                long nanoTime = System.nanoTime() - j11;
                if (nanoTime > this.f106114b) {
                    return this.f106115c.b(j10, zVar, zVar2, interfaceC15056A);
                }
                if (nanoTime > this.f106113a) {
                    Thread.yield();
                }
            }
        }
    }
}
