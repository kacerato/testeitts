package com.google.android.gms.measurement.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

public final class C12321j2 extends com.google.android.gms.internal.measurement.O implements InterfaceC12337l2 {
    public C12321j2(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.ITriggerUrisCallback");
    }

    @Override
    public final void Q0(List list) throws RemoteException {
        Parcel k10 = k();
        k10.writeTypedList(list);
        l0(2, k10);
    }
}
