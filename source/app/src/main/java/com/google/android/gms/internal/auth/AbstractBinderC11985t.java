package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import v0.C15756B;

public abstract class AbstractBinderC11985t extends B implements InterfaceC11989u {
    public AbstractBinderC11985t() {
        super("com.google.android.gms.auth.api.accounttransfer.internal.IAccountTransferCallbacks");
    }

    @Override
    public final boolean h(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        switch (i10) {
            case 1:
                Status status = (Status) C11923d0.a(parcel, Status.CREATOR);
                C11923d0.b(parcel);
                h0(status);
                return true;
            case 2:
                Status status2 = (Status) C11923d0.a(parcel, Status.CREATOR);
                C15756B c15756b = (C15756B) C11923d0.a(parcel, C15756B.CREATOR);
                C11923d0.b(parcel);
                I(status2, c15756b);
                return true;
            case 3:
                Status status3 = (Status) C11923d0.a(parcel, Status.CREATOR);
                v0.t tVar = (v0.t) C11923d0.a(parcel, v0.t.CREATOR);
                C11923d0.b(parcel);
                Y0(status3, tVar);
                return true;
            case 4:
                R1();
                return true;
            case 5:
                Status status4 = (Status) C11923d0.a(parcel, Status.CREATOR);
                C11923d0.b(parcel);
                T(status4);
                return true;
            case 6:
                byte[] createByteArray = parcel.createByteArray();
                C11923d0.b(parcel);
                F0(createByteArray);
                return true;
            case 7:
                v0.e eVar = (v0.e) C11923d0.a(parcel, v0.e.CREATOR);
                C11923d0.b(parcel);
                J(eVar);
                return true;
            default:
                return false;
        }
    }
}
