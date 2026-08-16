package q0;

import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

@VisibleForTesting
public final class C15036c extends Thread {

    public final WeakReference<C15034a> f105900b;

    public final long f105901c;

    public final CountDownLatch f105902d = new CountDownLatch(1);

    public boolean f105903e = false;

    public C15036c(C15034a c15034a, long j10) {
        this.f105900b = new WeakReference<>(c15034a);
        this.f105901c = j10;
        start();
    }

    public final void a() {
        C15034a c15034a = this.f105900b.get();
        if (c15034a != null) {
            c15034a.f();
            this.f105903e = true;
        }
    }

    @Override
    public final void run() {
        try {
            if (this.f105902d.await(this.f105901c, TimeUnit.MILLISECONDS)) {
                return;
            }
            a();
        } catch (InterruptedException unused) {
            a();
        }
    }
}
