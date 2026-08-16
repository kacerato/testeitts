package D0;

import B0.C2318c;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.locks.Lock;

public final class c1 implements InterfaceC2451j0 {

    public final com.google.android.gms.common.api.internal.l f4634a;

    public c1(com.google.android.gms.common.api.internal.l lVar, b1 b1Var) {
        this.f4634a = lVar;
    }

    @Override
    public final void a(int i10, boolean z10) {
        Lock lock;
        Lock lock2;
        boolean z11;
        Lock lock3;
        C2318c c2318c;
        C2318c c2318c2;
        com.google.android.gms.common.api.internal.s sVar;
        lock = this.f4634a.f61181q;
        lock.lock();
        try {
            com.google.android.gms.common.api.internal.l lVar = this.f4634a;
            z11 = lVar.f61180p;
            if (!z11) {
                c2318c = lVar.f61179o;
                if (c2318c != null) {
                    c2318c2 = lVar.f61179o;
                    if (c2318c2.u0()) {
                        this.f4634a.f61180p = true;
                        sVar = this.f4634a.f61173i;
                        sVar.k(i10);
                        lock3 = this.f4634a.f61181q;
                        lock3.unlock();
                    }
                }
            }
            this.f4634a.f61180p = false;
            com.google.android.gms.common.api.internal.l.A(this.f4634a, i10, z10);
            lock3 = this.f4634a.f61181q;
            lock3.unlock();
        } catch (Throwable th2) {
            lock2 = this.f4634a.f61181q;
            lock2.unlock();
            throw th2;
        }
    }

    @Override
    public final void b(@NonNull C2318c c2318c) {
        Lock lock;
        Lock lock2;
        lock = this.f4634a.f61181q;
        lock.lock();
        try {
            this.f4634a.f61178n = c2318c;
            com.google.android.gms.common.api.internal.l.C(this.f4634a);
        } finally {
            lock2 = this.f4634a.f61181q;
            lock2.unlock();
        }
    }

    @Override
    public final void c(@Nullable Bundle bundle) {
        Lock lock;
        Lock lock2;
        lock = this.f4634a.f61181q;
        lock.lock();
        try {
            com.google.android.gms.common.api.internal.l.B(this.f4634a, bundle);
            this.f4634a.f61178n = C2318c.f1201E;
            com.google.android.gms.common.api.internal.l.C(this.f4634a);
        } finally {
            lock2 = this.f4634a.f61181q;
            lock2.unlock();
        }
    }
}
