package D0;

import androidx.annotation.WorkerThread;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.lang.ref.WeakReference;

public final class G0 implements Runnable {

    public final com.google.android.gms.common.api.u f4558b;

    public final J0 f4559c;

    public G0(J0 j02, com.google.android.gms.common.api.u uVar) {
        this.f4559c = j02;
        this.f4558b = uVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @WorkerThread
    public final void run() {
        WeakReference weakReference;
        H0 h02;
        H0 h03;
        WeakReference weakReference2;
        AbstractC11908l abstractC11908l;
        com.google.android.gms.common.api.x xVar;
        H0 h04;
        H0 h05;
        WeakReference weakReference3;
        try {
            try {
                ThreadLocal threadLocal = BasePendingResult.f61102p;
                threadLocal.set(Boolean.TRUE);
                xVar = this.f4559c.f4565a;
                com.google.android.gms.common.api.p c10 = ((com.google.android.gms.common.api.x) G0.A.r(xVar)).c(this.f4558b);
                J0 j02 = this.f4559c;
                h04 = j02.f4572h;
                h05 = j02.f4572h;
                h04.sendMessage(h05.obtainMessage(0, c10));
                threadLocal.set(Boolean.FALSE);
                J0 j03 = this.f4559c;
                J0.q(this.f4558b);
                weakReference3 = this.f4559c.f4571g;
                abstractC11908l = (AbstractC11908l) weakReference3.get();
                if (abstractC11908l == null) {
                    return;
                }
            } catch (RuntimeException e10) {
                J0 j04 = this.f4559c;
                h02 = j04.f4572h;
                h03 = j04.f4572h;
                h02.sendMessage(h03.obtainMessage(1, e10));
                BasePendingResult.f61102p.set(Boolean.FALSE);
                J0 j05 = this.f4559c;
                J0.q(this.f4558b);
                weakReference2 = this.f4559c.f4571g;
                abstractC11908l = (AbstractC11908l) weakReference2.get();
                if (abstractC11908l == null) {
                    return;
                }
            }
            abstractC11908l.I(this.f4559c);
        } catch (Throwable th2) {
            BasePendingResult.f61102p.set(Boolean.FALSE);
            J0 j06 = this.f4559c;
            J0.q(this.f4558b);
            weakReference = this.f4559c.f4571g;
            AbstractC11908l abstractC11908l2 = (AbstractC11908l) weakReference.get();
            if (abstractC11908l2 != null) {
                abstractC11908l2.I(this.f4559c);
            }
            throw th2;
        }
    }
}
