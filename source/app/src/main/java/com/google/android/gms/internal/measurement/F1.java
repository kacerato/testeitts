package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import java.util.Objects;

public final class F1 extends AbstractRunnableC12212w1 {

    public final Activity f61911f;

    public final H1 f61912g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F1(H1 h12, Activity activity) {
        super(h12.f61934b, true);
        this.f61911f = activity;
        Objects.requireNonNull(h12);
        this.f61912g = h12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f61912g.f61934b.q())).onActivityDestroyedByScionActivityInfo(K0.b(this.f61911f), this.f62457c);
    }
}
