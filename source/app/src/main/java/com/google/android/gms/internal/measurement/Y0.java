package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;

public final class Y0 extends AbstractRunnableC12212w1 {

    public final String f62176f;

    public final I1 f62177g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Y0(I1 i12, String str) {
        super(i12, true);
        this.f62176f = str;
        Objects.requireNonNull(i12);
        this.f62177g = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62177g.q())).endAdUnitExposure(this.f62176f, this.f62457c);
    }
}
