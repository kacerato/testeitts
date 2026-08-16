package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;

public final class C12078h1 extends AbstractRunnableC12212w1 {

    public final String f62306f;

    public final String f62307g;

    public final boolean f62308h;

    public final BinderC12184t0 f62309i;

    public final I1 f62310j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12078h1(I1 i12, String str, String str2, boolean z10, BinderC12184t0 binderC12184t0) {
        super(i12, true);
        this.f62306f = str;
        this.f62307g = str2;
        this.f62308h = z10;
        this.f62309i = binderC12184t0;
        Objects.requireNonNull(i12);
        this.f62310j = i12;
    }

    @Override
    public final void a() throws RemoteException {
        ((InterfaceC12211w0) G0.A.r(this.f62310j.q())).getUserProperties(this.f62306f, this.f62307g, this.f62308h, this.f62309i);
    }

    @Override
    public final void b() {
        this.f62309i.l(null);
    }
}
