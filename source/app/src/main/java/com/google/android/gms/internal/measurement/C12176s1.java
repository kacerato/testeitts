package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.RemoteException;
import java.util.Objects;

public final class C12176s1 extends AbstractRunnableC12212w1 {

    public final Intent f62424f;

    public final I1 f62425g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12176s1(I1 i12, Intent intent) {
        super(i12, true);
        this.f62424f = intent;
        Objects.requireNonNull(i12);
        this.f62425g = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62425g.q())).setSgtmDebugInfo(this.f62424f);
    }
}
