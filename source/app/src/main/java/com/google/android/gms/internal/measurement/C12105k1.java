package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.Objects;

public final class C12105k1 extends AbstractRunnableC12212w1 {

    public final Bundle f62340f;

    public final BinderC12184t0 f62341g;

    public final I1 f62342h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12105k1(I1 i12, Bundle bundle, BinderC12184t0 binderC12184t0) {
        super(i12, true);
        this.f62340f = bundle;
        this.f62341g = binderC12184t0;
        Objects.requireNonNull(i12);
        this.f62342h = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62342h.q())).performAction(this.f62340f, this.f62341g, this.f62456b);
    }

    @Override
    public final void b() {
        this.f62341g.l(null);
    }
}
