package com.google.android.gms.internal.auth;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import s0.C15222b;

public final class o3 extends C11910a implements IInterface {
    public o3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.account.data.IGoogleAuthService");
    }

    public final void e1(l3 l3Var, C15222b c15222b) throws RemoteException {
        Parcel h10 = h();
        C11923d0.d(h10, l3Var);
        C11923d0.c(h10, c15222b);
        t(4, h10);
    }

    public final void f1(n3 n3Var, Account account, String str, Bundle bundle) throws RemoteException {
        Parcel h10 = h();
        C11923d0.d(h10, n3Var);
        C11923d0.c(h10, account);
        h10.writeString(str);
        C11923d0.c(h10, bundle);
        t(1, h10);
    }

    public final void g1(j3 j3Var, Account account) throws RemoteException {
        Parcel h10 = h();
        C11923d0.d(h10, j3Var);
        C11923d0.c(h10, account);
        t(6, h10);
    }

    public final void h1(j3 j3Var, String str) throws RemoteException {
        Parcel h10 = h();
        C11923d0.d(h10, j3Var);
        h10.writeString(str);
        t(3, h10);
    }

    public final void l0(com.google.android.gms.common.api.internal.e eVar, Z z10) throws RemoteException {
        Parcel h10 = h();
        C11923d0.d(h10, eVar);
        C11923d0.c(h10, z10);
        t(2, h10);
    }
}
