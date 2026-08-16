package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class E0 extends P implements F0 {
    public E0() {
        super("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            Bundle bundle = (Bundle) Q.b(parcel, Bundle.CREATOR);
            long readLong = parcel.readLong();
            Q.f(parcel);
            v(readString, readString2, bundle, readLong);
            parcel2.writeNoException();
        } else {
            if (i10 != 2) {
                return false;
            }
            int a10 = a();
            parcel2.writeNoException();
            parcel2.writeInt(a10);
        }
        return true;
    }
}
