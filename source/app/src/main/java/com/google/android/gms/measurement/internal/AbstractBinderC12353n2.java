package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class AbstractBinderC12353n2 extends com.google.android.gms.internal.measurement.P implements InterfaceC12361o2 {
    public AbstractBinderC12353n2() {
        super("com.google.android.gms.measurement.internal.IUploadBatchesCallback");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 2) {
            return false;
        }
        L6 l62 = (L6) com.google.android.gms.internal.measurement.Q.b(parcel, L6.CREATOR);
        com.google.android.gms.internal.measurement.Q.f(parcel);
        c1(l62);
        return true;
    }
}
