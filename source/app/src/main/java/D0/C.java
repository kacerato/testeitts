package D0;

import B0.C2318c;
import G0.AbstractC2564f;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.C11894a;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.Lock;

public final class C implements AbstractC2564f.c {

    public final WeakReference f4546a;

    public final C11894a f4547b;

    public final boolean f4548c;

    public C(com.google.android.gms.common.api.internal.o oVar, C11894a c11894a, boolean z10) {
        this.f4546a = new WeakReference(oVar);
        this.f4547b = c11894a;
        this.f4548c = z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void b(@NonNull C2318c c2318c) {
        com.google.android.gms.common.api.internal.s sVar;
        Lock lock;
        Lock lock2;
        boolean o10;
        boolean p10;
        com.google.android.gms.common.api.internal.o oVar = (com.google.android.gms.common.api.internal.o) this.f4546a.get();
        if (oVar == null) {
            return;
        }
        Looper myLooper = Looper.myLooper();
        sVar = oVar.f61186a;
        G0.A.y(myLooper == sVar.f61245r.r(), "onReportServiceBinding must be called on the GoogleApiClient handler thread");
        lock = oVar.f61187b;
        lock.lock();
        try {
            o10 = oVar.o(0);
            if (o10) {
                if (!c2318c.u0()) {
                    oVar.m(c2318c, this.f4547b, this.f4548c);
                }
                p10 = oVar.p();
                if (p10) {
                    oVar.n();
                }
            }
        } finally {
            lock2 = oVar.f61187b;
            lock2.unlock();
        }
    }
}
