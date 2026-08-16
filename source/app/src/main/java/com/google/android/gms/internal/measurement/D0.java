package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class D0 extends O implements F0 {
    public D0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override
    public final int a() throws RemoteException {
        Parcel h10 = h(2, k());
        int readInt = h10.readInt();
        h10.recycle();
        return readInt;
    }

    @Override
    public final void v(String str, String str2, Bundle bundle, long j10) throws RemoteException {
        Parcel k10 = k();
        k10.writeString(str);
        k10.writeString(str2);
        Q.c(k10, bundle);
        k10.writeLong(j10);
        t(1, k10);
    }
}
