package D0;

import B0.C2318c;
import G0.C2570i;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.AbstractC11908l;
import java.util.concurrent.locks.Lock;

public final class K implements AbstractC11908l.b, AbstractC11908l.c {

    public final com.google.android.gms.common.api.internal.o f4574e;

    public K(com.google.android.gms.common.api.internal.o oVar, J j10) {
        this.f4574e = oVar;
    }

    @Override
    public final void h(@Nullable Bundle bundle) {
        C2570i c2570i;
        s1.f fVar;
        c2570i = this.f4574e.f61203r;
        fVar = this.f4574e.f61196k;
        ((s1.f) G0.A.r(fVar)).o(new I(this.f4574e));
    }

    @Override
    public final void k(int i10) {
    }

    @Override
    public final void t(@NonNull C2318c c2318c) {
        Lock lock;
        Lock lock2;
        boolean q10;
        Lock lock3;
        lock = this.f4574e.f61187b;
        lock.lock();
        try {
            q10 = this.f4574e.q(c2318c);
            if (q10) {
                this.f4574e.i();
                this.f4574e.n();
            } else {
                this.f4574e.l(c2318c);
            }
            lock3 = this.f4574e.f61187b;
            lock3.unlock();
        } catch (Throwable th2) {
            lock2 = this.f4574e.f61187b;
            lock2.unlock();
            throw th2;
        }
    }
}
