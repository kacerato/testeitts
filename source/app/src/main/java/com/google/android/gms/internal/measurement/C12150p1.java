package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;

public final class C12150p1 extends AbstractRunnableC12212w1 {

    public final boolean f62385f;

    public final I1 f62386g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12150p1(I1 i12, boolean z10) {
        super(i12, true);
        this.f62385f = z10;
        Objects.requireNonNull(i12);
        this.f62386g = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62386g.q())).setDataCollectionEnabled(this.f62385f);
    }
}
