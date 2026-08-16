package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;

public final class S0 extends AbstractRunnableC12212w1 {

    public final Boolean f62110f;

    public final I1 f62111g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public S0(I1 i12, Boolean bool) {
        super(i12, true);
        this.f62110f = bool;
        Objects.requireNonNull(i12);
        this.f62111g = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62111g.q())).setMeasurementEnabled(this.f62110f.booleanValue(), this.f62456b);
    }
}
