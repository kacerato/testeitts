package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class S extends O implements U {
    public S(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    @Override
    public final Bundle c0(Bundle bundle) throws RemoteException {
        Parcel k10 = k();
        Q.c(k10, bundle);
        Parcel h10 = h(1, k10);
        Bundle bundle2 = (Bundle) Q.b(h10, Bundle.CREATOR);
        h10.recycle();
        return bundle2;
    }
}
