package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public class O implements IInterface {

    public final IBinder f62069e;

    public final String f62070f;

    public O(IBinder iBinder, String str) {
        this.f62069e = iBinder;
        this.f62070f = str;
    }

    @Override
    public final IBinder asBinder() {
        return this.f62069e;
    }

    public final Parcel h(int i10, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f62069e.transact(i10, parcel, obtain, 0);
                obtain.readException();
                return obtain;
            } catch (RuntimeException e10) {
                obtain.recycle();
                throw e10;
            }
        } finally {
            parcel.recycle();
        }
    }

    public final Parcel k() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f62070f);
        return obtain;
    }

    public final void l0(int i10, Parcel parcel) throws RemoteException {
        try {
            this.f62069e.transact(2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    public final void t(int i10, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f62069e.transact(i10, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }
}
