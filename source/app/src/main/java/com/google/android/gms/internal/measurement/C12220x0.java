package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class C12220x0 extends O implements InterfaceC12238z0 {
    public C12220x0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override
    public final void l(Bundle bundle) throws RemoteException {
        Parcel k10 = k();
        Q.c(k10, bundle);
        t(1, k10);
    }
}
