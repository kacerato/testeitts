package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.RemoteException;

public final class A0 extends O implements C0 {
    public A0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IDynamiteUploadBatchesCallback");
    }

    @Override
    public final void R1() throws RemoteException {
        l0(2, k());
    }
}
