package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.RemoteException;
import x0.C16043e;

public abstract class H extends B implements I {
    public H() {
        super("com.google.android.gms.auth.api.internal.IAuthCallbacks");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            C16043e c16043e = (C16043e) C11923d0.a(parcel, C16043e.CREATOR);
            C11923d0.b(parcel);
            V0(c16043e);
        } else {
            if (i10 != 2) {
                return false;
            }
            String readString = parcel.readString();
            C11923d0.b(parcel);
            S(readString);
        }
        parcel2.writeNoException();
        return true;
    }
}
