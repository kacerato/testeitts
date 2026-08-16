package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.Objects;

public final class T0 extends AbstractRunnableC12212w1 {

    public final Bundle f62119f;

    public final I1 f62120g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public T0(I1 i12, Bundle bundle) {
        super(i12, true);
        this.f62119f = bundle;
        Objects.requireNonNull(i12);
        this.f62120g = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62120g.q())).setConsentThirdParty(this.f62119f, this.f62456b);
    }
}
