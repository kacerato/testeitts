package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;

public final class C12194u1 extends AbstractRunnableC12212w1 {

    public final BinderC12230y1 f62443f;

    public final I1 f62444g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12194u1(I1 i12, BinderC12230y1 binderC12230y1) {
        super(i12, true);
        this.f62443f = binderC12230y1;
        Objects.requireNonNull(i12);
        this.f62444g = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62444g.q())).unregisterOnMeasurementEventListener(this.f62443f);
    }
}
