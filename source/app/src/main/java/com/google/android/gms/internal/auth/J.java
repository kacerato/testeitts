package com.google.android.gms.internal.auth;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import x0.C16042d;

public final class J extends C11910a implements IInterface {
    public J(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.internal.IAuthService");
    }

    public final void e1(I i10, C16042d c16042d) throws RemoteException {
        Parcel h10 = h();
        C11923d0.d(h10, i10);
        C11923d0.c(h10, c16042d);
        t(1, h10);
    }

    public final void l0(I i10) throws RemoteException {
        Parcel h10 = h();
        C11923d0.d(h10, i10);
        t(3, h10);
    }
}
