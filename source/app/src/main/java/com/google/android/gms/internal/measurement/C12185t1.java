package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;

public final class C12185t1 extends AbstractRunnableC12212w1 {

    public final BinderC12230y1 f62432f;

    public final I1 f62433g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12185t1(I1 i12, BinderC12230y1 binderC12230y1) {
        super(i12, true);
        this.f62432f = binderC12230y1;
        Objects.requireNonNull(i12);
        this.f62433g = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62433g.q())).registerOnMeasurementEventListener(this.f62432f);
    }
}
