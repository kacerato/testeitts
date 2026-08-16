package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;

public final class C12167r1 extends AbstractRunnableC12212w1 {

    public final BinderC12221x1 f62414f;

    public final I1 f62415g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12167r1(I1 i12, BinderC12221x1 binderC12221x1) {
        super(i12, true);
        this.f62414f = binderC12221x1;
        Objects.requireNonNull(i12);
        this.f62415g = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62415g.q())).setEventInterceptor(this.f62414f);
    }
}
