package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;

public final class X0 extends AbstractRunnableC12212w1 {

    public final String f62167f;

    public final I1 f62168g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public X0(I1 i12, String str) {
        super(i12, true);
        this.f62167f = str;
        Objects.requireNonNull(i12);
        this.f62168g = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62168g.q())).beginAdUnitExposure(this.f62167f, this.f62457c);
    }
}
