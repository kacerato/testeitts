package D0;

import android.app.Activity;
import androidx.annotation.MainThread;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@VisibleForTesting(otherwise = 2)
public final class C2469t extends C2446h {

    public List f4709c;

    public C2469t(InterfaceC2448i interfaceC2448i) {
        super(interfaceC2448i);
        this.f4709c = new ArrayList();
        this.f4660b.c("LifecycleObserverOnStop", this);
    }

    public static C2469t m(Activity activity) {
        C2469t c2469t;
        synchronized (activity) {
            try {
                InterfaceC2448i d10 = C2446h.d(activity);
                c2469t = (C2469t) d10.a("LifecycleObserverOnStop", C2469t.class);
                if (c2469t == null) {
                    c2469t = new C2469t(d10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return c2469t;
    }

    @Override
    @MainThread
    public final void l() {
        List list;
        synchronized (this) {
            list = this.f4709c;
            this.f4709c = new ArrayList();
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }

    public final synchronized void o(Runnable runnable) {
        this.f4709c.add(runnable);
    }
}
