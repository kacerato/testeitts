package com.google.android.gms.internal.auth;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import s0.C15222b;
import s0.C15223c;

public final class E0 extends C11910a implements G1 {
    public E0(IBinder iBinder) {
        super(iBinder, "com.google.android.auth.IAuthManagerService");
    }

    @Override
    public final Bundle L0(String str, Bundle bundle) throws RemoteException {
        Parcel h10 = h();
        h10.writeString(str);
        C11923d0.c(h10, bundle);
        Parcel k10 = k(2, h10);
        Bundle bundle2 = (Bundle) C11923d0.a(k10, Bundle.CREATOR);
        k10.recycle();
        return bundle2;
    }

    @Override
    public final Bundle S0(Account account, String str, Bundle bundle) throws RemoteException {
        Parcel h10 = h();
        C11923d0.c(h10, account);
        h10.writeString(str);
        C11923d0.c(h10, bundle);
        Parcel k10 = k(5, h10);
        Bundle bundle2 = (Bundle) C11923d0.a(k10, Bundle.CREATOR);
        k10.recycle();
        return bundle2;
    }

    @Override
    public final Bundle d0(Account account) throws RemoteException {
        Parcel h10 = h();
        C11923d0.c(h10, account);
        Parcel k10 = k(7, h10);
        Bundle bundle = (Bundle) C11923d0.a(k10, Bundle.CREATOR);
        k10.recycle();
        return bundle;
    }

    @Override
    public final Bundle n0(String str) throws RemoteException {
        Parcel h10 = h();
        h10.writeString(str);
        Parcel k10 = k(8, h10);
        Bundle bundle = (Bundle) C11923d0.a(k10, Bundle.CREATOR);
        k10.recycle();
        return bundle;
    }

    @Override
    public final C15223c x0(C15222b c15222b) throws RemoteException {
        Parcel h10 = h();
        C11923d0.c(h10, c15222b);
        Parcel k10 = k(3, h10);
        C15223c c15223c = (C15223c) C11923d0.a(k10, C15223c.CREATOR);
        k10.recycle();
        return c15223c;
    }
}
