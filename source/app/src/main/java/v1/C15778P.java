package v1;

import D0.C2446h;
import D0.InterfaceC2448i;
import android.app.Activity;
import androidx.annotation.MainThread;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class C15778P extends C2446h {

    public final List f121130c;

    public C15778P(InterfaceC2448i interfaceC2448i) {
        super(interfaceC2448i);
        this.f121130c = new ArrayList();
        this.f4660b.c("TaskOnStopCallback", this);
    }

    public static C15778P m(Activity activity) {
        C15778P c15778p;
        InterfaceC2448i d10 = C2446h.d(activity);
        synchronized (d10) {
            try {
                c15778p = (C15778P) d10.a("TaskOnStopCallback", C15778P.class);
                if (c15778p == null) {
                    c15778p = new C15778P(d10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return c15778p;
    }

    @Override
    @MainThread
    public final void l() {
        synchronized (this.f121130c) {
            try {
                Iterator it = this.f121130c.iterator();
                while (it.hasNext()) {
                    InterfaceC15773K interfaceC15773K = (InterfaceC15773K) ((WeakReference) it.next()).get();
                    if (interfaceC15773K != null) {
                        interfaceC15773K.P1();
                    }
                }
                this.f121130c.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void n(InterfaceC15773K interfaceC15773K) {
        synchronized (this.f121130c) {
            this.f121130c.add(new WeakReference(interfaceC15773K));
        }
    }
}
