package com.google.android.gms.internal.auth;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public final class C11993v extends C11910a implements IInterface {
    public C11993v(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.accounttransfer.internal.IAccountTransferService");
    }

    public final void e1(InterfaceC11989u interfaceC11989u, D d10) throws RemoteException {
        Parcel h10 = h();
        C11923d0.d(h10, interfaceC11989u);
        C11923d0.c(h10, d10);
        t(8, h10);
    }

    public final void f1(InterfaceC11989u interfaceC11989u, C11997w c11997w) throws RemoteException {
        Parcel h10 = h();
        C11923d0.d(h10, interfaceC11989u);
        C11923d0.c(h10, c11997w);
        t(9, h10);
    }

    public final void g1(InterfaceC11989u interfaceC11989u, C12005y c12005y) throws RemoteException {
        Parcel h10 = h();
        C11923d0.d(h10, interfaceC11989u);
        C11923d0.c(h10, c12005y);
        t(6, h10);
    }

    public final void h1(InterfaceC11989u interfaceC11989u, A a10) throws RemoteException {
        Parcel h10 = h();
        C11923d0.d(h10, interfaceC11989u);
        C11923d0.c(h10, a10);
        t(5, h10);
    }

    public final void l0(InterfaceC11989u interfaceC11989u, r rVar) throws RemoteException {
        Parcel h10 = h();
        C11923d0.d(h10, interfaceC11989u);
        C11923d0.c(h10, rVar);
        t(7, h10);
    }
}
