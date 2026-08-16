package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;

public final class C12141o1 extends AbstractRunnableC12212w1 {

    public final BinderC12184t0 f62376f;

    public final int f62377g;

    public final I1 f62378h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12141o1(I1 i12, BinderC12184t0 binderC12184t0, int i10) {
        super(i12, true);
        this.f62376f = binderC12184t0;
        this.f62377g = i10;
        Objects.requireNonNull(i12);
        this.f62378h = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62378h.q())).getTestFlag(this.f62376f, this.f62377g);
    }

    @Override
    public final void b() {
        this.f62376f.l(null);
    }
}
