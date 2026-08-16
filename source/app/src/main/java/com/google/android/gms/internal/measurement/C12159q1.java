package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.Objects;

public final class C12159q1 extends AbstractRunnableC12212w1 {

    public final Bundle f62402f;

    public final I1 f62403g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12159q1(I1 i12, Bundle bundle) {
        super(i12, true);
        this.f62402f = bundle;
        Objects.requireNonNull(i12);
        this.f62403g = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62403g.q())).setDefaultEventParameters(this.f62402f);
    }
}
