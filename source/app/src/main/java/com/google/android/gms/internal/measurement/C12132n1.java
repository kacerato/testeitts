package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;

public final class C12132n1 extends AbstractRunnableC12212w1 {

    public final BinderC12184t0 f62368f;

    public final I1 f62369g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12132n1(I1 i12, BinderC12184t0 binderC12184t0) {
        super(i12, true);
        this.f62368f = binderC12184t0;
        Objects.requireNonNull(i12);
        this.f62369g = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62369g.q())).getSessionId(this.f62368f);
    }

    @Override
    public final void b() {
        this.f62368f.l(null);
    }
}
