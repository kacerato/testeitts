package D0;

import B0.C2318c;
import B0.C2323h;
import android.app.Activity;
import androidx.annotation.MainThread;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArraySet;

public final class C2477x extends U0 {

    public final ArraySet f4718g;

    public final com.google.android.gms.common.api.internal.d f4719h;

    @VisibleForTesting
    public C2477x(InterfaceC2448i interfaceC2448i, com.google.android.gms.common.api.internal.d dVar, C2323h c2323h) {
        super(interfaceC2448i, c2323h);
        this.f4718g = new ArraySet();
        this.f4719h = dVar;
        this.f4660b.c("ConnectionlessLifecycleHelper", this);
    }

    @MainThread
    public static void v(Activity activity, com.google.android.gms.common.api.internal.d dVar, C2436c c2436c) {
        InterfaceC2448i d10 = C2446h.d(activity);
        C2477x c2477x = (C2477x) d10.a("ConnectionlessLifecycleHelper", C2477x.class);
        if (c2477x == null) {
            c2477x = new C2477x(d10, dVar, C2323h.x());
        }
        G0.A.s(c2436c, "ApiKey cannot be null");
        c2477x.f4718g.add(c2436c);
        dVar.b(c2477x);
    }

    @Override
    public final void i() {
        super.i();
        w();
    }

    @Override
    public final void k() {
        super.k();
        w();
    }

    @Override
    public final void l() {
        super.l();
        this.f4719h.c(this);
    }

    @Override
    public final void n(C2318c c2318c, int i10) {
        this.f4719h.I(c2318c, i10);
    }

    @Override
    public final void o() {
        this.f4719h.J();
    }

    public final ArraySet u() {
        return this.f4718g;
    }

    public final void w() {
        if (this.f4718g.isEmpty()) {
            return;
        }
        this.f4719h.b(this);
    }
}
