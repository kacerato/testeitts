package D0;

import java.util.concurrent.locks.Lock;

public final class a1 implements Runnable {

    public final com.google.android.gms.common.api.internal.l f4627b;

    public a1(com.google.android.gms.common.api.internal.l lVar) {
        this.f4627b = lVar;
    }

    @Override
    public final void run() {
        Lock lock;
        Lock lock2;
        lock = this.f4627b.f61181q;
        lock.lock();
        try {
            com.google.android.gms.common.api.internal.l.C(this.f4627b);
        } finally {
            lock2 = this.f4627b.f61181q;
            lock2.unlock();
        }
    }
}
