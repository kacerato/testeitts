package com.google.android.gms.internal.auth;

import B0.C2320e;
import B0.C2326k;
import G0.AbstractC2580n;
import G0.C2570i;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.AbstractC11908l;
import t0.AbstractBinderC15366g;

public final class C11962n extends AbstractC2580n {
    public C11962n(Context context, Looper looper, C2570i c2570i, AbstractC11908l.b bVar, AbstractC11908l.c cVar) {
        super(context, looper, 120, c2570i, bVar, cVar);
    }

    @Override
    public final C2320e[] C() {
        return new C2320e[]{s0.k.f109139n};
    }

    @Override
    public final String N() {
        return "com.google.android.gms.auth.account.IWorkAccountService";
    }

    @Override
    public final String O() {
        return "com.google.android.gms.auth.account.workaccount.START";
    }

    @Override
    public final boolean b0() {
        return true;
    }

    @Override
    public final int l() {
        return C2326k.f1252a;
    }

    @Override
    public final IInterface z(IBinder iBinder) {
        return AbstractBinderC15366g.k(iBinder);
    }
}
