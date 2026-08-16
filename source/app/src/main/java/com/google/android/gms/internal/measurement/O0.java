package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.Objects;

public final class O0 extends AbstractRunnableC12212w1 {

    public final String f62071f;

    public final String f62072g;

    public final Bundle f62073h;

    public final I1 f62074i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public O0(I1 i12, String str, String str2, Bundle bundle) {
        super(i12, true);
        this.f62071f = str;
        this.f62072g = str2;
        this.f62073h = bundle;
        Objects.requireNonNull(i12);
        this.f62074i = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62074i.q())).clearConditionalUserProperty(this.f62071f, this.f62072g, this.f62073h);
    }
}
