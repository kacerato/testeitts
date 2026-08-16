package com.google.android.gms.measurement.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class C12345m2 extends com.google.android.gms.internal.measurement.O implements InterfaceC12361o2 {
    public C12345m2(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IUploadBatchesCallback");
    }

    @Override
    public final void c1(L6 l62) throws RemoteException {
        Parcel k10 = k();
        com.google.android.gms.internal.measurement.Q.c(k10, l62);
        l0(2, k10);
    }
}
