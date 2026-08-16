package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;

public final class C12087i1 extends AbstractRunnableC12212w1 {

    public final String f62323f;

    public final Object f62324g;

    public final I1 f62325h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12087i1(I1 i12, boolean z10, int i10, String str, Object obj, Object obj2, Object obj3) {
        super(i12, false);
        this.f62323f = str;
        this.f62324g = obj;
        Objects.requireNonNull(i12);
        this.f62325h = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62325h.q())).logHealthData(5, this.f62323f, W0.f.l0(this.f62324g), W0.f.l0(null), W0.f.l0(null));
    }
}
