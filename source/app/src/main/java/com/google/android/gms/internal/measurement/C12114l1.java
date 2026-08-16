package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;

public final class C12114l1 extends AbstractRunnableC12212w1 {

    public final String f62350f;

    public final BinderC12184t0 f62351g;

    public final I1 f62352h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12114l1(I1 i12, String str, BinderC12184t0 binderC12184t0) {
        super(i12, true);
        this.f62350f = str;
        this.f62351g = binderC12184t0;
        Objects.requireNonNull(i12);
        this.f62352h = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62352h.q())).getMaxUserProperties(this.f62350f, this.f62351g);
    }

    @Override
    public final void b() {
        this.f62351g.l(null);
    }
}
