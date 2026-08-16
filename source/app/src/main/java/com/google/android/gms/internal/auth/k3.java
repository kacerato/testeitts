package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import s0.C15223c;

public abstract class k3 extends B implements l3 {
    public k3() {
        super("com.google.android.gms.auth.account.data.IGetAccountChangeEventsCallback");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 2) {
            return false;
        }
        Status status = (Status) C11923d0.a(parcel, Status.CREATOR);
        C15223c c15223c = (C15223c) C11923d0.a(parcel, C15223c.CREATOR);
        C11923d0.b(parcel);
        D(status, c15223c);
        return true;
    }
}
