package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;

public final class M0 extends AbstractRunnableC12212w1 {

    public final String f62053f;

    public final String f62054g;

    public final Object f62055h;

    public final boolean f62056i;

    public final I1 f62057j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public M0(I1 i12, String str, String str2, Object obj, boolean z10) {
        super(i12, true);
        this.f62053f = str;
        this.f62054g = str2;
        this.f62055h = obj;
        this.f62056i = z10;
        Objects.requireNonNull(i12);
        this.f62057j = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62057j.q())).setUserProperty(this.f62053f, this.f62054g, W0.f.l0(this.f62055h), this.f62056i, this.f62456b);
    }
}
