package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.RemoteException;
import java.util.Objects;

public final class E1 extends AbstractRunnableC12212w1 {

    public final Activity f61904f;

    public final BinderC12184t0 f61905g;

    public final H1 f61906h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public E1(H1 h12, Activity activity, BinderC12184t0 binderC12184t0) {
        super(h12.f61934b, true);
        this.f61904f = activity;
        this.f61905g = binderC12184t0;
        Objects.requireNonNull(h12);
        this.f61906h = h12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f61906h.f61934b.q())).onActivitySaveInstanceStateByScionActivityInfo(K0.b(this.f61904f), this.f61905g, this.f62457c);
    }
}
