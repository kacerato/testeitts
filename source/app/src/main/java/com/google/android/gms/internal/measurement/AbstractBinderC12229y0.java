package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class AbstractBinderC12229y0 extends P implements InterfaceC12238z0 {
    public AbstractBinderC12229y0() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return false;
        }
        Bundle bundle = (Bundle) Q.b(parcel, Bundle.CREATOR);
        Q.f(parcel);
        l(bundle);
        parcel2.writeNoException();
        return true;
    }
}
