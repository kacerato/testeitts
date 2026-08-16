package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import java.util.Objects;

public final class A1 extends AbstractRunnableC12212w1 {

    public final Activity f61882f;

    public final H1 f61883g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public A1(H1 h12, Activity activity) {
        super(h12.f61934b, true);
        this.f61882f = activity;
        Objects.requireNonNull(h12);
        this.f61883g = h12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f61883g.f61934b.q())).onActivityStartedByScionActivityInfo(K0.b(this.f61882f), this.f62457c);
    }
}
