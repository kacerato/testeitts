package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.Objects;

public final class N0 extends AbstractRunnableC12212w1 {

    public final Bundle f62061f;

    public final I1 f62062g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N0(I1 i12, Bundle bundle) {
        super(i12, true);
        this.f62061f = bundle;
        Objects.requireNonNull(i12);
        this.f62062g = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62062g.q())).setConditionalUserProperty(this.f62061f, this.f62456b);
    }
}
