package D0;

import androidx.annotation.WorkerThread;
import java.util.concurrent.locks.Lock;

public abstract class M implements Runnable {

    public final com.google.android.gms.common.api.internal.o f4579b;

    public M(com.google.android.gms.common.api.internal.o oVar, L l10) {
        this.f4579b = oVar;
    }

    @WorkerThread
    public abstract void a();

    @Override
    @WorkerThread
    public final void run() {
        Lock lock;
        Lock lock2;
        com.google.android.gms.common.api.internal.s sVar;
        lock = this.f4579b.f61187b;
        lock.lock();
        try {
            try {
                if (!Thread.interrupted()) {
                    a();
                }
            } catch (RuntimeException e10) {
                sVar = this.f4579b.f61186a;
                sVar.v(e10);
            }
        } finally {
            lock2 = this.f4579b.f61187b;
            lock2.unlock();
        }
    }
}
