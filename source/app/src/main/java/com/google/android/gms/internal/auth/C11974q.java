package com.google.android.gms.internal.auth;

import B0.C2326k;
import G0.AbstractC2580n;
import G0.C2570i;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.AbstractC11908l;

public final class C11974q extends AbstractC2580n {

    public final Bundle f61816R;

    public C11974q(Context context, Looper looper, C2570i c2570i, v0.w wVar, AbstractC11908l.b bVar, AbstractC11908l.c cVar) {
        super(context, looper, 128, c2570i, bVar, cVar);
        this.f61816R = wVar == null ? new Bundle() : wVar.a();
    }

    @Override
    public final Bundle I() {
        return this.f61816R;
    }

    @Override
    public final String N() {
        return "com.google.android.gms.auth.api.accounttransfer.internal.IAccountTransferService";
    }

    @Override
    public final String O() {
        return "com.google.android.gms.auth.api.accounttransfer.service.START";
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
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.accounttransfer.internal.IAccountTransferService");
        return queryLocalInterface instanceof C11993v ? (C11993v) queryLocalInterface : new C11993v(iBinder);
    }
}
