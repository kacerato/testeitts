package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;

public final class C12015a1 extends AbstractRunnableC12212w1 {

    public final Runnable f62206f;

    public final I1 f62207g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12015a1(I1 i12, Runnable runnable) {
        super(i12, true);
        this.f62206f = runnable;
        Objects.requireNonNull(i12);
        this.f62207g = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62207g.q())).retrieveAndUploadBatches(new Z0(this, this.f62206f));
    }
}
