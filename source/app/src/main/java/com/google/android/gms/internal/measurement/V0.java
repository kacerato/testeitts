package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;

public final class V0 extends AbstractRunnableC12212w1 {

    public final long f62133f;

    public final I1 f62134g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public V0(I1 i12, long j10) {
        super(i12, true);
        this.f62133f = j10;
        Objects.requireNonNull(i12);
        this.f62134g = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62134g.q())).setSessionTimeoutDuration(this.f62133f);
    }
}
