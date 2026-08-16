package qd;

import com.lmax.disruptor.AlertException;
import com.lmax.disruptor.TimeoutException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class H implements J {

    public final Lock f106068a;

    public final Condition f106069b;

    public final long f106070c;

    public H(long j10, TimeUnit timeUnit) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f106068a = reentrantLock;
        this.f106069b = reentrantLock.newCondition();
        this.f106070c = timeUnit.toNanos(j10);
    }

    @Override
    public void a() {
        this.f106068a.lock();
        try {
            this.f106069b.signalAll();
        } finally {
            this.f106068a.unlock();
        }
    }

    @Override
    public long b(long j10, z zVar, z zVar2, InterfaceC15056A interfaceC15056A) throws AlertException, InterruptedException, TimeoutException {
        long j11 = this.f106070c;
        if (zVar.c() < j10) {
            this.f106068a.lock();
            do {
                try {
                    if (zVar.c() < j10) {
                        interfaceC15056A.b();
                        j11 = this.f106069b.awaitNanos(j11);
                    }
                } finally {
                    this.f106068a.unlock();
                }
            } while (j11 > 0);
            throw TimeoutException.INSTANCE;
        }
        while (true) {
            long c10 = zVar2.c();
            if (c10 >= j10) {
                return c10;
            }
            interfaceC15056A.b();
        }
    }
}
