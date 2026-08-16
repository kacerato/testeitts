package com.google.android.gms.internal.measurement;

import android.os.Parcel;
import android.os.RemoteException;

public abstract class B0 extends P implements C0 {
    public B0() {
        super("com.google.android.gms.measurement.api.internal.IDynamiteUploadBatchesCallback");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 2) {
            return false;
        }
        R1();
        return true;
    }
}
