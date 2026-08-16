package com.google.android.gms.internal.auth;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

public abstract class m3 extends B implements n3 {
    public m3() {
        super("com.google.android.gms.auth.account.data.IGetTokenWithDetailsCallback");
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
