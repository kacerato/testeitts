package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;

public abstract class AbstractBinderC12329k2 extends com.google.android.gms.internal.measurement.P implements InterfaceC12337l2 {
    public AbstractBinderC12329k2() {
        super("com.google.android.gms.measurement.internal.ITriggerUrisCallback");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 2) {
            return false;
        }
        ArrayList createTypedArrayList = parcel.createTypedArrayList(C6.CREATOR);
        com.google.android.gms.internal.measurement.Q.f(parcel);
        Q0(createTypedArrayList);
        return true;
    }
}
