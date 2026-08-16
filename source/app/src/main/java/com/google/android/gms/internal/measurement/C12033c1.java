package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;

public final class C12033c1 extends AbstractRunnableC12212w1 {

    public final BinderC12184t0 f62243f;

    public final I1 f62244g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12033c1(I1 i12, BinderC12184t0 binderC12184t0) {
        super(i12, true);
        this.f62243f = binderC12184t0;
        Objects.requireNonNull(i12);
        this.f62244g = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62244g.q())).getCachedAppInstanceId(this.f62243f);
    }

    @Override
    public final void b() {
        this.f62243f.l(null);
    }
}
