package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;

public final class Q0 extends AbstractRunnableC12212w1 {

    public final String f62090f;

    public final I1 f62091g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q0(I1 i12, String str) {
        super(i12, true);
        this.f62090f = str;
        Objects.requireNonNull(i12);
        this.f62091g = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62091g.q())).setUserId(this.f62090f, this.f62456b);
    }
}
