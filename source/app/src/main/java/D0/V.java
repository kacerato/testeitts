package D0;

import java.util.concurrent.locks.Lock;

public abstract class V {

    public final com.google.android.gms.common.api.internal.r f4616a;

    public V(com.google.android.gms.common.api.internal.r rVar) {
        this.f4616a = rVar;
    }

    public abstract void a();

    public final void b(com.google.android.gms.common.api.internal.s sVar) {
        Lock lock;
        Lock lock2;
        com.google.android.gms.common.api.internal.r rVar;
        lock = sVar.f61232e;
        lock.lock();
        try {
            rVar = sVar.f61242o;
            if (rVar == this.f4616a) {
                a();
            }
        } finally {
            lock2 = sVar.f61232e;
            lock2.unlock();
        }
    }
}
