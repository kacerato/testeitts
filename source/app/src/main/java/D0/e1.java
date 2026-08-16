package D0;

import B0.C2318c;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.locks.Lock;

public final class e1 implements InterfaceC2451j0 {

    public final com.google.android.gms.common.api.internal.l f4639a;

    public e1(com.google.android.gms.common.api.internal.l lVar, d1 d1Var) {
        this.f4639a = lVar;
    }

    @Override
    public final void a(int i10, boolean z10) {
        Lock lock;
        Lock lock2;
        boolean z11;
        com.google.android.gms.common.api.internal.s sVar;
        Lock lock3;
        lock = this.f4639a.f61181q;
        lock.lock();
        try {
            com.google.android.gms.common.api.internal.l lVar = this.f4639a;
            z11 = lVar.f61180p;
            if (z11) {
                lVar.f61180p = false;
                com.google.android.gms.common.api.internal.l.A(this.f4639a, i10, z10);
            } else {
                lVar.f61180p = true;
                sVar = this.f4639a.f61172h;
                sVar.k(i10);
            }
            lock3 = this.f4639a.f61181q;
            lock3.unlock();
        } catch (Throwable th2) {
            lock2 = this.f4639a.f61181q;
            lock2.unlock();
            throw th2;
        }
    }

    @Override
    public final void b(@NonNull C2318c c2318c) {
        Lock lock;
        Lock lock2;
        lock = this.f4639a.f61181q;
        lock.lock();
        try {
            this.f4639a.f61179o = c2318c;
            com.google.android.gms.common.api.internal.l.C(this.f4639a);
        } finally {
            lock2 = this.f4639a.f61181q;
            lock2.unlock();
        }
    }

    @Override
    public final void c(@Nullable Bundle bundle) {
        Lock lock;
        Lock lock2;
        lock = this.f4639a.f61181q;
        lock.lock();
        try {
            this.f4639a.f61179o = C2318c.f1201E;
            com.google.android.gms.common.api.internal.l.C(this.f4639a);
        } finally {
            lock2 = this.f4639a.f61181q;
            lock2.unlock();
        }
    }
}
