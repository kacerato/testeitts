package com.google.android.gms.internal.auth;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

public abstract class i3 extends B implements j3 {
    public i3() {
        super("com.google.android.gms.auth.account.data.IBundleCallback");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 2) {
            return false;
        }
        Status status = (Status) C11923d0.a(parcel, Status.CREATOR);
        Bundle bundle = (Bundle) C11923d0.a(parcel, Bundle.CREATOR);
        C11923d0.b(parcel);
        s(status, bundle);
        return true;
    }
}
