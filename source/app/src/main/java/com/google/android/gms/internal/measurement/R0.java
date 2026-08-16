package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;

public final class R0 extends AbstractRunnableC12212w1 {

    public final K0 f62098f;

    public final String f62099g;

    public final String f62100h;

    public final I1 f62101i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public R0(I1 i12, K0 k02, String str, String str2) {
        super(i12, true);
        this.f62098f = k02;
        this.f62099g = str;
        this.f62100h = str2;
        Objects.requireNonNull(i12);
        this.f62101i = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62101i.q())).setCurrentScreenByScionActivityInfo(this.f62098f, this.f62099g, this.f62100h, this.f62456b);
    }
}
