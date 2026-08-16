package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;

public final class U0 extends AbstractRunnableC12212w1 {

    public final I1 f62127f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public U0(I1 i12) {
        super(i12, true);
        Objects.requireNonNull(i12);
        this.f62127f = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62127f.q())).resetAnalyticsData(this.f62456b);
    }
}
