package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.Objects;

public final class C12203v1 extends AbstractRunnableC12212w1 {

    public final Long f62448f;

    public final String f62449g;

    public final String f62450h;

    public final Bundle f62451i;

    public final boolean f62452j;

    public final boolean f62453k;

    public final I1 f62454l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12203v1(I1 i12, Long l10, String str, String str2, Bundle bundle, boolean z10, boolean z11) {
        super(i12, true);
        this.f62448f = l10;
        this.f62449g = str;
        this.f62450h = str2;
        this.f62451i = bundle;
        this.f62452j = z10;
        this.f62453k = z11;
        Objects.requireNonNull(i12);
        this.f62454l = i12;
    }

    @Override
    public final void a() throws RemoteException {
        Long l10 = this.f62448f;
        ((InterfaceC12211w0) G0.A.r(this.f62454l.q())).logEvent(this.f62449g, this.f62450h, this.f62451i, this.f62452j, this.f62453k, l10 == null ? this.f62456b : l10.longValue());
    }
}
