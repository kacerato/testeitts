package h1;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public class C13407a implements IInterface {

    public final IBinder f90189e;

    public final String f90190f;

    public C13407a(IBinder iBinder, String str) {
        this.f90189e = iBinder;
        this.f90190f = str;
    }

    @Override
    public final IBinder asBinder() {
        return this.f90189e;
    }

    public final Parcel h(int i10, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f90189e.transact(i10, parcel, obtain, 0);
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

    public final void k(int i10, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.f90189e.transact(1, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    public final Parcel l0() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f90190f);
        return obtain;
    }

    public final void t(int i10, Parcel parcel) throws RemoteException {
        try {
            this.f90189e.transact(2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
