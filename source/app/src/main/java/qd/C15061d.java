package qd;

import com.lmax.disruptor.AlertException;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class C15061d implements J {

    public final Lock f106096a;

    public final Condition f106097b;

    public C15061d() {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f106096a = reentrantLock;
        this.f106097b = reentrantLock.newCondition();
    }

    @Override
    public void a() {
        this.f106096a.lock();
        try {
            this.f106097b.signalAll();
        } finally {
            this.f106096a.unlock();
        }
    }

    @Override
    public long b(long j10, z zVar, z zVar2, InterfaceC15056A interfaceC15056A) throws AlertException, InterruptedException {
        if (zVar.c() < j10) {
            this.f106096a.lock();
            while (zVar.c() < j10) {
                try {
                    interfaceC15056A.b();
                    this.f106097b.await();
                } finally {
                    this.f106096a.unlock();
                }
            }
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
